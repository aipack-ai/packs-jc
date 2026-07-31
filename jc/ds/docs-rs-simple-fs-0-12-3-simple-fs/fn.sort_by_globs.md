# `sort_by_globs` in `simple_fs`

## Function

### `sort_by_globs`

```text
pub fn sort_by_globs<T>(
    items: Vec<T>,
    globs: &[&str],
    options: impl Into<SortByGlobsOptions>,
) -> Result<Vec<T>>
where
    T: AsRef<SPath>,
```

Sorts files by glob priority, then by full path.

### Behavior

- Builds a `Vec` of globs without using a `GlobSet`.
- When `end_weighted` is `false`, the glob index is the first matching glob index, starting from the beginning.
- When `end_weighted` is `true`, the glob index is the last matching glob index, starting from the end.
- Files are ordered by `(glob_index, full_path)`.
- Non-matching files retain their original order.
