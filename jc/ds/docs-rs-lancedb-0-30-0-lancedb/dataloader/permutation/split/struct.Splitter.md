# Splitter

`pub struct Splitter { /* private fields */ }`

[Source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/dataloader/permutation/split.rs#L110-L113)

**Path:** `lancedb::dataloader::permutation::split`

## Associated Functions

- `pub fn new(temp_dir: TemporaryDirectory, strategy: SplitStrategy) -> Self`

## Methods

- `pub async fn apply(&self, source: SendableRecordBatchStream, num_rows: u64) -> Result<SendableRecordBatchStream>`
- `pub fn project(&self, query: Query) -> Query`
- `pub fn orders_by_split_id(&self) -> bool`

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- **`Allocation`** — where `T: RefUnwindSafe + Send + Sync`
- **`Any`** — where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- **`ArchivePointee`**
  - type `ArchivedMetadata = ()`
  - fn `pointer_metadata(_: &ArchivedMetadata) -> <Pointee>::Metadata`
- **`Borrow<T>`** — where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- **`BorrowMut<T>`** — where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- **`Conv`**
  - `fn conv(self) -> T` where `Self: Into<T>`
- **`DropFlavorWrapper<T>`**
  - type `Flavor = MayDrop`
- **`ErasedDestructor`** — where `T: 'static`
- **`FmtForward`**
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`
- **`From<T>`**
  - `fn from(t: T) -> T`
- **`HasTypeWitness<W>`** — where `W: MakeTypeWitness`, `T: ?Sized`
  - const `WITNESS: W = W::MAKE`
- **`Identity`** — where `T: ?Sized`
  - const `TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`
  - type `Type = T`
- **`Instrument`**
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- **`Into<U>`** — where `U: From<T>`
  - `fn into(self) -> U`
- **`IntoEither`**
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`
- **`IntoShared<Shared>`** — where `Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`
- **`LayoutRaw`**
  - `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`
- **`MaybeSend`** (two implementations)
  - where `T: Send`
- **`Niching<NichedOption<T, N1>>`** — where `T: SharedNiching`, `N1: Niching`, `N2: Niching`
  - unsafe fn `is_niched(niched: *const NichedOption) -> bool`
  - fn `resolve_niched(out: Place<NichedOption>)`
- **`Pipe`** — where `T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`
- **`Pointable`**
  - const `ALIGN: usize`
  - type `Init = T`
  - unsafe fn `init(init: Self::Init) -> usize`
  - unsafe fn `deref<'a>(ptr: usize) -> &'a T`
  - unsafe fn `deref_mut<'a>(ptr: usize) -> &'a mut T`
  - unsafe fn `drop(ptr: usize)`
- **`Pointee`**
  - type `Metadata = ()`
- **`PolicyExt`** — where `T: ?Sized`
  - `fn and(self, other: P) -> And`
  - `fn or(self, other: P) -> Or`
- **`Same`**
  - type `Output = T`
- **`Tap`**
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
- **`TryConv`**
  - `fn try_conv(self) -> Result<T, Error>`
- **`TryFrom<U>`** — where `U: Into<T>`
  - type `Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- **`TryInto<U>`** — where `U: TryFrom<T>`
  - type `Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- **`TryInto<U>`** (async) — where `U: TryFrom<T>`
  - type `Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`
- **`VZip<V>`** — where `V: MultiLane`
  - `fn vzip(self) -> V`
- **`WithSubscriber`**
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
