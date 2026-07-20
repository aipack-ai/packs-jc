# scannable_with_embeddings

**Module:** [lancedb::data::scannable](index.html) · **Source:** [scannable.rs#L321-L360](https://github.com/lancedb/lancedb/blob/v0.30.0/rust/lancedb/src/data/scannable.rs#L321-L360)

## Function Signature

```rust
pub fn scannable_with_embeddings(
    inner: Box<dyn Scannable>,
    table_definition: &TableDefinition,
    registry: Option<&Arc<EmbeddingRegistry>>,
) -> Result<Box<dyn Scannable>>
```
