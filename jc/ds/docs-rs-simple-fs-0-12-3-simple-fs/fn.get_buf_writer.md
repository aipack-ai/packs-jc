# `get_buf_writer` in `simple_fs` - Rust

## `simple_fs` 0.12.3

# Function `get_buf_writer`

[Source](../src/simple_fs/file.rs.html#37-43)

```text
pub fn get_buf_writer(
    file_path: impl AsRef<Path>,
) -> Result<BufWriter<File>>
```

Returns a buffered writer for the file at the specified path.

## Signature

- **Parameter:** `file_path: impl AsRef<Path>`
- **Return type:** `Result<BufWriter<File>>`
