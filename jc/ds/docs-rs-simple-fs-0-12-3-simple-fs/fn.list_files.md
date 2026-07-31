# Function `list_files`

## `simple_fs` 0.12.3

[Source](../src/simple_fs/list/iter_files.rs.html#12-19)

```text
pub fn list_files(
    dir: impl AsRef<Path>,
    include_globs: Option<&[&str]>,
    list_options: Option<ListOptions<'_>>,
) -> Result<Vec<SPath>>
```

The `list_files` function lists files in the specified directory.

### Parameters

- `dir: impl AsRef<Path>` - The directory to search.
- `include_globs: Option<&[&str]>` - Optional glob patterns used to filter files.
- `list_options: Option<ListOptions<'_>>` - Optional listing configuration.

### Returns

- `Result<Vec<SPath>>` - A result containing the discovered file paths or an error.
