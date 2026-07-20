# `infer_vector_columns` in `lancedb::data::inspect`

**Module path:** `lancedb` → `data` → `inspect`

**Source:** [lancedb/src/data/inspect.rs](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/data/inspect.rs#L45-L98)

Infer the vector columns from a dataset.

## Function Signature

```rust
pub fn infer_vector_columns(
    reader: impl RecordBatchReader + Send,
    strict: bool,
) -> Result<Vec<String>>
```

## Parameters

- `reader`: A `RecordBatchReader` that is `Send`. Represents the dataset to inspect.
- `strict`: If `true`, only columns of type `fixed_size_list` are considered vector columns. If `false`, `list` columns where all elements have the same length are also considered vector columns.

## Return Value

Returns a `Result<Vec<String>>` containing the names of the inferred vector columns.
