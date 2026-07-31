# `line_spans` in `simple_fs` - Rust

## `simple_fs` 0.12.3

# Function `line_spans`

[Source](../src/simple_fs/span/line_spans.rs.html#9-14)

```text
pub fn line_spans(
    path: impl AsRef<SPath>,
) -> Result<Vec<(usize, usize)>>
```

## Description

Returns byte ranges `[start, end)` for each line in the file at `path`, splitting on `\n` and trimming a preceding `\r` (CRLF), even across chunk boundaries.

- Runs in O(n) time.
- Streams the file without allocating the whole file.
