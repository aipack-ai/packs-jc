# `ItemState` in refinr

`ItemState` stores the identity, source information, and processing-stage states for one process item.

## Struct definition

```rust
pub struct ItemState {
    pub id: ItemId,
    pub source: String,
    pub origin_path: String,
    pub relative_path: String,
    pub fetch: Option<ItemStageState>,
    pub sanitize: Option<ItemStageState>,
    pub map: Option<ItemStageState>,
}
```

## Fields

- `id: ItemId` — Identifier assigned to this item in the process run.
- `source: String` — Source string supplied for this item.
- `origin_path: String` — Original path associated with this item.
- `relative_path: String` — Path used to identify this item relative to its source root.
- `fetch: Option<ItemStageState>` — Fetch-stage state, when recorded.
- `sanitize: Option<ItemStageState>` — Sanitize-stage state, when recorded.
- `map: Option<ItemStageState>` — Map-stage state, when recorded.

## Methods

### `stage`

```rust
pub fn stage(&self, stage: ProcessStage) -> Option<&ItemStageState>
```

Returns the recorded state for `stage`, if one exists.

### `content_path`

```rust
pub fn content_path(&self) -> Option<&SPath>
```

Returns the Sanitize output path, falling back to the Fetch output path. The selection depends on which paths are present, not on stage status. Map output paths are not considered.

## Trait implementations

- `Clone`
- `Debug`

## Auto traits

`ItemState` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
