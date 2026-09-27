# `ProcessQuery`

`ProcessQuery` provides read-only access to authoritative in-memory workflow state.

```rust
pub struct ProcessQuery {
    /* private fields */
}
```

## Methods

### `stats`

```rust
pub fn stats(&self) -> ProgressStats
```

Returns a copy of the current workflow statistics.

### `item`

```rust
pub fn item(&self, id: ItemId) -> Option<ItemState>
```

Returns a copy of an item by its run-scoped ID.

### `item_by_path`

```rust
pub fn item_by_path(&self, relative_path: &str) -> Option<ItemState>
```

Returns a copy of an item by its stored relative path.

### `items`

```rust
pub fn items(&self) -> Vec<ItemState>
```

Returns copies of all registered items in ID order.

### `item_ids`

```rust
pub fn item_ids(&self, stage: ProcessStage, status: ItemStatus) -> Vec<ItemId>
```

Returns IDs of items with the requested stage status, in ID order.

### `snapshot`

```rust
pub fn snapshot(&self) -> ProcessStateSnapshot
```

Returns a point-in-time copy of the workflow state.

## Examples

### Read workflow statistics

This example reads current statistics while processing is underway:

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let options = ProcessContentOptions::new(
        "https://docs.rs/genai/0.7.0-beta.23/genai/",
    )
    .with_dest("examples/.out/c05-map")
    .with_sanitize(true)
    .with_map(true)
    .with_max_depth(1)
    .with_concurrency(12)
    .with_model("gpt-6-luna");

    let mut handle = process_content(options).await?;
    let query = handle.query();

    let stats_task = tokio::spawn(async move {
        tokio::time::sleep(std::time::Duration::from_millis(100)).await;
        let stats = query.stats();

        println!(
            "Fetch: {} of {} registered items completed",
            stats.fetch.completed,
            stats.fetch.registered_items()
        );
    });

    let progress_rx = handle
        .take_progress_rx()
        .ok_or("expected progress receiver")?;
    let progress_task = tokio::spawn(print_progress(progress_rx, handle.query()));

    let output = handle.wait_output().await?;
    progress_task.await?;
    stats_task.await?;

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

### Look up items while tracking progress

The following helper uses `item` to inspect items when their status changes:

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

Another example uses `item` to find the output path for completed items:

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let options = ProcessContentOptions::new("https://typesafe.ai/introduction")
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

### Track item status changes

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let options = ProcessContentOptions::new(
        "https://docs.rs/genai/0.7.0-beta.23/genai/",
    )
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

    println!();
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

## Trait Implementations

### `Clone`

`ProcessQuery` implements `Clone`.

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

### `Debug`

`ProcessQuery` implements `Debug`.

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

## Auto Traits

`ProcessQuery` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`
