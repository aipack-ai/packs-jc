# MaxBatchLengthStream

A `Stream` wrapper that slices oversized batches to enforce a maximum batch length.

## Implementations

### `impl MaxBatchLengthStream`

```rust
pub fn new(inner: SendableRecordBatchStream, max_batch_length: usize) -> Self
```

```rust
pub fn new_boxed(
    inner: SendableRecordBatchStream,
    max_batch_length: usize,
) -> SendableRecordBatchStream
```

## Trait Implementations

### `impl RecordBatchStream for MaxBatchLengthStream`

```rust
fn schema(&self) -> SchemaRef
```

### `impl Stream for MaxBatchLengthStream`

```rust
type Item = Result<RecordBatch, DataFusionError>
```

```rust
fn poll_next(
    self: Pin<&mut Self>,
    cx: &mut Context<'_>,
) -> Poll<Option<Self::Item>>
```

```rust
fn size_hint(&self) -> (usize, Option<usize>)
```

## Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `!Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

- `Any` – `fn type_id(&self) -> TypeId`
- `ArchivePointee` – `type ArchivedMetadata = ()`; `fn pointer_metadata(...) -> ...`
- `Borrow<T>` – `fn borrow(&self) -> &T`
- `BorrowMut<T>` – `fn borrow_mut(&mut self) -> &mut T`
- `Conv` – `fn conv(self) -> T`
- `DropFlavorWrapper<T>` – `type Flavor = MayDrop`
- `ErasedDestructor`
- `FinallyStreamExt<S>` – `fn finally(self, f: F) -> FinallyStream`
- `FmtForward` – `fn fmt_binary(self) -> FmtBinary`, `fn fmt_display(self) -> FmtDisplay`, `fn fmt_lower_exp(self) -> FmtLowerExp`, `fn fmt_lower_hex(self) -> FmtLowerHex`, `fn fmt_octal(self) -> FmtOctal`, `fn fmt_pointer(self) -> FmtPointer`, `fn fmt_upper_exp(self) -> FmtUpperExp`, `fn fmt_upper_hex(self) -> FmtUpperHex`, `fn fmt_list(self) -> FmtList`
- `From<T>` – `fn from(t: T) -> T`
- `HasTypeWitness<W>` – `const WITNESS: W`
- `Identity` – `type Type = T`; `const TYPE_EQ: TypeEq`
- `Instrument` – `fn instrument(self, span: Span) -> Instrumented`; `fn in_current_span(self) -> Instrumented`
- `Into<U>` – `fn into(self) -> U`
- `IntoEither` – `fn into_either(self, into_left: bool) -> Either`; `fn into_either_with(self, into_left: F) -> Either`
- `IntoShared<Shared>` – `fn into_shared(self) -> Shared`
- `LayoutRaw` – `fn layout_raw(_: ...) -> Result<Layout, LayoutError>`
- `Niching<NichedOption<T, N1>>` – `unsafe fn is_niched(...) -> bool`; `fn resolve_niched(...)`
- `Pipe` – `fn pipe(self, func: ...) -> R`, `fn pipe_ref(...) -> R`, `fn pipe_ref_mut(...) -> R`, `fn pipe_borrow(...) -> R`, `fn pipe_borrow_mut(...) -> R`, `fn pipe_as_ref(...) -> R`, `fn pipe_as_mut(...) -> R`, `fn pipe_deref(...) -> R`, `fn pipe_deref_mut(...) -> R`
- `Pointable` – `const ALIGN: usize`; `type Init = T`; `unsafe fn init(...) -> usize`; `unsafe fn deref(...) -> &T`; `unsafe fn deref_mut(...) -> &mut T`; `unsafe fn drop(...)`
- `Pointee` – `type Metadata = ()`
- `PolicyExt` – `fn and(self, other: P) -> And`; `fn or(self, other: P) -> Or`
- `Same` – `type Output = T`
- `StreamExt` (from tokio-stream) – `fn next(&mut self) -> Next`, `fn try_next(&mut self) -> TryNext`, `fn map(self, f: F) -> Map`, `fn map_while(self, f: F) -> MapWhile`, `fn then(self, f: F) -> Then`, `fn merge(self, other: U) -> Merge`, `fn filter(self, f: F) -> Filter`, `fn filter_map(self, f: F) -> FilterMap`, `fn fuse(self) -> Fuse`, `fn take(self, n: usize) -> Take`, `fn take_while(self, f: F) -> TakeWhile`, `fn skip(self, n: usize) -> Skip`, `fn skip_while(self, f: F) -> SkipWhile`, `fn all(&mut self, f: F) -> AllFuture`, `fn any(&mut self, f: F) -> AnyFuture`, `fn chain(self, other: U) -> Chain`, `fn fold(self, init: B, f: F) -> FoldFuture`, `fn collect(self) -> Collect`, `fn timeout(self, duration: Duration) -> Timeout`, `fn timeout_repeating(self, interval: Interval) -> TimeoutRepeating`, `fn throttle(self, duration: Duration) -> Throttle`, `fn chunks_timeout(self, max_size: usize, duration: Duration) -> ChunksTimeout`, `fn peekable(self) -> Peekable`
- `StreamExt` (from futures-util) – `fn next(&mut self) -> Next`, `fn into_future(self) -> StreamFuture`, `fn map(self, f: F) -> Map`, `fn enumerate(self) -> Enumerate`, `fn filter(self, f: F) -> Filter`, `fn filter_map(self, f: F) -> FilterMap`, `fn then(self, f: F) -> Then`, `fn collect(self) -> Collect`, `fn unzip(self) -> Unzip`, `fn concat(self) -> Concat`, `fn count(self) -> Count`, `fn cycle(self) -> Cycle`, `fn fold(self, init: T, f: F) -> Fold`, `fn any(self, f: F) -> Any`, `fn all(self, f: F) -> All`, `fn flatten(self) -> Flatten`, `fn flatten_unordered(self, limit: ...) -> FlattenUnorderedWithFlowController`, `fn flat_map(self, f: F) -> FlatMap`, `fn flat_map_unordered(self, limit: ..., f: F) -> FlatMapUnordered`, `fn scan(self, initial_state: S, f: F) -> Scan`, `fn skip_while(self, f: F) -> SkipWhile`, `fn take_while(self, f: F) -> TakeWhile`, `fn take_until(self, fut: Fut) -> TakeUntil`, `fn for_each(self, f: F) -> ForEach`, `fn for_each_concurrent(self, limit: ..., f: F) -> ForEachConcurrent`, `fn take(self, n: usize) -> Take`, `fn skip(self, n: usize) -> Skip`, `fn fuse(self) -> Fuse`, `fn by_ref(&mut self) -> &mut Self`, `fn catch_unwind(self) -> CatchUnwind`, `fn boxed<'a>(self) -> Pin<Box<...>>`, `fn boxed_local<'a>(self) -> Pin<Box<...>>`, `fn buffered(self, n: usize) -> Buffered`, `fn buffer_unordered(self, n: usize) -> BufferUnordered`, `fn zip(self, other: St) -> Zip`, `fn chain(self, other: St) -> Chain`, `fn peekable(self) -> Peekable`, `fn chunks(self, capacity: usize) -> Chunks`, `fn ready_chunks(self, capacity: usize) -> ReadyChunks`, `fn forward(self, sink: S) -> Forward`, `fn split(self) -> (SplitSink, SplitStream)`, `fn inspect(self, f: F) -> Inspect`, `fn left_stream(self) -> Either`, `fn right_stream(self) -> Either`, `fn poll_next_unpin(&mut self, cx: &mut Context) -> Poll<Option<Self::Item>>`, `fn select_next_some(&mut self) -> SelectNextSome`
- `StreamOnDropExt` – `fn on_drop(self, f: F) -> OnDropStream`
- `StreamTracingExt` – `fn stream_in_current_span(self) -> InstrumentedStream`; `fn stream_in_span(self, span: Span) -> InstrumentedStream`
- `Tap` – `fn tap(self, func: ...) -> Self`, `fn tap_mut(self, func: ...) -> Self`, `fn tap_borrow(self, func: ...) -> Self`, `fn tap_borrow_mut(self, func: ...) -> Self`, `fn tap_ref(self, func: ...) -> Self`, `fn tap_ref_mut(self, func: ...) -> Self`, `fn tap_deref(self, func: ...) -> Self`, `fn tap_deref_mut(self, func: ...) -> Self`, `fn tap_dbg(self, func: ...) -> Self`, `fn tap_mut_dbg(self, func: ...) -> Self`, `fn tap_borrow_dbg(self, func: ...) -> Self`, `fn tap_borrow_mut_dbg(self, func: ...) -> Self`, `fn tap_ref_dbg(self, func: ...) -> Self`, `fn tap_ref_mut_dbg(self, func: ...) -> Self`, `fn tap_deref_dbg(self, func: ...) -> Self`, `fn tap_deref_mut_dbg(self, func: ...) -> Self`
- `TryConv` – `fn try_conv(self) -> Result<T, Error>`
- `TryFrom<U>` – `type Error = Infallible`; `fn try_from(value: U) -> Result<T, Error>`
- `TryInto<U>` – `type Error = ...`; `fn try_into(self) -> Result<U, Error>` (two implementations)
- `TryStream` – `type Ok = T`; `type Error = E`; `fn try_poll_next(...) -> Poll<Option<Result<T, E>>>`
- `TryStreamExt` – `fn err_into(self) -> ErrInto`, `fn map_ok(self, f: F) -> MapOk`, `fn map_err(self, f: F) -> MapErr`, `fn and_then(self, f: F) -> AndThen`, `fn or_else(self, f: F) -> OrElse`, `fn inspect_ok(self, f: F) -> InspectOk`, `fn inspect_err(self, f: F) -> InspectErr`, `fn into_stream(self) -> IntoStream`, `fn try_next(&mut self) -> TryNext`, `fn try_for_each(self, f: F) -> TryForEach`, `fn try_skip_while(self, f: F) -> TrySkipWhile`, `fn try_take_while(self, f: F) -> TryTakeWhile`, `fn try_for_each_concurrent(self, limit: ..., f: F) -> TryForEachConcurrent`, `fn try_collect(self) -> TryCollect`, `fn try_chunks(self, capacity: usize) -> TryChunks`, `fn try_ready_chunks(self, capacity: usize) -> TryReadyChunks`, `fn try_filter(self, f: F) -> TryFilter`, `fn try_filter_map(self, f: F) -> TryFilterMap`, `fn try_flatten_unordered(self, limit: ...) -> TryFlattenUnordered`, `fn try_flatten(self) -> TryFlatten`, `fn try_fold(self, init: T, f: F) -> TryFold`, `fn try_concat(self) -> TryConcat`, `fn try_buffer_unordered(self, n: usize) -> TryBufferUnordered`, `fn try_buffered(self, n: usize) -> TryBuffered`, `fn try_poll_next_unpin(...) -> Poll<Option<Result<...>>>`, `fn into_async_read(self) -> IntoAsyncRead`, `fn try_all(self, f: F) -> TryAll`, `fn try_any(self, f: F) -> TryAny`
- `VZip<V>` – `fn vzip(self) -> V`
- `WithSubscriber` – `fn with_subscriber(self, subscriber: S) -> WithDispatch`; `fn with_current_subscriber(self) -> WithDispatch`
