# `publish_content_map`

## Function signature

```rust
pub fn publish_content_map(
    path: impl AsRef<Path>,
    document: &ContentMapDocument,
) -> Result<()>
```

- `path`: A value that implements `AsRef<Path>`.
- `document`: A reference to a `ContentMapDocument`.
- Returns `Result<()>`.

[Source](../src/zmapr/mapr/support.rs.html#268-305)
