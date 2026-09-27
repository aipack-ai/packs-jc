# FinalStats

`FinalStats` contains the final statistics for a refinr workflow, including per-stage results, aggregated token usage, and workflow timestamps.

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
  - `fn clone(&self) -> Self`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
- `PartialEq`
  - `fn eq(&self, other: &Self) -> bool`
  - `fn ne(&self, other: &Rhs) -> bool`
- `StructuralPartialEq`

## Auto Traits

`FinalStats` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

The documented blanket implementations include `Any`, `Borrow<T>`, `BorrowMut<T>`, `CloneToUninit`, `From<T>`, `Instrument`, `Into<U>`, `PolicyExt`, `ToOwned`, `TryFrom<U>`, `TryInto<U>`, and `WithSubscriber`.
