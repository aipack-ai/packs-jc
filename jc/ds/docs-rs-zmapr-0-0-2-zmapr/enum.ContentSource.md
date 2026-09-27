# ContentSource

`ContentSource` is a typed description of a local or web source for fetching content.

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

## Associated Functions

```rust
impl ContentSource {
    pub fn local(path: impl Into<SPath>) -> Self;
    pub fn web(url: impl Into<String>) -> Self;
}
```

- `local` creates a local source from a path.
- `web` creates a web source from a URL.

## Conversions

```rust
impl From<LocalContentSource> for ContentSource {
    fn from(source: LocalContentSource) -> Self;
}

impl From<SPath> for ContentSource {
    fn from(path: SPath) -> Self;
}

impl From<WebContentSource> for ContentSource {
    fn from(source: WebContentSource) -> Self;
}
```

- Converting from `LocalContentSource` creates a local content source.
- Converting from `SPath` creates a local content source.
- Converting from `WebContentSource` creates a web content source.

## Trait Implementations

`ContentSource` implements `Clone` and `Debug`.
