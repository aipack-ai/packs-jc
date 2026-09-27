# LocalContentSource

`LocalContentSource` is a type in the `refinr` crate, version `0.0.1`. It represents a local file or directory from which `Fetch` selects content.

## Definition

```rust
pub struct LocalContentSource {
    pub path: SPath,
}
```

`SPath` is the path type from the `simple-fs` crate.

## Fields

- `path: SPath` — File or directory from which `Fetch` selects content.

## Associated Functions

```rust
pub fn new(path: impl Into<SPath>) -> Self
```

Creates a local content source from a path.

## Trait Implementations

### `Clone`

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result
```

Formats the value using the given formatter.

### `From<LocalContentSource> for ContentSource`

```rust
fn from(source: LocalContentSource) -> Self
```

Converts a local source into a content source.

## Auto Traits

`LocalContentSource` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
