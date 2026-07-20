# IvfRqIndexBuilder

In [lancedb::index::vector](index.html)

**Source:** [../../src/lancedb/index/vector.rs.html#334-346](https://github.com/lancedb/lancedb/0.30.0/src/lancedb/index/vector.rs.html#334-346)

```rust
pub struct IvfRqIndexBuilder { /* private fields */ }
```

Builder for an IVF RQ index. This index stores a compressed (quantized) copy of every vector. Each dimension is quantized into a small number of bits. The parameters `num_bits` control this process, providing a tradeoff between index size (and thus search speed) and index accuracy. The partitioning process is called IVF and the `num_partitions` parameter controls how many groups to create. Note that training an IVF RQ index on a large dataset is a slow operation and currently is also a memory intensive operation.

## Implementations

### `impl IvfRqIndexBuilder`

- `pub fn distance_type(self, distance_type: DistanceType) -> Self`
  - DistanceType to use to build the index. Default is `DistanceType::L2`.
- `pub fn num_partitions(self, num_partitions: u32) -> Self`
  - The number of IVF partitions to create. Default is sqrt(number of rows).
- `pub fn sample_rate(self, sample_rate: u32) -> Self`
  - The rate used to calculate the number of training vectors for kmeans. Default is 256.
- `pub fn max_iterations(self, max_iterations: u32) -> Self`
  - Max iterations to train kmeans. Default is 50.
- `pub fn target_partition_size(self, target_partition_size: u32) -> Self`
  - The target size of each partition.
- `pub fn num_bits(self, num_bits: u32) -> Self`
  - (Documentation not provided in the raw.)

## Trait Implementations

### `impl Clone for IvfRqIndexBuilder`

- `fn clone(&self) -> IvfRqIndexBuilder`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for IvfRqIndexBuilder`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Default for IvfRqIndexBuilder`

- `fn default() -> Self`

### `impl Serialize for IvfRqIndexBuilder`

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error> where __S: Serializer`

## Auto Trait Implementations

- `impl Freeze for IvfRqIndexBuilder`
- `impl RefUnwindSafe for IvfRqIndexBuilder`
- `impl Send for IvfRqIndexBuilder`
- `impl Sync for IvfRqIndexBuilder`
- `impl Unpin for IvfRqIndexBuilder`
- `impl UnsafeUnpin for IvfRqIndexBuilder`
- `impl UnwindSafe for IvfRqIndexBuilder`

## Blanket Implementations

- **`impl Any for T`** where T: 'static + ?Sized
  - `fn type_id(&self) -> TypeId`
- **`impl ArchivePointee for T`**
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(...) -> ...`
- **`impl Borrow<T> for T`** where T: ?Sized
  - `fn borrow(&self) -> &T`
- **`impl BorrowMut<T> for T`** where T: ?Sized
  - `fn borrow_mut(&self) -> &mut T`
- **`impl CloneToUninit for T`** where T: Clone
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- **`impl Conv for T`**
  - `fn conv(self) -> T` where Self: Into<T>
- **`impl DropFlavorWrapper for T`**
  - `type Flavor = MayDrop`
- **`impl DynClone for T`** where T: Clone
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- **`impl FmtForward for T`**
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`
- **`impl From<T> for T`**
  - `fn from(t: T) -> T`
- **`impl FromRef<T> for T`** where T: Clone
  - `fn from_ref(input: &T) -> T`
- **`impl HasTypeWitness<W> for T`** where W: MakeTypeWitness, T: ?Sized
  - `const WITNESS: W`
- **`impl Identity for T`** where T: ?Sized
  - `const TYPE_EQ: TypeEq`
  - `type Type = T`
- **`impl Instrument for T`**
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- **`impl Into<U> for T`** where U: From<T>
  - `fn into(self) -> U`
- **`impl IntoEither for T`**
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`
- **`impl IntoShared<Shared> for Unshared`** where Shared: FromUnshared
  - `fn into_shared(self) -> Shared`
- **`impl LayoutRaw for T`**
  - `fn layout_raw(metadata: ...) -> Result<Layout, LayoutError>`
- **`impl Niching<NichedOption<T, N1>> for N2`** where T: SharedNiching, N1: Niching, N2: Niching
  - `unsafe fn is_niched(niched: *const NichedOption) -> bool`
  - `fn resolve_niched(out: Place<NichedOption>)`
- **`impl Pipe for T`** where T: ?Sized
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`
- **`impl Pointable for T`**
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- **`impl Pointee for T`**
  - `type Metadata = ()`
- **`impl PolicyExt for T`** where T: ?Sized
  - `fn and(self, other: P) -> And`
  - `fn or(self, other: P) -> Or`
- **`impl Same for T`**
  - `type Output = T`
- **`impl Tap for T`**
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<Target=T>
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self`
  - `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self`
  - `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self`
  - `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self`
  - `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self`
  - `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self`
- **`impl ToOwned for T`** where T: Clone
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- **`impl TryConv for T`**
  - `fn try_conv(self) -> Result<T, Self::Error>` where Self: TryInto<T>
- **`impl TryFrom<U> for T`** where U: Into<T>
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- **`impl TryInto<U> for T`** where U: TryFrom<T>
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- **`impl TryInto<U> for T`** (async)
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`
- **`impl VZip<V> for T`** where V: MultiLane
  - `fn vzip(self) -> V`
- **`impl WithSubscriber for T`**
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
- **`impl Allocation for T`** where T: RefUnwindSafe + Send + Sync
- **`impl ErasedDestructor for T`** where T: 'static
- **`impl MaybeSend for T`** where T: Send
- **`impl MaybeSend for T`** (another)
- **`impl ResultError for E`** where E: Send + Debug + Sync
- **`impl ResultType for T`** where T: Send + Clone + Sync + Debug
