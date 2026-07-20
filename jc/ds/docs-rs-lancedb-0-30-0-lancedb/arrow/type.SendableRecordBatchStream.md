# SendableRecordBatchStream

**Module:** lancedb::arrow

A boxed `RecordBatchStream` that is also `Send`.

## Type Alias

```text
pub type SendableRecordBatchStream = Pin<Box<dyn RecordBatchStream + Send>>;
```

## Aliased Type

```text
pub struct SendableRecordBatchStream { /* private fields */ }
```

## Trait Implementations

### `From<I>`

```text
impl<I> From<I> for SendableRecordBatchStream
where
    I: RecordBatchStream + 'static,
```

- `fn from(stream: I) -> Self` – Converts to this type from the input type.

### `IntoArrowStream`

```text
impl IntoArrowStream for SendableRecordBatchStream
```

- `fn into_arrow(self) -> Result<SendableRecordBatchStream>` – Convert the data into a stream of Arrow batches.

### `IntoPolars`

*Available on crate feature `polars` only.*

```text
impl IntoPolars for SendableRecordBatchStream
```

- `async fn into_polars(self) -> Result<DataFrame>` – Converts the stream into a Polars DataFrame.

### `Scannable`

```text
impl Scannable for SendableRecordBatchStream
```

- `fn schema(&self) -> SchemaRef` – Returns the schema of the data.
- `fn scan_as_stream(&mut self) -> SendableRecordBatchStream` – Read data as a stream of record batches.
- `fn num_rows(&self) -> Option<usize>` – Optional hint about the number of rows.
- `fn rescannable(&self) -> bool` – Whether the source can be re-read from the beginning.

### `SendableRecordBatchStreamExt`

```text
impl SendableRecordBatchStreamExt for SendableRecordBatchStream
```

- `fn into_df_stream(self) -> SendableRecordBatchStream` – Converts the stream into a DataFusion `SendableRecordBatchStream`.
