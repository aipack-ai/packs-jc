# `create_file` in `simple_fs` - Rust

## `simple_fs` 0.12.3

## Function `create_file`

[Source](../src/simple_fs/file.rs.html#6-9)

```text
pub fn create_file(file_path: impl AsRef<Path>) -> Result<File>
```

Creates a file at the specified path.

- `file_path: impl AsRef<Path>` - The path of the file to create.
- Returns `simple_fs::Result<std::fs::File>`.
