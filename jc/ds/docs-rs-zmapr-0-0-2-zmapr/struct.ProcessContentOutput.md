# ProcessContentOutput

`zmapr` 0.0.2

The successful result of a completed content-processing workflow.

## Definition

```rust
pub struct ProcessContentOutput {
    pub destination: SPath,
    pub manifest_path: Option<SPath>,
    pub content_root: SPath,
    pub content_map_path: Option<SPath>,
    pub items: Vec<ItemState>,
    pub stats: FinalStats,
    pub journal_errors: Vec<String>,
}
```

## Fields

- `destination: SPath` — Root directory containing generated workflow artifacts.
- `manifest_path: Option<SPath>` — Durable workflow manifest, when one was written.
- `content_root: SPath` — Destination root containing the published final content.
- `content_map_path: Option<SPath>` — Published `content-map.json`, when mapping was selected.
- `items: Vec<ItemState>` — Final state of all registered workflow items.
- `stats: FinalStats` — Validated statistics for the completed workflow.
- `journal_errors: Vec<String>` — Non-fatal journal append errors, including the stage, item path, and error detail.

## Trait Implementations

### `Clone`

- `fn clone(&self) -> Self` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### `Debug`

- `fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result` — Formats the value using the given formatter.

## Auto Traits

`ProcessContentOutput` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

The type also receives the following blanket implementations: `Any`, `Borrow<T>`, `BorrowMut<T>`, `CloneToUninit`, `From<T>`, `Instrument`, `Into<U>`, `PolicyExt`, `ToOwned`, `TryFrom<U>`, `TryInto<U>`, and `WithSubscriber`.
