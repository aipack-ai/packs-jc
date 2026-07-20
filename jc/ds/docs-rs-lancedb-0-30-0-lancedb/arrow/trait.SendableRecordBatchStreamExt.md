# SendableRecordBatchStreamExt - lancedb::arrow

**Module:** `lancedb::arrow`

**Source:** [../../src/lancedb/arrow.rs.html#71-73](../../src/lancedb/arrow.rs.html#71-73)

## Trait Definition

```rust
pub trait SendableRecordBatchStreamExt {
    // Required method
    fn into_df_stream(self) -> SendableRecordBatchStream;
}
```

## Required Methods

### `fn into_df_stream(self) -> SendableRecordBatchStream`

- **Source:** [../../src/lancedb/arrow.rs.html#72](../../src/lancedb/arrow.rs.html#72)
- **Returns:** [SendableRecordBatchStream](https://docs.rs/datafusion-execution/53.1.0/x86_64-unknown-linux-gnu/datafusion_execution/stream/type.SendableRecordBatchStream.html)

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

*In older versions of Rust, dyn compatibility was called "object safety".*

## Implementors

### `impl SendableRecordBatchStreamExt for SendableRecordBatchStream`

- **Source:** [../../src/lancedb/arrow.rs.html#75-83](../../src/lancedb/arrow.rs.html#75-83)
- **Implementor type:** [SendableRecordBatchStream](type.SendableRecordBatchStream.html)
