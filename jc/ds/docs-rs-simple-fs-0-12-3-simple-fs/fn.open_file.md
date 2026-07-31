# Function `open_file`

## `simple_fs` 0.12.3

[Source](../src/simple_fs/file.rs.html#23-27)

```text
pub fn open_file(path: impl AsRef<Path>) -> Result<File>
```

### Parameters

- `path: impl AsRef<Path>` - A path-like value identifying the file to open.

### Returns

- `Result<File>` - A result containing the opened [`std::fs::File`](https://doc.rust-lang.org/nightly/std/fs/struct.File.html) on success.
