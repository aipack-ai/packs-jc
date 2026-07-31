# `into_normalized`

## Crate

[`simple_fs`](../simple_fs/index.html) 0.12.3

## Function signature

```text
pub fn into_normalized(path: Utf8PathBuf) -> Utf8PathBuf
```

[Source](../src/simple_fs/reshape/normalizer.rs.html#51-124)

## Description

Normalizes a path by:

- Converting backslashes to forward slashes
- Collapsing multiple consecutive slashes to single slashes
- Removing single dots except at the start
- Removing the Windows-specific `\\?\` prefix

The function performs a quick check to determine if normalization is actually needed. If no normalization is required, it returns the original path to avoid unnecessary allocations.
