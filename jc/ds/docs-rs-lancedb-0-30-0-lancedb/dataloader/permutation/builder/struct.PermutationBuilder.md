# PermutationBuilder

In `lancedb::dataloader::permutation::builder`

Builder for creating a permutation table.

A permutation table is a table that stores split assignments and a shuffled order of rows. This can be used to create a permutation reader that reads rows in the order defined by the permutation. The permutation table is not a materialized copy of the underlying data and can be very lightweight. It is not a view of the underlying data and is not a copy of the data. It is a separate table that stores just row id and split id.

## Struct Definition

```text
pub struct PermutationBuilder { /* private fields */ }
```

## Implementations

### Associated Functions

- `pub fn new(base_table: Table) -> Self`

### Methods

- `pub fn with_split_strategy(self, split_strategy: SplitStrategy, split_names: Option<Vec<String>>) -> Self`
  Configures the strategy for assigning rows to splits.
  For example, it is common to create a test/train split of the data. Splits can also be used to limit the number of rows. For example, to only use 10% of the data in a permutation you can create a single split with 10% of the data.
  Splits are *not* required for parallel processing. A single split can be loaded in parallel across multiple processes and multiple nodes.
  The default is a single split that contains all rows.
  An optional list of names can be provided for the splits. This is for convenience and the names will be stored in the permutation table's config metadata.

- `pub fn with_shuffle_strategy(self, shuffle_strategy: ShuffleStrategy) -> Self`
  Configures the strategy for shuffling the data.
  The default is to shuffle the data randomly at row-level granularity (no clump size) and with a random seed.

- `pub fn with_filter(self, filter: String) -> Self`
  Configures a filter to apply to the base table.
  Only rows matching the filter will be included in the permutation.

- `pub fn with_temp_dir(self, temp_dir: TemporaryDirectory) -> Self`
  Configures the directory to use for temporary files.
  The default is to use the operating system's default temporary directory.

- `pub fn persist(self, database: Arc<Database>, table_name: String) -> Self`
  Stores the permutation as a table in a database.
  By default, the permutation is stored in memory. If this method is called then the permutation will be stored as a table in the given database.

- `pub async fn build(self) -> Result<Table>`
  Builds the permutation table and stores it in the given database.

## Auto Trait Implementations

- `impl Freeze for PermutationBuilder`
- `impl !RefUnwindSafe for PermutationBuilder`
- `impl Send for PermutationBuilder`
- `impl Sync for PermutationBuilder`
- `impl Unpin for PermutationBuilder`
- `impl UnsafeUnpin for PermutationBuilder`
- `impl !UnwindSafe for PermutationBuilder`

## Blanket Implementations

- `impl Any for T`
  where T: 'static + ?Sized
  - `fn type_id(&self) -> TypeId`

- `impl ArchivePointee for T`
  - type `ArchivedMetadata = ()`
  - `fn pointer_metadata(_: <ArchivePointee>::ArchivedMetadata) -> <Pointee>::Metadata`

- `impl Borrow<T> for T`
  where T: ?Sized
  - `fn borrow(&self) -> &T`

- `impl BorrowMut<T> for T`
  where T: ?Sized
  - `fn borrow_mut(&mut self) -> &mut T`

- `impl Conv for T`
  - `fn conv(self) -> T`

- `impl DropFlavorWrapper for T`
  - type `Flavor = MayDrop`

- `impl FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`

- `impl From<T> for T`
  - `fn from(t: T) -> T`

- `impl HasTypeWitness<W> for T`
  where W: MakeTypeWitness, T: ?Sized
  - const `WITNESS: W`

- `impl Identity for T`
  where T: ?Sized
  - const `TYPE_EQ: TypeEq<Self::Type>`
  - type `Type = T`

- `impl Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`

- `impl Into<U> for T`
  where U: From<T>
  - `fn into(self) -> U`

- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`

- `impl IntoShared<Shared> for Unshared`
  where Shared: FromUnshared
  - `fn into_shared(self) -> Shared`

- `impl LayoutRaw for T`
  - `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`

- `impl Niching<NichedOption<T, N1>> for N2`
  where T: SharedNiching, N1: Niching, N2: Niching
  - unsafe `fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

- `impl Pipe for T`
  where T: ?Sized
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`

- `impl Pointable for T`
  - const `ALIGN: usize`
  - type `Init = T`
  - unsafe `fn init(init: T) -> usize`
  - unsafe `fn deref<'a>(ptr: usize) -> &'a T`
  - unsafe `fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - unsafe `fn drop(ptr: usize)`

- `impl Pointee for T`
  - type `Metadata = ()`

- `impl PolicyExt for T`
  where T: ?Sized
  - `fn and(self, other: P) -> And`
  - `fn or(self, other: P) -> Or`

- `impl Same for T`
  - type `Output = T`

- `impl Tap for T`
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self`
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self`
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self`
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self`
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self`
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self`
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self`
  - `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self`
  - `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self`
  - `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self`
  - `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self`
  - `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self`

- `impl TryConv for T`
  - `fn try_conv(self) -> Result<T, Error>`

- `impl TryFrom<U> for T`
  where U: Into<T>
  - type `Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`

- `impl TryInto<U> for T`
  where U: TryFrom<T>
  - type `Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`

- `impl TryInto<U> for T`
  where U: TryFrom<T>
  - type `Error = <U as TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`

- `impl VZip<V> for T`
  where V: MultiLane
  - `fn vzip(self) -> V`

- `impl WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`

- `impl ErasedDestructor for T`
  where T: 'static

- `impl MaybeSend for T`
  where T: Send
