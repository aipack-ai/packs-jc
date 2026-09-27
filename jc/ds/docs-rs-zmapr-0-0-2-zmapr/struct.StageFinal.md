# `StageFinal`

`StageFinal` is a summary of the final outcomes and timing for a processing stage.

## Struct Definition

```rust
pub struct StageFinal {
    pub total_items: usize,
    pub completed: usize,
    pub reused: usize,
    pub skipped: usize,
    pub failed: usize,
    pub excluded: usize,
    pub usage: Option<genai::chat::usage::Usage>,
    pub started_epoch_us: i64,
    pub ended_epoch_us: i64,
}
```

## Fields

- `total_items: usize` — Number of items accounted for by the stage outcomes.
- `completed: usize` — Items processed during this workflow.
- `reused: usize` — Items whose results were reused.
- `skipped: usize` — Items skipped without processing.
- `failed: usize` — Items that failed processing.
- `excluded: usize` — Items excluded from processing, reported separately from total outcomes.
- `usage: Option<genai::chat::usage::Usage>` — Token usage reported for this stage, when available.
- `started_epoch_us: i64` — Stage start time in epoch microseconds.
- `ended_epoch_us: i64` — Stage end time in epoch microseconds.

## Methods

### `duration`

```rust
pub fn duration(&self) -> std::time::Duration
```

Returns the elapsed time between the stage start and end.

## Trait Implementations

`StageFinal` implements:

- `Clone`
- `Debug`
- `PartialEq`
- `StructuralPartialEq`

## Auto Trait Implementations

`StageFinal` implements:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`
