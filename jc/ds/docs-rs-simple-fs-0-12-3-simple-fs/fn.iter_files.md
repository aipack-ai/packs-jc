# `iter_files` in `simple_fs` - Rust

## Function `iter_files`

[Source](../src/simple_fs/list/iter_files.rs.html#4-10)

Iterates over files in a directory.

### Signature

```text
pub fn iter_files(
    dir: impl AsRef<Path>,
    include_globs: Option<&[&str]>,
    list_options: Option<ListOptions<'_>>,
) -> Result
```

### Parameters

- `dir: impl AsRef<Path>` - The directory to search.
- `include_globs: Option<&[&str]>` - Optional glob patterns used to filter files.
- `list_options: Option<ListOptions<'_>>` - Optional file-listing configuration.

### Return type

- `Result` - The result of iterating over files.
