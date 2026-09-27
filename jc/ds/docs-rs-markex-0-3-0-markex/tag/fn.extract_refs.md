# `extract_refs`

Parses the input string for the specified tag names and returns references.

## Function signature

```rust
pub fn extract_refs<'a>(
    input: &'a str,
    tag_names: &[&str],
    options: impl Into<TagOptions>,
) -> PartsRef<'a>
```

## Parameters

- `input: &'a str` — The input string to parse.
- `tag_names: &[&str]` — The tag names to search for.
- `options: impl Into<TagOptions>` — Options for parsing, convertible into `TagOptions`.

## Return type

Returns `PartsRef<'a>`, containing references into the input string.

## Context

- Crate: `markex` 0.3.0
- Module: `markex::tag`
- [Source](../../src/markex/tag/extract.rs.html#25-31)
