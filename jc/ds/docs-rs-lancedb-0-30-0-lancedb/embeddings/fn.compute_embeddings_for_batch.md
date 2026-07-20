# compute_embeddings_for_batch in lancedb::embeddings - Rust

**Module:** [lancedb::embeddings](index.html) (from crate lancedb 0.30.0)

## Function Signature

```text
pub fn compute_embeddings_for_batch(
    batch: [RecordBatch](https://docs.rs/arrow-array/58.3.0/x86_64-unknown-linux-gnu/arrow_array/record_batch/struct.RecordBatch.html),
    embeddings: &[(
        [EmbeddingDefinition](struct.EmbeddingDefinition.html),
        [Arc](https://doc.rust-lang.org/nightly/alloc/sync/struct.Arc.html)<[EmbeddingFunction](...)>,
    )],
) -> [Result](https://docs.rs/lancedb/0.30.0/lancedb/error/type.Result.html)<[RecordBatch](https://docs.rs/arrow-array/58.3.0/x86_64-unknown-linux-gnu/arrow_array/record_batch/struct.RecordBatch.html)>
```

## Description

Compute embeddings for a batch and append as new columns. This function computes embeddings using the provided embedding functions and appends them as new columns to the batch.

[Source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/embeddings.rs#L275-L297)
