# `ensure_file_dir` in `simple_fs`

## Function `ensure_file_dir`

[`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/dir.rs.html#15-27)

```text
pub fn ensure_file_dir(file_path: impl AsRef<Path>) -> Result<bool>
```

Ensures that the directory containing the specified file path exists.

### Parameters

- `file_path: impl AsRef<Path>` - The path of the file whose parent directory should be ensured.

### Returns

- `Result<bool>` - A result indicating whether the directory was created or already existed.
