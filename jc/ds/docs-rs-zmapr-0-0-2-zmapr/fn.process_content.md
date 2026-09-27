# `process_content` in zmapr - Rust

## Function

```rust
pub async fn process_content(
    options: ProcessContentOptions,
) -> Result<ProcessContentHandle>
```

Runs a content-processing workflow configured by [`ProcessContentOptions`](struct.ProcessContentOptions.html) and returns a handle for observing progress and collecting the result.

## Stage selection

Providing a source selects Fetch. The `sanitize` and `map` options select their respective stages. Selected stages run in Fetch, Sanitize, then Map order. Disabled stages pass artifacts through unchanged.

When no source is provided and Sanitize or Map is selected, the workflow loads prior Fetch state from the destination. At least one stage must be selected.

## Observing the workflow

The function returns a [`ProcessContentHandle`](struct.ProcessContentHandle.html) after validation and workflow startup. Use the handle to take the single-consumer [`crate::process::ProgressRx`](struct.ProgressRx.html), query authoritative state through [`ProcessQuery`](struct.ProcessQuery.html), and await the final [`ProcessContentOutput`](struct.ProcessContentOutput.html).

Progress notifications are best-effort. The query handle provides access to live state even if notifications are dropped. Item-level failures can be reported in the final output when the workflow completes successfully.

## Final content

After all selected stages succeed, the workflow copies the final artifacts to paths relative to the configured destination. Intermediate Fetch and Sanitize artifacts remain under `.tmp-zmapr/`.

Existing files at published artifact paths are replaced. Unrelated files and stale files from previous runs are not removed. The `.tmp-zmapr/...` paths and root `content-map.json` path are reserved and cannot be used as final artifact paths.

Publication errors are returned by [`ProcessContentHandle::wait_output`](struct.ProcessContentHandle.html#method.wait_output). A failure can leave some final artifacts published and others unpublished.

## Validation and errors

Before starting the background workflow, the function validates that:

- At least one stage is selected and `max_concurrency` is greater than zero.
- A selected Fetch source is a valid local path or HTTP(S) URL.
- A local directory Fetch source does not resolve to the existing destination directory.
- Each selected AI stage resolves to a nonempty model.
- A configured Sanitize prompt file exists, or inline prompt content is nonempty.
- When Fetch is not selected but a downstream stage is, prior Fetch state is available. Its validity is checked when the workflow loads it.

Configuration and source validation errors are returned directly from `process_content`. Errors encountered while running the workflow are returned by [`ProcessContentHandle::wait_output`](struct.ProcessContentHandle.html#method.wait_output). A retained query handle remains useful for inspecting partial state after a workflow error.

## Examples

### Fetch local content

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Configure processing
    let options =
        ProcessContentOptions::new("src").with_dest("examples/.out/c01-fetch");

    // Run processing
    let handle = process_content(options).await?;
    let output = handle.wait_output().await?;

    // Report results
    println!("Fetched content into {}", output.content_root);

    Ok(())
}
```

### Fetch from an HTTP source

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Configure processing
    let options = ProcessContentOptions::new("https://docs.rs/genai/0.6.5/genai/")
        .with_dest("examples/.out/c02-http")
        .with_format(FetchFormat::Md)
        .with_llms(false) // default true
        .with_max_depth(1);

    // Run processing
    let handle = process_content(options).await?;
    let output = handle.wait_output().await?;

    // Report results
    println!("Fetched content into {}", output.content_root);
    println!(
        "Completed items: {}",
        output.stats.fetch.as_ref().map_or(0, |stats| stats.completed)
    );

    for item in output.items.iter().filter(|item| {
        item.fetch
            .as_ref()
            .is_some_and(|state| state.status == ItemStatus::Completed)
    }) {
        println!(" - {}", item.source);
    }

    Ok(())
}
```

### Track progress while fetching

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Configure processing
    let options = ProcessContentOptions::new("https://docs.typesafe.ai/introduction")
        .with_dest("examples/.out/c03-llms")
        .with_llms(true) // default anyway
        .with_max_depth(10);

    // Run processing
    let mut handle = process_content(options).await?;
    let query = handle.query();

    // Track progress
    if let Some(mut rx) = handle.take_progress_rx() {
        while let Ok(update) = rx.recv().await {
            if let ProgressEvent::ItemStatusChanged {
                id,
                stage,
                status: ItemStatus::Completed,
            } = update.event
                && let Some(item) = query.item(id)
            {
                let output_path = item
                    .stage(stage)
                    .and_then(|state| state.path.as_ref())
                    .map_or("(no output path)", |path| path.as_str());
                println!("{output_path}");
            }
        }
    }

    // Report results
    let output = handle.wait_output().await?;

    println!("Fetched content into {}", output.content_root);
    println!(
        "Completed items: {}",
        output.stats.fetch.as_ref().map_or(0, |stats| stats.completed)
    );

    // for item in &output.completed_items {
    //     println!(" - {}", item.source);
    // }

    Ok(())
}
```

### Sanitize and map content

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Configure processing
    let options = ProcessContentOptions::new("https://docs.rs/genai/0.7.0-beta.23/genai/")
        .with_dest("examples/.out/c04-sanitize")
        .with_max_depth(1)
        .with_sanitize(true)
        .with_map(true)
        .with_model("gpt-6-luna");

    // Run processing
    let mut handle = process_content(options).await?;

    // Track progress
    let query = handle.query();
    let mut progress_rx = handle.take_progress_rx().ok_or("expected progress receiver")?;
    let progress_task = tokio::spawn(async move {
        while let Ok(update) = progress_rx.recv().await {
            if let ProgressEvent::ItemStatusChanged { id, stage, status } = update.event
                && let Some(item) = query.item(id)
            {
                match status {
                    ItemStatus::Completed | ItemStatus::Reused | ItemStatus::Skipped => {
                        println!(" - {}", item.source);
                    }
                    ItemStatus::Failed => {
                        let message = item
                            .stage(stage)
                            .and_then(|state| state.error.as_deref())
                            .unwrap_or("unknown");
                        println!(" - (FAIL) {} (cause: {message})", item.source);
                    }
                    _ => {}
                }
            }
        }
    });

    // Report results
    let output = handle.wait_output().await?;
    progress_task.await?;

    println!("Fetched content into {}", output.content_root);
    if let Some(map_path) = output.content_map_path {
        println!("Generated content map at {map_path}");
    }

    let completed_items = output.stats.fetch.as_ref().map_or(0, |stats| stats.completed)
        + output.stats.sanitize.as_ref().map_or(0, |stats| stats.completed)
        + output.stats.map.as_ref().map_or(0, |stats| stats.completed);
    println!("Completed items: {completed_items}");

    println!();
    if let Some(usage) = &output.stats.total_usage {
        let input_tokens = usage.prompt_tokens.unwrap_or(0);
        let output_tokens = usage.completion_tokens.unwrap_or(0);
        let total_tokens = usage.total_tokens.unwrap_or(input_tokens + output_tokens);

        println!("Total input tokens: {input_tokens}");
        println!("Total output tokens: {output_tokens}");
        println!("Total tokens: {total_tokens}");
    } else {
        println!("Total tokens: n/a");
    }

    Ok(())
}
```

### Map content and query statistics

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Configure processing
    let options = ProcessContentOptions::new("https://docs.rs/genai/0.7.0-beta.23/genai/")
        .with_dest("examples/.out/c05-map")
        .with_sanitize(true)
        .with_map(true)
        .with_max_depth(1)
        .with_concurrency(12) // default 8
        .with_model("gpt-6-luna");

    // Run processing
    let mut handle = process_content(options).await?;

    // Track progress
    let query = handle.query();

    // Read current query statistics
    let stats_task = tokio::spawn(async move {
        tokio::time::sleep(std::time::Duration::from_millis(100)).await;
        let stats = query.stats();
        println!(
            "Fetch: {} of {} registered items completed",
            stats.fetch.completed,
            stats.fetch.registered_items()
        );
    });

    let progress_rx = handle.take_progress_rx().ok_or("expected progress receiver")?;
    let progress_task = tokio::spawn(print_progress(progress_rx, handle.query()));

    let output = handle.wait_output().await?;
    progress_task.await?;
    stats_task.await?;

    // Report results
    println!("\n\nProcessed content into {}", output.content_root);
    if let Some(map_path) = &output.content_map_path {
        println!("Generated content map at {map_path}");
    }

    let completed_items = output.stats.fetch.as_ref().map_or(0, |stats| stats.completed)
        + output.stats.sanitize.as_ref().map_or(0, |stats| stats.completed)
        + output.stats.map.as_ref().map_or(0, |stats| stats.completed);
    println!("Completed items: {completed_items}");

    let input_tokens = output
        .stats
        .total_usage
        .as_ref()
        .and_then(|usage| usage.prompt_tokens);
    let output_tokens = output
        .stats
        .total_usage
        .as_ref()
        .and_then(|usage| usage.completion_tokens);
    println!(
        "Total input tokens: {}",
        input_tokens.map_or_else(|| "unavailable".to_string(), |tokens| tokens.to_string())
    );
    println!(
        "Total output tokens: {}",
        output_tokens.map_or_else(|| "unavailable".to_string(), |tokens| tokens.to_string())
    );

    Ok(())
}
```
