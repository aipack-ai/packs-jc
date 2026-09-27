# `StageProgress`

`StageProgress` is a public struct in the `zmapr` crate. It contains lifecycle status, item counts, optional usage and timing data for a processing stage.

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

The following excerpt reads stage statistics and reports the number of completed fetch items:

```rust
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
```

## Trait Implementations

`StageProgress` implements `Clone`, `Debug`, `Default`, `PartialEq`, and `StructuralPartialEq`.

The following auto traits are also implemented: `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
