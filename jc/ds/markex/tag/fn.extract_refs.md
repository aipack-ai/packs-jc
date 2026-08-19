# extract_refs

## In markex::tag

[markex](../index.html) :: [tag](index.html)

## Function extract_refs

```rust
pub fn extract_refs<'a>(
    input: &'a [str],
    tag_names: &[&[str]],
    options: impl Into<TagOptions>,
) -> PartsRef<'a>
```

## Description

Parses the input string for the specified tag names and returns references.
