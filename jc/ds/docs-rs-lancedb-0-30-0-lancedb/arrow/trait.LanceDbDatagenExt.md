# LanceDbDatagenExt

Trait in [lancedb::arrow](index.html).

**Source:** [../../src/lancedb/arrow.rs.html#163-169](../../src/lancedb/arrow.rs.html#163-169)

```rust
pub trait LanceDbDatagenExt {
    // Required method
    fn into_ldb_stream(
        self,
        batch_size: RowCount,
        num_batches: BatchCount,
    ) -> SendableRecordBatchStream;
}
```

## Required Methods

- `fn into_ldb_stream(self, batch_size: [RowCount](https://docs.rs/lance-datagen/7.0.0/x86_64-unknown-linux-gnu/lance_datagen/generator/struct.RowCount.html), num_batches: [BatchCount](https://docs.rs/lance-datagen/7.0.0/x86_64-unknown-linux-gnu/lance_datagen/generator/struct.BatchCount.html)) -> [SendableRecordBatchStream](type.SendableRecordBatchStream.html)`

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).  
*In older versions of Rust, dyn compatibility was called “object safety”.*

## Implementations on Foreign Types

### `impl LanceDbDatagenExt for BatchGeneratorBuilder`

**Source:** [../../src/lancedb/arrow.rs.html#171-181](../../src/lancedb/arrow.rs.html#171-181)

- `fn into_ldb_stream(self, batch_size: [RowCount](https://docs.rs/lance-datagen/7.0.0/x86_64-unknown-linux-gnu/lance_datagen/generator/struct.RowCount.html), num_batches: [BatchCount](https://docs.rs/lance-datagen/7.0.0/x86_64-unknown-linux-gnu/lance_datagen/generator/struct.BatchCount.html)) -> [SendableRecordBatchStream](type.SendableRecordBatchStream.html)`

## Implementors

*(No implementors listed)*
