# `ContentSource`

`ContentSource` is an enum in the `refinr` crate that describes a local or web source for fetching content.

## Definition

```rust
pub enum ContentSource {
    LocalPath(LocalContentSource),
    Web(WebContentSource),
}
```

## Variants

- `LocalPath(LocalContentSource)` — content discovered from a local file or directory.
- `Web(WebContentSource)` — content discovered from an absolute web URL.

## Associated functions

```rust
pub fn local(path: impl Into<SPath>) -> Self
```

Creates a local source from a path.

```rust
pub fn web(url: impl Into<String>) -> Self
```

Creates a web source from a URL.

## Trait implementations

- `Clone`
  - `fn clone(&self) -> Self`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result`
- `From<LocalContentSource>`
  - `fn from(source: LocalContentSource) -> Self` — converts a local source into a content source.
- `From<SPath>`
  - `fn from(path: SPath) -> Self` — converts a path into a local content source.
- `From<WebContentSource>`
  - `fn from(source: WebContentSource) -> Self` — converts a web source into a content source.

## Auto traits

`ContentSource` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
