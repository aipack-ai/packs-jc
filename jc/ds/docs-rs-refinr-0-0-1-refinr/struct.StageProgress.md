# `StageProgress`

`StageProgress` is a public struct in the `refinr` crate that tracks lifecycle status, item counts, usage, and timing for a processing stage.

## Definition

```rust
pub struct StageProgress {
    pub status: StageStatus,
    pub total_items: Option<usize>,
    pub pending: usize,
    pub running: usize,
    pub completed: usize,
    pub reused: usize,
    pub skipped: usize,
    pub failed: usize,
    pub excluded: usize,
    pub usage: Option<Usage>,
    pub started_epoch_us: Option<i64>,
    pub ended_epoch_us: Option<i64>,
}
```

## Fields

- `status: StageStatus` — Current lifecycle status of the stage.
- `total_items: Option<usize>` — Optional known total number of items for the stage.
- `pending: usize` — Items waiting to be processed.
- `running: usize` — Items currently being processed.
- `completed: usize` — Items processed during this workflow.
- `reused: usize` — Items whose results were reused.
- `skipped: usize` — Items skipped without processing.
- `failed: usize` — Items that failed processing.
- `excluded: usize` — Items excluded from processing, reported separately from status counts.
- `usage: Option<Usage>` — Token usage reported for this stage, when available.
- `started_epoch_us: Option<i64>` — Stage start time in epoch microseconds, when available.
- `ended_epoch_us: Option<i64>` — Stage end time in epoch microseconds, when available.

## Methods

### `registered_items`

```rust
pub fn registered_items(&self) -> usize
```

Returns the sum of the stage’s pending, running, and outcome counts. Excluded items are reported separately and are not included.

### `duration`

```rust
pub fn duration(&self) -> Option<Duration>
```

Returns elapsed stage time when a start time is available. If the stage has not ended, measures through the current time.

## Example

```rust
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let options = ProcessContentOptions::new("https://docs.rs/genai/0.7.0-beta.23/genai/")
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
        + output
            .stats
            .sanitize
            .as_ref()
            .map_or(0, |stats| stats.completed)
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

## Trait Implementations

`StageProgress` implements `Clone`, `Debug`, `Default`, `PartialEq`, and `StructuralPartialEq`.

## Auto Traits

`StageProgress` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
