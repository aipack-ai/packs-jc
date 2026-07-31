# `get_buf_reader` in `simple_fs` - Rust

## Crate

[`simple_fs`](../simple_fs/index.html) 0.12.3

## Function

### `get_buf_reader`

[Source](../src/simple_fs/file.rs.html#29-35)

```text
pub fn get_buf_reader(
    file: impl AsRef<Path>,
) -> Result<BufReader<File>>
```

Returns a buffered reader for the file specified by the provided path-like value.
