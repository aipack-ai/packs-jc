# WebContentSource

`WebContentSource` is a struct in the `refinr` crate that identifies the web location where fetching begins.

## Definition

```rust
pub struct WebContentSource {
    pub url: String,
}
```

## Fields

- `url: String` — Absolute web URL at which fetching starts.

## Associated Functions

### `new`

```rust
pub fn new(url: impl Into<String>) -> Self
```

Creates a web source from a URL.

## Trait Implementations

### `Clone`

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

Clones the value or copies from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `From<WebContentSource> for ContentSource`

```rust
fn from(source: WebContentSource) -> ContentSource
```

Converts a web source into a content source.

## Auto Traits

`WebContentSource` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
