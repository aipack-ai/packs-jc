# `FinalStats`

`FinalStats` is a struct in the `zmapr` crate, version `0.0.2`.

## Definition

```rust
pub struct FinalStats {
    pub fetch: Option<StageFinal>,
    pub sanitize: Option<StageFinal>,
    pub map: Option<StageFinal>,
    pub total_usage: Option<Usage>,
    pub started_epoch_us: i64,
    pub ended_epoch_us: i64,
}
```

## Fields

- `fetch: Option<StageFinal>` — Final Fetch statistics, or `None` if Fetch was not selected.
- `sanitize: Option<StageFinal>` — Final Sanitize statistics, or `None` if Sanitize was not selected.
- `map: Option<StageFinal>` — Final Map statistics, or `None` if Map was not selected.
- `total_usage: Option<Usage>` — Aggregated token usage across the workflow, when available.
- `started_epoch_us: i64` — Workflow start time in epoch microseconds.
- `ended_epoch_us: i64` — Workflow end time in epoch microseconds.

## Methods

### `duration`

```rust
pub fn duration(&self) -> Duration
```

Returns the elapsed time between the workflow start and end.

### `stage`

```rust
pub fn stage(&self, stage: ProcessStage) -> Option<&StageFinal>
```

Returns final statistics for the selected stage, or `None` if it was not selected.

## Trait Implementations

- `Clone`
- `Debug`
- `PartialEq`
- `StructuralPartialEq`

## Auto Traits

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`
