# LocalContentSource

`LocalContentSource` represents a local file or directory from which `Fetch` selects content.

## Definition

```rust
pub struct LocalContentSource {
    pub path: SPath,
}
```

`SPath` is `simple_fs::spath::SPath`.

## Fields

- `path: SPath` — File or directory from which `Fetch` selects content.

## Associated Functions

```rust
pub fn new(path: impl Into<SPath>) -> Self
```

Creates a local source from a path.

## Trait Implementations

- `Clone`
  - `fn clone(&self) -> Self` — Returns a duplicate of the value.
  - `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result` — Formats the value.
- `From<LocalContentSource> for ContentSource`
  - `fn from(source: LocalContentSource) -> Self` — Converts a local source into a content source.

## Auto Traits

`LocalContentSource` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

The type receives the standard blanket implementations `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `From<T>`, `Instrument`, `Into`, `PolicyExt`, `ToOwned`, `TryFrom`, `TryInto`, and `WithSubscriber`.
