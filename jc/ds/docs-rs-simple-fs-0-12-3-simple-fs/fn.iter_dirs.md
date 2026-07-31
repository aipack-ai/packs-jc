# Function `iter_dirs`

## Crate

[`simple_fs`](index.html) 0.12.3

[Source](../src/simple_fs/list/iter_dirs.rs.html#7-14)

## Signature

```text
pub fn iter_dirs(
    dir: impl AsRef<Path>,
    include_globs: Option<&[&str]>,
    list_options: Option<ListOptions<'_>>,
) -> Result<IteratorSPath>
```

## Description

Returns an iterator over directories in the specified `dir`, optionally filtered by `include_globs` and `list_options`.

This implementation uses the internal `GlobsDirIter`.
