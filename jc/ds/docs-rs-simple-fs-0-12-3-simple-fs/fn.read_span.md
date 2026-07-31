# Function `read_span`

**Crate:** `simple_fs` 0.12.3

[Source](../src/simple_fs/span/read_span.rs.html#11-22)

```text
pub fn read_span(
    path: impl AsRef<SPath>,
    start: usize,
    end: usize,
) -> Result<String>
```

## Description

Reads a half-open `(start, end)` span and returns it as a string.

## Parameters

- `path: impl AsRef<SPath>` - The path to read.
- `start: usize` - The inclusive start position of the span.
- `end: usize` - The exclusive end position of the span.

## Returns

- `Result<String>` - The contents of the specified span, or an error if the file cannot be read.
