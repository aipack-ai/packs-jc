# `is_text_mappable`

## Function

```rust
pub fn is_text_mappable(
    media_type: Option<&str>,
    path: impl AsRef<Path>,
) -> bool
```

Returns whether content identified by the optional media type and path can be mapped as text.

- `media_type: Option<&str>` — Optional media type.
- `path: impl AsRef<Path>` — Path to the content.
- Returns `bool`.

[Source](../src/refinr/mapr/support.rs.html#40-76)

## Crate

`refinr` 0.0.1
