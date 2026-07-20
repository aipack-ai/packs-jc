# TimeoutStream in lancedb::utils

## Location

[lancedb](../lancedb/index.html)::[utils](index.html)

## Struct Definition

```text
pub struct TimeoutStream { /* private fields */ }
```

## Description

A `Stream` wrapper that implements a timeout.

The timeout starts when the first `poll_next` is called. As soon as the timeout duration has passed, the stream will return an `Err` indicating a timeout error for the next poll.

## Implementations

### impl TimeoutStream

- `pub fn new(inner: SendableRecordBatchStream, timeout: Duration) -> Self`
- `pub fn new_boxed(inner: SendableRecordBatchStream, timeout: Duration) -> SendableRecordBatchStream`

## Trait Implementations

### impl RecordBatchStream for TimeoutStream

- `fn schema(&self) -> SchemaRef`

### impl Stream for TimeoutStream

- `type Item = Result<RecordBatch, DataFusionError>`
- `fn poll_next(self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Option<Self::Item>>`
- `fn size_hint(&self) -> (usize, Option<usize>)`

## Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `!Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

- `Any`
- `ArchivePointee`
- `Borrow<T>`
- `BorrowMut<T>`
- `Conv`
- `DropFlavorWrapper<T>`
- `ErasedDestructor`
- `FinallyStreamExt<S>`
- `FmtForward`
- `From<T>`
- `HasTypeWitness<W>`
- `Identity`
- `Instrument`
- `Into<U>`
- `IntoEither`
- `IntoShared<Shared>`
- `LayoutRaw`
- `MaybeSend`
- `Niching<NichedOption<T, N1>>`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `Same`
- `StreamExt` (multiple)
- `StreamOnDropExt`
- `StreamTracingExt`
- `Tap`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>`
- `TryStream`
- `TryStreamExt`
- `VZip<V>`
- `WithSubscriber`
