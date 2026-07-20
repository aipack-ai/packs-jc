# ShufflerConfig in lancedb::dataloader::permutation::shuffle - Rust

## Struct ShufflerConfig

Source: `../../../../src/lancedb/dataloader/permutation/shuffle.rs.html#30-51`

```rust
pub struct ShufflerConfig {
    pub seed: Option<u64>,
    pub max_rows_per_file: u64,
    pub temp_dir: TemporaryDirectory,
    pub clump_size: Option<u64>,
}
```

### Fields

- **`seed`**: `Option<u64>` — An optional seed to make the shuffle deterministic.
- **`max_rows_per_file`**: `u64` — The maximum number of rows to write to a single file. The shuffler will need to hold at least this many rows in memory. Setting this value extremely large could cause the shuffler to use a lot of memory (depending on row size). However, the shuffler will also need to hold total_rows / max_rows_per_file file writers in memory. Each of these will consume some amount of data for column write buffers. So setting this value too small could *also* cause the shuffler to use a lot of memory and open file handles.
- **`temp_dir`**: `TemporaryDirectory` — The temporary directory to use for writing files.
- **`clump_size`**: `Option<u64>` — The size of the clumps to shuffle within. If a clump size is provided, then data will be shuffled in small blocks of contiguous rows. This decreases the overall randomization but can improve I/O performance when reading from cloud storage.

### Trait Implementations

#### `impl Clone for ShufflerConfig`

- **`fn clone(&self) -> ShufflerConfig`** — Returns a duplicate of the value.
- **`fn clone_from(&mut self, source: &Self)`** — Performs copy-assignment from `source`.

#### `impl Debug for ShufflerConfig`

- **`fn fmt(&self, f: &mut Formatter<'_>) -> Result`** — Formats the value using the given formatter.

#### `impl Default for ShufflerConfig`

- **`fn default() -> Self`** — Returns the “default value” for a type.

### Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

### Blanket Implementations

- **`impl Any for T`** where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`

- **`impl ArchivePointee for T`**
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &ArchivedMetadata) -> Metadata`

- **`impl Borrow<T> for T`** where `T: ?Sized`
  - `fn borrow(&self) -> &T`

- **`impl BorrowMut<T> for T`** where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`

- **`impl CloneToUninit for T`** where `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

- **`impl Conv for T`**
  - `fn conv(self) -> T` where `Self: Into<T>`

- **`impl DropFlavorWrapper<T> for T`**
  - `type Flavor = MayDrop`

- **`impl DynClone for T`** where `T: Clone`
  - `fn __clone_box(&self, _: Private) -> *mut ()`

- **`impl FmtForward for T`**
  - `fn fmt_binary(self) -> FmtBinary` where `Self: Binary`
  - `fn fmt_display(self) -> FmtDisplay` where `Self: Display`
  - `fn fmt_lower_exp(self) -> FmtLowerExp` where `Self: LowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex` where `Self: LowerHex`
  - `fn fmt_octal(self) -> FmtOctal` where `Self: Octal`
  - `fn fmt_pointer(self) -> FmtPointer` where `Self: Pointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp` where `Self: UpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex` where `Self: UpperHex`
  - `fn fmt_list(self) -> FmtList` where `&'a Self: for<'a> IntoIterator`

- **`impl From<T> for T`**
  - `fn from(t: T) -> T`

- **`impl FromRef<T> for T`** where `T: Clone`
  - `fn from_ref(input: &T) -> T`

- **`impl HasTypeWitness<W> for T`** where `W: MakeTypeWitness`, `T: ?Sized`
  - `const WITNESS: W = W::MAKE`

- **`impl Identity for T`** where `T: ?Sized`
  - `type Type = T`
  - `const TYPE_EQ: TypeEq<T, T> = TypeEq::NEW`

- **`impl Instrument for T`**
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`

- **`impl Into<U> for T`** where `U: From<T>`
  - `fn into(self) -> U`

- **`impl IntoEither for T`**
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either` where `F: FnOnce(&Self) -> bool`

- **`impl IntoShared<Shared> for Unshared`** where `Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`

- **`impl LayoutRaw for T`**
  - `fn layout_raw(_: Metadata) -> Result<Layout, LayoutError>`

- **`impl Niching<NichedOption<T, N1>> for N2`** where `T: SharedNiching`, `N1: Niching`, `N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption) -> bool`
  - `fn resolve_niched(out: Place<NichedOption>)`

- **`impl Pipe for T`** where `T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` where `Self: Sized`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` where `Self: Borrow<B>`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` where `Self: BorrowMut<B>`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` where `Self: AsRef<U>`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` where `Self: AsMut<U>`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` where `Self: Deref<Target = T>`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` where `Self: DerefMut + Deref`

- **`impl Pointable for T`**
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`

- **`impl Pointee for T`**
  - `type Metadata = ()`

- **`impl PolicyExt for T`** where `T: ?Sized`
  - `fn and(self, other: P) -> And` where `T: Policy`, `P: Policy`
  - `fn or(self, other: P) -> Or` where `T: Policy`, `P: Policy`

- **`impl Same for T`**
  - `type Output = T`

- **`impl Tap for T`**
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` where `Self: Borrow<B>`
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` where `Self: BorrowMut<B>`
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` where `Self: AsRef<R>`
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` where `Self: AsMut<R>`
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` where `Self: Deref<Target = T>`
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` where `Self: DerefMut + Deref`
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self` where `Self: Borrow<B>`
  - `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self` where `Self: BorrowMut<B>`
  - `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self` where `Self: AsRef<R>`
  - `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self` where `Self: AsMut<R>`
  - `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self` where `Self: Deref<Target = T>`
  - `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self` where `Self: DerefMut + Deref`

- **`impl ToOwned for T`** where `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`

- **`impl TryConv for T`**
  - `fn try_conv(self) -> Result<T, Error>` where `Self: TryInto<T>`

- **`impl TryFrom<U> for T`** where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Error>`

- **`impl TryInto<U> for T`** where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Error>`

- **`impl TryInto<U> for T`** (from `async-convert`) where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Error>> + 'async_trait>>` where `T: 'async_trait`

- **`impl VZip<V> for T`** where `V: MultiLane`
  - `fn vzip(self) -> V`

- **`impl WithSubscriber for T`**
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch` where `S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch`

- **`impl Allocation for T`** where `T: RefUnwindSafe + Send + Sync`
  - (No methods listed in the original content; likely marker trait)

- **`impl ErasedDestructor for T`** where `T: 'static`
  - (Marker trait)

- **`impl MaybeSend for T`** where `T: Send`
  - (Marker trait)

- **`impl MaybeSend for T`** (from `reqsign-core`) where `T: Send`
  - (Marker trait)

- **`impl ResultError for E`** where `E: Send + Debug + Sync`
  - (No methods listed; likely marker trait)

- **`impl ResultType for T`** where `T: Send + Clone + Sync + Debug`
  - (Marker trait)
