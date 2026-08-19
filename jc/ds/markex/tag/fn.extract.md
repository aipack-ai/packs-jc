# Function extract

[Source](https://crates.io)

```rust
pub fn extract(
    input: &[str],
    tag_names: &[&[str]],
    options: impl Into<TagOptions>,
) -> Parts
```

Parses the input string for the specified tag names.

## Arguments

- `input` - The string slice to parse.
- `tag_names` - A slice of tag names to search for (e.g., &["FILE", "DATA"]).
- `options` - The parser configuration, including text-capture behavior.

## Returns

A `Parts` containing the extracted parts.
