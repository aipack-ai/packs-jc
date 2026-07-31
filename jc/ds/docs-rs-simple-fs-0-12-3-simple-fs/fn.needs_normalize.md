# `needs_normalize` in `simple_fs` - Rust

## `simple_fs` 0.12.3

## Function `needs_normalize`

[Source](../src/simple_fs/reshape/normalizer.rs.html#13-42)

### Signature

```text
pub fn needs_normalize(path: &Utf8Path) -> bool
```

### Description

Checks if a path needs normalization.

- If it contains a `\`
- If it has two or more consecutive `//`
- If it contains one or more `/./`

This performs a single pass and returns as early as possible.
