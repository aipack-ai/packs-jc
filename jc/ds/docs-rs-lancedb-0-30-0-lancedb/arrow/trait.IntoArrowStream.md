# IntoArrowStream

A trait for converting incoming data to Arrow asynchronously.

Serves the same purpose as [`IntoArrow`](trait.IntoArrow.html), but for asynchronous data.

Note: Arrow has no async equivalent to RecordBatchReader and so

```text
pub trait IntoArrowStream {
    // Required method
    fn into_arrow(self) -> Result<SendableRecordBatchStream>;
}
```

## Required Methods

### `into_arrow(self) -> Result<SendableRecordBatchStream>`

```text
fn into_arrow(self) -> Result<SendableRecordBatchStream>
```

Convert the data into a stream of Arrow batches.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

*In older versions of Rust, dyn compatibility was called "object safety".*

## Implementations on Foreign Types

### impl `IntoArrowStream` for `SendableRecordBatchStream`

```text
impl IntoArrowStream for SendableRecordBatchStream {
    fn into_arrow(self) -> Result<SendableRecordBatchStream>
}
```

## Implementors

### impl `IntoArrowStream` for `lancedb::arrow::SendableRecordBatchStream`

```text
impl IntoArrowStream for lancedb::arrow::SendableRecordBatchStream
```
