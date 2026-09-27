# ItemStageState

`ItemStageState` records the status and output details for one item stage in `zmapr`.

## Definition

```rust
pub struct ItemStageState {
    pub status: ItemStatus,
    pub path: Option<SPath>,
    pub usage: Option<Usage>,
    pub error: Option<String>,
}
```

## Fields

- `status: ItemStatus` — Current lifecycle status of the stage.
- `path: Option<SPath>` — Path to the stage output, when one is available.
- `usage: Option<Usage>` — Token usage reported for the stage, when available.
- `error: Option<String>` — Error details when the stage failed.

## Trait Implementations

### `Clone`

- `fn clone(&self) -> Self` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### `Debug`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

## Auto Traits

`ItemStageState` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
