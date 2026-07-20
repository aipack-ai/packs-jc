# IndexType

In `lancedb::index`.

Enum representing the type of an index.

```text
pub enum IndexType {
    IvfFlat,
    IvfSq,
    IvfPq,
    IvfRq,
    IvfHnswPq,
    IvfHnswSq,
    IvfHnswFlat,
    BTree,
    Bitmap,
    LabelList,
    FTS,
}
```

## Variants

- `IvfFlat`
- `IvfSq`
- `IvfPq`
- `IvfRq`
- `IvfHnswPq`
- `IvfHnswSq`
- `IvfHnswFlat`
- `BTree`
- `Bitmap`
- `LabelList`
- `FTS`

## Trait Implementations

### impl Clone for IndexType

- `fn clone(&self) -> IndexType`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for IndexType

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Deserialize<'de> for IndexType

- `fn deserialize<__D>(__deserializer: __D) -> Result<IndexType, __D::Error>` where `__D: Deserializer<'de>`

### impl Display for IndexType

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl FromStr for IndexType

- Associated type: `type Err = Error`
- `fn from_str(value: &str) -> Result<IndexType, Self::Err>`

### impl PartialEq for IndexType

- `fn eq(&self, other: &IndexType) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### impl StructuralPartialEq for IndexType

(No methods)

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- **impl Any for T** where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- **impl ArchivePointee for T**
  - Associated type: `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &...) -> <Pointee as Pointee>::Metadata`
- **impl Borrow<T> for T** where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- **impl BorrowMut<T> for T** where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- **impl CloneToUninit for T** where `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- **impl Conv for T**
  - `fn conv(self) -> T`
- **impl DropFlavorWrapper<T> for T**
  - Associated type: `type Flavor = MayDrop`
- **impl DynClone for T** where `T: Clone`
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- **impl FmtForward for T**
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`
- **impl From<T> for T**
  - `fn from(t: T) -> T`
- **impl FromRef<T> for T** where `T: Clone`
  - `fn from_ref(input: &T) -> T`
- **impl HasTypeWitness<W> for T** where `W: MakeTypeWitness`, `T: ?Sized`
  - Associated constant: `const WITNESS: W = W::MAKE`
- **impl Identity for T** where `T: ?Sized`
  - Associated constant: `const TYPE_EQ: TypeEq<Self, Self::Type> = ...`
  - Associated type: `type Type = T`
- **impl Instrument for T**
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- **impl Into<U> for T** where `U: From<T>`
  - `fn into(self) -> U`
- **impl IntoEither for T**
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`
- **impl IntoShared<Shared> for Unshared** where `Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`
- **impl LayoutRaw for T**
  - `fn layout_raw(_: <Pointee as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- **impl Niching<NichedOption<T, N1>> for N2** where `T: SharedNiching`, `N1: Niching`, `N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption) -> bool`
  - `fn resolve_niched(out: Place<NichedOption>)`
- **impl Pipe for T** where `T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`
- **impl Pointable for T**
  - Associated constant: `const ALIGN: usize`
  - Associated type: `type Init = T`
  - `unsafe fn init(init: T) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- **impl Pointee for T**
  - Associated type: `type Metadata = ()`
- **impl PolicyExt for T** where `T: ?Sized`
  - `fn and(self, other: P) -> And`
  - `fn or(self, other: P) -> Or`
- **impl Same for T**
  - Associated type: `type Output = T`
- **impl Tap for T**
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
- **impl ToOwned for T** where `T: Clone`
  - Associated type: `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- **impl ToString for T** where `T: Display + ?Sized`
  - `fn to_string(&self) -> String`
- **impl TryConv for T**
  - `fn try_conv(self) -> Result<T, E>`
- **impl TryFrom<U> for T** where `U: Into<T>`
  - Associated type: `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- **impl TryInto<U> for T** where `U: TryFrom<T>`
  - Associated type: `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- **impl TryInto<U> for T** (async) where `U: TryFrom<T>`
  - Associated type: `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Pin<Box<dyn Future<Result<U, Self::Error>> + 'async_trait>>`
- **impl VZip<V> for T** where `V: MultiLane`
  - `fn vzip(self) -> V`
- **impl WithSubscriber for T**
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
- **impl Allocation for T** where `T: RefUnwindSafe + Send + Sync`
  - (No methods)
- **impl DeserializeOwned for T** where `T: for<'de> Deserialize<'de>`
  - (No methods)
- **impl ErasedDestructor for T** where `T: 'static`
  - (No methods)
- **impl MaybeSend for T** where `T: Send`
  - (No methods)
- **impl MaybeSend for T** (second) where `T: Send`
  - (No methods)
- **impl ResultError for E** where `E: Send + Debug + Sync`
  - (No methods)
- **impl ResultType for T** where `T: Send + Clone + Sync + Debug`
  - (No methods)
