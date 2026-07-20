# Function `coerce_schema`

Module: `lancedb::data::sanitize`

## Signature

```rust
pub fn coerce_schema(
    reader: impl RecordBatchReader + Send + 'static,
    schema: Arc<Schema>,
) -> Result<Box<dyn RecordBatchReader + Send>>
```

## Description

Coerce the reader (input data) to match the given [Schema](https://docs.rs/arrow-schema/58.3.0/x86_64-unknown-linux-gnu/arrow_schema/schema/struct.Schema.html).
