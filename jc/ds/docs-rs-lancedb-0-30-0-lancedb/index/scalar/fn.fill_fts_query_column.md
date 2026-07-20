# fill_fts_query_column

Function `fill_fts_query_column` in `lancedb::index::scalar`.

Source: [link](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#823-827)

**Signature:**

```text
pub fn fill_fts_query_column(
    query: &FtsQuery,
    columns: &[String],
    replace: bool,
) -> Result<FtsQuery, Error>
```

**Parameters:**

- `query`: A reference to an `FtsQuery`.
- `columns`: A slice of column names (`&[String]`).
- `replace`: A boolean flag.

**Return type:** `Result<FtsQuery, Error>`
