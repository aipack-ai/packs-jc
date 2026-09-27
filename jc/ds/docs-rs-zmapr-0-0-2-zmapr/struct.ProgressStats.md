# `ProgressStats`

Crate: [`zmapr`](../zmapr/index.html), version `0.0.2`

`ProgressStats` stores live statistics for workflow stages, aggregated token usage, and workflow timing.

## Struct definition

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

## Fields

- `fetch: StageProgress` — Live Fetch stage statistics.
- `sanitize: StageProgress` — Live Sanitize stage statistics.
- `map: StageProgress` — Live Map stage statistics.
- `total_usage: Option<Usage>` — Aggregated token usage across the workflow, when available.
- `started_epoch_us: i64` — Workflow start time in epoch microseconds.
- `ended_epoch_us: Option<i64>` — Workflow end time in epoch microseconds, when finished.

## Methods

```rust
pub fn stage(&self, stage: ProcessStage) -> &StageProgress
```

Returns the live statistics for a workflow stage.

```rust
pub fn duration(&self) -> Duration
```

Returns elapsed workflow time, measuring through the current time if the workflow has not ended.

## Trait implementations

- `Clone`
  - `fn clone(&self) -> Self`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result`
- `Default`
  - `fn default() -> Self`
- `PartialEq`
  - `fn eq(&self, other: &Self) -> bool`
  - `fn ne(&self, other: &Rhs) -> bool`
- `StructuralPartialEq`

## Auto traits

`ProgressStats` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket implementations

The type also receives blanket implementations of `Any`, `Borrow<T>`, `BorrowMut<T>`, `CloneToUninit`, `From<T>`, `Instrument`, `Into<U>`, `PolicyExt`, `ToOwned`, `TryFrom<U>`, `TryInto<U>`, and `WithSubscriber`.
