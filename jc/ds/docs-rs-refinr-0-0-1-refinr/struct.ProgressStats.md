# `ProgressStats`

`ProgressStats` contains live statistics for each workflow stage, aggregated token usage, and workflow timing information.

## Definition

```rust
pub struct ProgressStats {
    pub fetch: StageProgress,
    pub sanitize: StageProgress,
    pub map: StageProgress,
    pub total_usage: Option<Usage>,
    pub started_epoch_us: i64,
    pub ended_epoch_us: Option<i64>,
}
```

`StageProgress` is `refinr::StageProgress`, and `Usage` is `genai::chat::usage::Usage`.

## Fields

- `fetch: StageProgress` — Live Fetch stage statistics.
- `sanitize: StageProgress` — Live Sanitize stage statistics.
- `map: StageProgress` — Live Map stage statistics.
- `total_usage: Option<Usage>` — Aggregated token usage across the workflow, when available.
- `started_epoch_us: i64` — Workflow start time in epoch microseconds.
- `ended_epoch_us: Option<i64>` — Workflow end time in epoch microseconds, when finished.

## Methods

### `stage`

```rust
pub fn stage(&self, stage: ProcessStage) -> &StageProgress
```

Returns the live statistics for the specified workflow stage.

### `duration`

```rust
pub fn duration(&self) -> Duration
```

Returns elapsed workflow time, measuring through the current time if the workflow has not ended.

## Trait Implementations

`ProgressStats` implements `Clone`, `Debug`, `Default`, `PartialEq`, and `StructuralPartialEq`.
