# `csv_row_spans` in `simple_fs` - Rust

## Crate

[`simple_fs`](../simple_fs/index.html) 0.12.3

## Function `csv_row_spans`

[Source](../src/simple_fs/span/csv_spans.rs.html#10-14)

```text
pub fn csv_row_spans(
    path: impl AsRef<SPath>,
) -> Result<Vec<(usize, usize)>>
```

## Description

CSV-aware record spans: returns byte ranges `[start, end)` for each row.

- Treats `\n` as a record separator only when it is not inside quotes.
- For CRLF, excludes `\r` from the end bound.
- Supports `""` as an escaped quote inside quoted fields.
- Streams data in chunks and does not read the whole file into memory.
