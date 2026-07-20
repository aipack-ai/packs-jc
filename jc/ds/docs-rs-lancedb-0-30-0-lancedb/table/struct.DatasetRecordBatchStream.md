# DatasetRecordBatchStream

## Description

`DatasetRecordBatchStream` wraps the dataset into a [`RecordBatchStream`](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/lance_io/stream/trait.RecordBatchStream.html "trait lance_io::stream::RecordBatchStream") for consumption by the user.

## Implementations

### `impl DatasetRecordBatchStream`

```text
pub fn new(
    exec_node: Pin<Box<dyn RecordBatchStreamResult<RecordBatch, DataFusionError> + Send>>
) -> DatasetRecordBatchStream
```

## Trait Implementations

### `impl From<DatasetRecordBatchStream> for Pin<Box<dyn RecordBatchStreamResult<RecordBatch, DataFusionError> + Send>>`

```text
fn from(stream: DatasetRecordBatchStream) -> Pin<Box<dyn RecordBatchStreamResult<RecordBatch, DataFusionError> + Send>>
```

Converts to this type from the input type.

### `impl RecordBatchStream for DatasetRecordBatchStream`

```text
fn schema(&self) -> Arc<Schema>
```

Returns the schema of the stream.

### `impl Stream for DatasetRecordBatchStream`

```text
type Item = Result<RecordBatch, Error>

fn poll_next(
    self: Pin<&mut DatasetRecordBatchStream>,
    cx: &mut Context<'_>
) -> Poll<Option<<DatasetRecordBatchStream as Stream>::Item>>
```

Attempt to pull out the next value of this stream, registering the current task for wakeup if the value is not yet available, and returning `None` if the stream is exhausted.

```text
fn size_hint(&self) -> (usize, Option<usize>)
```

Returns the bounds on the remaining length of the stream.

### `impl Unpin for DatasetRecordBatchStream`

```text
// Marker trait, no methods.
```

## Auto Trait Implementations

- `impl Freeze for DatasetRecordBatchStream`
- `impl !RefUnwindSafe for DatasetRecordBatchStream`
- `impl Send for DatasetRecordBatchStream`
- `impl !Sync for DatasetRecordBatchStream`
- `impl UnsafeUnpin for DatasetRecordBatchStream`
- `impl !UnwindSafe for DatasetRecordBatchStream`

## Blanket Implementations

- `impl Any for T`
- `impl ArchivePointee for T`
- `impl Borrow<T> for T`
- `impl BorrowMut<T> for T`
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl FinallyStreamExt<S> for S`
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl HasTypeWitness<W> for T`
- `impl Identity for T`
- `impl Instrument for T`
- `impl Into<U> for T`
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared`
- `impl LayoutRaw for T`
- `impl Niching<NichedOption<T, N1>> for N2`
- `impl Pipe for T`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T`
- `impl Same for T`
- `impl StreamExt for St`
- `impl StreamExt for T`
- `impl StreamOnDropExt for S`
- `impl StreamTracingExt for S`
- `impl Tap for T`
- `impl TryConv for T`
- `impl TryFrom<U> for T`
- `impl TryInto<U> for T`
- `impl TryInto<U> for T` (from async-convert)
- `impl TryStream for S`
- `impl TryStreamExt for S`
- `impl VZip<V> for T`
- `impl WithSubscriber for T`
- `impl ErasedDestructor for T`
- `impl MaybeSend for T` (two sources)
