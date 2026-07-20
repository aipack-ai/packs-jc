# IvfSqIndexBuilder

In `lancedb::index::vector`

[Source](https://docs.rs/crate/lancedb/0.30.0/src/lancedb/index/vector.rs.html#216-227)

**Struct**

```text
pub struct IvfSqIndexBuilder { /* private fields */ }
```

**Description**  
Builder for an IVF SQ index.

This index compresses vectors using scalar quantization and groups them into IVF partitions. It offers a balance between search performance and storage footprint.

## Implementations

### `impl IvfSqIndexBuilder`

#### `pub fn distance_type(self, distance_type: DistanceType) -> Self`

[DistanceType](https://docs.rs/lancedb/0.30.0/lancedb/enum.DistanceType.html) to use to build the index. Default value is `DistanceType::L2`. This is used when training the index to calculate the IVF partitions (vectors are grouped in partitions with similar vectors according to this distance type) and to calculate a subvector’s code during quantization. The metric type used to train an index MUST match the metric type used to search the index. Failure to do so will yield inaccurate results.

#### `pub fn num_partitions(self, num_partitions: u32) -> Self`

The number of IVF partitions to create. This value should generally scale with the number of rows in the dataset. By default the number of partitions is the square root of the number of rows. If this value is too large then the first part of the search (picking the right partition) will be slow. If this value is too small then the second part of the search (searching within a partition) will be slow.

#### `pub fn sample_rate(self, sample_rate: u32) -> Self`

The rate used to calculate the number of training vectors for kmeans. When an IVF index is trained, we need to calculate partitions. These are groups of vectors that are similar to each other. To do this we use an algorithm called kmeans. Running kmeans on a large dataset can be slow. To speed this up we run kmeans on a random sample of the data. This parameter controls the size of the sample. The total number of vectors used to train the index is `sample_rate * num_partitions`. Increasing this value might improve the quality of the index but in most cases the default should be sufficient. The default value is 256.

#### `pub fn max_iterations(self, max_iterations: u32) -> Self`

Max iterations to train kmeans. When training an IVF index we use kmeans to calculate the partitions. This parameter controls how many iterations of kmeans to run. Increasing this might improve the quality of the index but in most cases the parameter is unused because kmeans will converge with fewer iterations. The parameter is only used in cases where kmeans does not appear to converge. In those cases it is unlikely that setting this larger will lead to the index converging anyways. The default value is 50.

#### `pub fn target_partition_size(self, target_partition_size: u32) -> Self`

The target size of each partition. This value controls the tradeoff between search performance and accuracy. The higher the value the faster the search but the less accurate the results will be.

## Trait Implementations

### `impl Clone for IvfSqIndexBuilder`

```text
fn clone(&self) -> IvfSqIndexBuilder
```

### `impl Debug for IvfSqIndexBuilder`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Default for IvfSqIndexBuilder`

```text
fn default() -> Self
```

### `impl Serialize for IvfSqIndexBuilder`

```text
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `impl Any for T` where T: 'static + ?Sized
  - `fn type_id(&self) -> TypeId`

- `impl ArchivePointee for T`
  - type `ArchivedMetadata = ()`
  - `fn pointer_metadata(...) -> ...`

- `impl Borrow<T> for T` where T: ?Sized
  - `fn borrow(&self) -> &T`

- `impl BorrowMut<T> for T` where T: ?Sized
  - `fn borrow_mut(&mut self) -> &mut T`

- `impl CloneToUninit for T` where T: Clone
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

- `impl Conv for T`
  - `fn conv(self) -> T` where Self: Into<T>

- `impl DropFlavorWrapper<T> for T`
  - type `Flavor = MayDrop`

- `impl DynClone for T` where T: Clone
  - `fn __clone_box(&self, _: Private) -> *mut ()`

- `impl FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary` where Self: Binary
  - `fn fmt_display(self) -> FmtDisplay` where Self: Display
  - `fn fmt_lower_exp(self) -> FmtLowerExp` where Self: LowerExp
  - `fn fmt_lower_hex(self) -> FmtLowerHex` where Self: LowerHex
  - `fn fmt_octal(self) -> FmtOctal` where Self: Octal
  - `fn fmt_pointer(self) -> FmtPointer` where Self: Pointer
  - `fn fmt_upper_exp(self) -> FmtUpperExp` where Self: UpperExp
  - `fn fmt_upper_hex(self) -> FmtUpperHex` where Self: UpperHex
  - `fn fmt_list(self) -> FmtList` where &'a Self: for<'a> IntoIterator

- `impl From<T> for T`
  - `fn from(t: T) -> T`

- `impl FromRef<T> for T` where T: Clone
  - `fn from_ref(input: &T) -> T`

- `impl HasTypeWitness<W> for T` where W: MakeTypeWitness, T: ?Sized
  - const `WITNESS: W = W::MAKE`

- `impl Identity for T` where T: ?Sized
  - const `TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`
  - type `Type = T`

- `impl Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`

- `impl Into<U> for T` where U: From<T>
  - `fn into(self) -> U`

- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either` where F: FnOnce(&Self) -> bool

- `impl IntoShared<Shared> for Unshared` where Shared: FromUnshared
  - `fn into_shared(self) -> Shared`

- `impl LayoutRaw for T`
  - `fn layout_raw(_: Pointee::Metadata) -> Result<Layout, LayoutError>`

- `impl Niching<NichedOption<T, N1>> for N2` where T: SharedNiching, N1: Niching, N2: Niching
  - `unsafe fn is_niched(niched: *const NichedOption) -> bool`
  - `fn resolve_niched(out: Place<NichedOption>)`

- `impl Pipe for T` where T: ?Sized
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` where Self: Sized
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R` where R: 'a
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R` where R: 'a
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` where Self: Borrow<B>, B: 'a + ?Sized, R: 'a
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` where Self: AsRef<U>, U: 'a + ?Sized, R: 'a
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` where Self: AsMut<U>, U: 'a + ?Sized, R: 'a
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` where Self: Deref<Target=T>, T: 'a + ?Sized, R: 'a
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a

- `impl Pointable for T`
  - const `ALIGN: usize`
  - type `Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`

- `impl Pointee for T`
  - type `Metadata = ()`

- `impl PolicyExt for T` where T: ?Sized
  - `fn and(self, other: P) -> And` where T: Policy, P: Policy
  - `fn or(self, other: P) -> Or` where T: Policy, P: Policy

- `impl Same for T`
  - type `Output = T`

- `impl Tap for T`
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>, B: ?Sized
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>, B: ?Sized
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>, R: ?Sized
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>, R: ?Sized
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<Target=T>, T: ?Sized
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut + Deref, T: ?Sized
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>, B: ?Sized
  - `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>, B: ?Sized
  - `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>, R: ?Sized
  - `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>, R: ?Sized
  - `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<Target=T>, T: ?Sized
  - `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut + Deref, T: ?Sized

- `impl ToOwned for T` where T: Clone
  - type `Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`

- `impl TryConv for T`
  - `fn try_conv(self) -> Result<T, Error>` where Self: TryInto<T>

- `impl TryFrom<U> for T` where U: Into<T>
  - type `Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`

- `impl TryInto<U> for T` where U: TryFrom<T>
  - type `Error = U::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`

- `impl TryInto<U> for T` where U: TryFrom<T> (async version)
  - type `Error = U::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>` where T: 'async_trait

- `impl VZip<V> for T` where V: MultiLane
  - `fn vzip(self) -> V`

- `impl WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: Into<Dispatch>
  - `fn with_current_subscriber(self) -> WithDispatch`

- `impl Allocation for T` where T: RefUnwindSafe + Send + Sync

- `impl ErasedDestructor for T` where T: 'static

- `impl MaybeSend for T` where T: Send (multiple)

- `impl ResultError for E` where E: Send + Debug + Sync

- `impl ResultType for T` where T: Send + Clone + Sync + Debug
