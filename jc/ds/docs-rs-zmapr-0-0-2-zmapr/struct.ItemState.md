# ItemState

`ItemState` stores the identity, source information, and processing-stage states for one process item.

## Definition

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

Example:

```rust
let message = item
    .stage(stage)
    .and_then(|state| state.error.as_deref())
    .unwrap_or("unknown");
```

### `content_path`

```rust
pub fn content_path(&self) -> Option<&SPath>
```

Returns the Sanitize output path, falling back to the Fetch output path. The selection depends on which paths are present, not on stage status. Map output paths are not considered.

## Trait Implementations

`ItemState` implements `Clone` and `Debug`.

- `Clone::clone(&self) -> Self` — Returns a duplicate of the value.
- `Clone::clone_from(&mut self, source: &Self)` — Copies `source` into the value.
- `Debug::fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

## Auto Traits

`ItemState` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`
