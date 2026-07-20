# RecordBatchStream

In `lancedb::arrow`

A stream of batches that also has a schema.

## Trait Definition

```rust
pub trait RecordBatchStream:
    Stream<Item = Result<RecordBatch, E>>
{
    // Required method
    fn schema(&self) -> Arc<Schema>;
}
```

## Required Methods

### `schema`

```rust
fn schema(&self) -> Arc<Schema>
```

Returns the schema of this `RecordBatchStream`.

Implementation of this trait should guarantee that all `RecordBatch`’s returned by this stream should have the same schema as returned from this method.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

*In older versions of Rust, dyn compatibility was called “object safety”.*

## Implementors

- `impl<...> RecordBatchStream for SimpleRecordBatchStream`
