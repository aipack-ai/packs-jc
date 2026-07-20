# RecordBatchReader

**In** [lancedb](../lancedb/index.html)::[arrow](index.html)

**Source:** [../../src/lancedb/arrow.rs.html#18-24]

## Description

An iterator of batches that also has a schema.

## Trait Definition

```text
pub trait RecordBatchReader: Iterator<Item = Result<RecordBatch>> {
    // Required method
    fn schema(&self) -> Arc<Schema>;
}
```

## Required Methods

### `fn schema(&self) -> Arc<Schema>`

Returns the schema of this `RecordBatchReader`.

Implementation of this trait should guarantee that all `RecordBatch`'s returned by this reader should have the same schema as returned from this method.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). (In older versions of Rust, dyn compatibility was called "object safety".)

## Implementors

### `impl<I> RecordBatchReader for SimpleRecordBatchReader<I>` where `I: Iterator<Item = Result<RecordBatch>>`

**Source:** [../../src/lancedb/arrow.rs.html#40-46]
