# Shuffler (in lancedb::dataloader::permutation::shuffle)

## Description

A shuffler that can shuffle a stream of record batches.  
To do this the stream is consumed and written to temporary files. A new stream is returned which returns the shuffled data from the temporary files.  

If there are fewer than `max_rows_per_file` rows in the input stream, then the shuffler will not write any files and will instead perform an in-memory shuffle.  

The number of rows in the input stream must be known in advance.

## Implementations

### `impl Shuffler`

- `pub fn new(config: ShufflerConfig) -> Self`
- `pub async fn shuffle(self, data: SendableRecordBatchStream, num_rows: u64) -> Result<SendableRecordBatchStream>`

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- **`impl Any for T`**  
  `fn type_id(&self) -> TypeId`

- **`impl ArchivePointee for T`**  
  `type ArchivedMetadata = ()`  
  `fn pointer_metadata(_: &ArchivedMetadata) -> <Pointee>::Metadata`

- **`impl<T> Borrow<T> for T`**  
  `fn borrow(&self) -> &T`

- **`impl<T> BorrowMut<T> for T`**  
  `fn borrow_mut(&mut self) -> &mut T`

- **`impl Conv for T`**  
  `fn conv(self) -> T` (where `Self: Into<T>`)

- **`impl DropFlavorWrapper<T> for T`**  
  `type Flavor = MayDrop`

- **`impl FmtForward for T`**  
  Methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list` – each returns a formatting wrapper.

- **`impl<T> From<T> for T`**  
  `fn from(t: T) -> T`

- **`impl HasTypeWitness<W> for T`**  
  `const WITNESS: W = W::MAKE`

- **`impl Identity for T`**  
  `const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`  
  `type Type = T`

- **`impl Instrument for T`**  
  `fn instrument(self, span: Span) -> Instrumented`  
  `fn in_current_span(self) -> Instrumented`

- **`impl Into<U> for T`**  
  `fn into(self) -> U`

- **`impl IntoEither for T`**  
  `fn into_either(self, into_left: bool) -> Either`  
  `fn into_either_with(self, into_left: F) -> Either`

- **`impl IntoShared<Shared> for Unshared`**  
  `fn into_shared(self) -> Shared`

- **`impl LayoutRaw for T`**  
  `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`

- **`impl Niching<NichedOption<T, N1>> for N2`**  
  `unsafe fn is_niched(niched: *const NichedOption) -> bool`  
  `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

- **`impl Pipe for T`**  
  Methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut` – each pipes `self` through a function.

- **`impl Pointable for T`**  
  `const ALIGN: usize`  
  `type Init = T`  
  `unsafe fn init(init: T) -> usize`  
  `unsafe fn deref<'a>(ptr: usize) -> &'a T`  
  `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`  
  `unsafe fn drop(ptr: usize)`

- **`impl Pointee for T`**  
  `type Metadata = ()`

- **`impl PolicyExt for T`**  
  `fn and(self, other: P) -> And`  
  `fn or(self, other: P) -> Or`

- **`impl Same for T`**  
  `type Output = T`

- **`impl Tap for T`**  
  Methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, plus `.tap_dbg`, `.tap_mut_dbg`, `.tap_borrow_dbg`, `.tap_borrow_mut_dbg`, `.tap_ref_dbg`, `.tap_ref_mut_dbg`, `.tap_deref_dbg`, `.tap_deref_mut_dbg` – each returns `Self` after applying a function.

- **`impl TryConv for T`**  
  `fn try_conv(self) -> Result<T, Error>`

- **`impl TryFrom<U> for T`**  
  `type Error = Infallible`  
  `fn try_from(value: U) -> Result<T, Infallible>`

- **`impl TryInto<U> for T`**  
  `type Error = Infallible`  
  `fn try_into(self) -> Result<U, Infallible>`

- **`impl TryInto<U> for T` (async_convert)**  
  `type Error = <TryFrom<U> as TryFrom<T>>::Error`  
  `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Error>> + 'async_trait>>`

- **`impl VZip<V> for T`**  
  `fn vzip(self) -> V`

- **`impl WithSubscriber for T`**  
  `fn with_subscriber(self, subscriber: S) -> WithDispatch`  
  `fn with_current_subscriber(self) -> WithDispatch`

- **`impl Allocation for T`** (where T: RefUnwindSafe + Send + Sync) – (trait only, no methods)

- **`impl ErasedDestructor for T`** (where T: 'static) – (trait only, no methods)

- **`impl MaybeSend for T`** (where T: Send) – (trait only, no methods)

- **`impl MaybeSend for T`** (reqsign-core, where T: Send) – (trait only, no methods)
