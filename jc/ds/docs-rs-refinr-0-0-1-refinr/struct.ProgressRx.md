# ProgressRx

`ProgressRx` is a receiver for progress notifications from one running workflow in `refinr` 0.0.1.

## Definition

```rust
pub struct ProgressRx {
    /* private fields */
}
```

## Methods

### `recv`

```rust
pub async fn recv(&mut self) -> Result<ProgressUpdate>
```

Receives the next progress notification.

### `is_disconnected`

```rust
pub fn is_disconnected(&self) -> bool
```

Returns whether the progress channel has been disconnected.

## Auto traits

`ProgressRx` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Examples

### Print completed or failed items

```rust
async fn print_progress(mut progress_rx: ProgressRx, query: ProcessQuery) {
    while let Ok(update) = progress_rx.recv().await {
        if let ProgressEvent::ItemStatusChanged { id, stage, status } = update.event
            && let Some(item) = query.item(id)
        {
            match status {
                ItemStatus::Completed | ItemStatus::Reused | ItemStatus::Skipped => {
                    println!("{stage:?} - {}", item.source);
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
}
```

### Track completed items

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let options = ProcessContentOptions::new("https://docs.typesafe.ai/introduction")
        .with_dest("examples/.out/c03-llms")
        .with_llms(true)
        .with_max_depth(10);

    let mut handle = process_content(options).await?;
    let query = handle.query();

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

    let output = handle.wait_output().await?;

    println!("Fetched content into {}", output.content_root);
    println!(
        "Completed items: {}",
        output.stats.fetch.as_ref().map_or(0, |stats| stats.completed)
    );

    Ok(())
}
```

### Receive progress in a separate task

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let options = ProcessContentOptions::new("https://docs.rs/genai/0.7.0-beta.23/genai/")
        .with_dest("examples/.out/c04-sanitize")
        .with_max_depth(1)
        .with_sanitize(true)
        .with_map(true)
        .with_model("gpt-6-luna");

    let mut handle = process_content(options).await?;

    let query = handle.query();
    let mut progress_rx = handle
        .take_progress_rx()
        .ok_or("expected progress receiver")?;

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

    if let Some(usage) = &output.stats.total_usage {
        let input_tokens = usage.prompt_tokens.unwrap_or(0);
        let output_tokens = usage.completion_tokens.unwrap_or(0);
        let total_tokens = usage
            .total_tokens
            .unwrap_or(input_tokens + output_tokens);

        println!("Total input tokens: {input_tokens}");
        println!("Total output tokens: {output_tokens}");
        println!("Total tokens: {total_tokens}");
    } else {
        println!("Total tokens: n/a");
    }

    Ok(())
}
```
