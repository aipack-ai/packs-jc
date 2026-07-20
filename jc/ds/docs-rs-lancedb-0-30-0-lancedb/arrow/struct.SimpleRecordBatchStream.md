# SimpleRecordBatchStream

**Module:** `lancedb::arrow`

**Source:** [src/lancedb/arrow.rs.html#87-91](https://github.com/lancedb/lancedb/blob/v0.30.0/src/lancedb/arrow.rs#L87-L91)

**Description:** A simple `RecordBatchStream` formed from the two parts (stream + schema)

## Fields

- `schema: Arc<Schema>`
- `stream: S`

## Implementations

### `impl<S: Stream<Item = Result<RecordBatch, Error>>> SimpleRecordBatchStream<S>`

- `pub fn new(stream: S, schema: Arc<Schema>) -> Self`

## Trait Implementations

### `impl<S: Stream<Item = Result<RecordBatch, Error>>> RecordBatchStream for SimpleRecordBatchStream<S>`

- `fn schema(&self) -> Arc<Schema>`

### `impl<S: Stream<Item = Result<RecordBatch, Error>>> Stream for SimpleRecordBatchStream<S>`

- **Associated Type:** `type Item = Result<RecordBatch, Error>`
- `fn poll_next(self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Option<Self::Item>>`
- `fn size_hint(&self) -> (usize, Option<usize>)`

### `impl<'pin, S: Stream<Item = Result<RecordBatch, Error>>> Unpin for SimpleRecordBatchStream<S> where PinnedFieldsOf<__SimpleRecordBatchStream<'pin, S>>: Unpin`

## Auto Trait Implementations

- `impl<S: Freeze> Freeze for SimpleRecordBatchStream<S>`
- `impl<S: RefUnwindSafe> RefUnwindSafe for SimpleRecordBatchStream<S>`
- `impl<S: Send> Send for SimpleRecordBatchStream<S>`
- `impl<S: Sync> Sync for SimpleRecordBatchStream<S>`
- `impl<S: UnsafeUnpin> UnsafeUnpin for SimpleRecordBatchStream<S>`
- `impl<S: UnwindSafe> UnwindSafe for SimpleRecordBatchStream<S>`

## Blanket Implementations

- `impl<T: 'static + ?Sized> Any for T`
  - `fn type_id(&self) -> TypeId`
- `impl<T> ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata`
- `impl<T: ?Sized> Borrow<T> for T`
  - `fn borrow(&self) -> &T`
- `impl<T: ?Sized> BorrowMut<T> for T`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl<T> Conv for T`
  - `fn conv(self) -> T where Self: Into<T>`
- `impl<T> DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`
- `impl<S: Stream> FinallyStreamExt for S`
  - `fn finally(self, f: F) -> FinallyStream where F: FnOnce()`
- `impl<T> FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary where Self: Binary`
  - `fn fmt_display(self) -> FmtDisplay where Self: Display`
  - `fn fmt_lower_exp(self) -> FmtLowerExp where Self: LowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex where Self: LowerHex`
  - `fn fmt_octal(self) -> FmtOctal where Self: Octal`
  - `fn fmt_pointer(self) -> FmtPointer where Self: Pointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp where Self: UpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex where Self: UpperHex`
  - `fn fmt_list(self) -> FmtList where &'a Self: for<'a> IntoIterator`
- `impl<T> From<T> for T`
  - `fn from(t: T) -> T`
- `impl<T: ?Sized, W: MakeTypeWitness> HasTypeWitness<W> for T`
  - `const WITNESS: W = W::MAKE`
- `impl<T: ?Sized> Identity for T`
  - `const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`
  - `type Type = T`
- `impl<T> Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- `impl<T, U> Into<U> for T where U: From<T>`
  - `fn into(self) -> U`
- `impl<T> IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`
- `impl<Unshared, Shared> IntoShared<Shared> for Unshared where Shared: FromUnshared<Unshared>`
  - `fn into_shared(self) -> Shared`
- `impl<T> LayoutRaw for T`
  - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `impl<T, N1, N2> Niching<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching, N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- `impl<T: ?Sized> Pipe for T`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R where Self: Sized`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R where Self: Borrow<B>, B: 'a + ?Sized, R: 'a`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R where Self: AsRef<U>, U: 'a + ?Sized, R: 'a`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R where Self: AsMut<U>, U: 'a + ?Sized, R: 'a`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R where Self: Deref<Target = T>, T: 'a + ?Sized, R: 'a`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a`
- `impl<T> Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl<T> Pointee for T`
  - `type Metadata = ()`
- `impl<T: ?Sized> PolicyExt for T`
  - `fn and(self, other: P) -> And where T: Policy, P: Policy`
  - `fn or(self, other: P) -> Or where T: Policy, P: Policy`
- `impl<T> Same for T`
  - `type Output = T`
- `impl<St: Stream + ?Sized> StreamExt for St`
  - (Numerous methods: next, try_next, map, map_while, then, merge, filter, filter_map, fuse, take, take_while, skip, skip_while, all, any, chain, fold, collect, timeout, timeout_repeating, throttle, chunks_timeout, peekable)
- `impl<T: Stream + ?Sized> StreamExt for T`
  - (Numerous methods: next, into_future, map, enumerate, filter, filter_map, then, collect, unzip, concat, count, cycle, fold, any, all, flatten, flatten_unordered, flat_map, flat_map_unordered, scan, skip_while, take_while, take_until, for_each, for_each_concurrent, take, skip, fuse, by_ref, catch_unwind, boxed, boxed_local, buffered, buffer_unordered, zip, chain, peekable, chunks, ready_chunks, forward, split, inspect, left_stream, right_stream, poll_next_unpin, select_next_some)
- `impl<S: Stream> StreamOnDropExt for S`
  - `fn on_drop(self, f: F) -> OnDropStream where F: FnOnce()`
- `impl<S: Stream> StreamTracingExt for S`
  - `fn stream_in_current_span(self) -> InstrumentedStream`
  - `fn stream_in_span(self, span: Span) -> InstrumentedStream`
- `impl<T: ?Sized> Tap for T`
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized`
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized`
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`
  - `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`
  - `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`
  - `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`
  - `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized`
  - `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized`
- `impl<T> TryConv for T`
  - `fn try_conv(self) -> Result<T, E> where Self: TryInto<T, Error = E>`
- `impl<T, U> TryFrom<U> for T where U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl<T, U> TryInto<U> for T where U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- `impl<T, U> TryInto<U> for T where U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `async fn try_into(self) -> Result<U, Self::Error>`
- `impl<S: Stream<Item = Result<T, E>> + ?Sized> TryStream for S`
  - `type Ok = T`
  - `type Error = E`
  - `fn try_poll_next(self: Pin<&mut S>, cx: &mut Context<'_>) -> Poll<Option<Result<Self::Ok, Self::Error>>>`
- `impl<S: TryStream + ?Sized> TryStreamExt for S`
  - (Numerous methods: err_into, map_ok, map_err, and_then, or_else, inspect_ok, inspect_err, into_stream, try_next, try_for_each, try_skip_while, try_take_while, try_for_each_concurrent, try_collect, try_chunks, try_ready_chunks, try_filter, try_filter_map, try_flatten_unordered, try_flatten, try_fold, try_concat, try_buffer_unordered, try_buffered, try_poll_next_unpin, into_async_read, try_all, try_any)
- `impl<T: RefUnwindSafe + Send + Sync> Allocation for T`
- `impl<T: 'static> ErasedDestructor for T`
- `impl<T: Send> MaybeSend for T` (from opendal_core)
- `impl<T: Send> MaybeSend for T` (from reqsign_core)
