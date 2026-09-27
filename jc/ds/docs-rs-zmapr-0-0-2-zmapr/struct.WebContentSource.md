# WebContentSource

`WebContentSource` is part of the `zmapr` 0.0.2 crate.

A web location at which fetching begins crawling.

## Struct

```rust
pub struct WebContentSource {
    pub url: String,
}
```

### Fields

- `url: String` — Absolute web URL at which fetching starts.

## Associated Functions

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

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `From<WebContentSource> for ContentSource`

```rust
fn from(source: WebContentSource) -> Self
```

Converts a web source into a content source.

## Auto Traits

`WebContentSource` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

The type receives blanket implementations of `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `From<T>`, `Instrument`, `Into`, `PolicyExt`, `ToOwned`, `TryFrom`, `TryInto`, and `WithSubscriber`.
