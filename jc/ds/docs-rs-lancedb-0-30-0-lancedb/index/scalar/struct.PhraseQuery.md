# PhraseQuery

In `lancedb::index::scalar`

## Struct Definition

```text
pub struct PhraseQuery {
    pub column: Option<String>,
    pub terms: String,
    pub slop: u32,
}
```

## Fields

- `column: Option<String>` - optional column name
- `terms: String` - the phrase terms
- `slop: u32` - allowed positional gap

## Implementations

### `impl PhraseQuery`

- `pub fn new(terms: String) -> PhraseQuery`
- `pub fn with_column(self, column: Option<String>) -> PhraseQuery`
- `pub fn with_slop(self, slop: u32) -> PhraseQuery`

## Trait Implementations

### `impl Clone for PhraseQuery`

- `fn clone(&self) -> PhraseQuery`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for PhraseQuery`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### `impl<'de> Deserialize<'de> for PhraseQuery`

- `fn deserialize<__D>(__deserializer: __D) -> Result<PhraseQuery, __D::Error>` where `__D: Deserializer<'de>`

### `impl From<PhraseQuery> for FtsQuery`

- `fn from(query: PhraseQuery) -> FtsQuery`

### `impl FtsQueryNode for PhraseQuery`

- `fn columns(&self) -> HashSet<String>`

### `impl JsonParser for PhraseQuery`

- `fn from_json(value: &Value) -> Result<PhraseQuery, Error>`

### `impl PartialEq for PhraseQuery`

- `fn eq(&self, other: &PhraseQuery) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl Serialize for PhraseQuery`

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where `__S: Serializer`

### `impl StructuralPartialEq for PhraseQuery`

(no methods)

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `impl Any for T` where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId`

### `impl ArchivePointee for T`

- `type ArchivedMetadata = ()`
- `fn pointer_metadata(_: &ArchivePointee::ArchivedMetadata) -> Pointee::Metadata`

### `impl Borrow<T> for T` where T: ?Sized

- `fn borrow(&self) -> &T`

### `impl BorrowMut<T> for T` where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T`

### `impl CloneToUninit for T` where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### `impl Conv for T`

- `fn conv(self) -> T` where Self: Into<T>

### `impl DropFlavorWrapper<T> for T`

- `type Flavor = MayDrop`

### `impl DynClone for T` where T: Clone

- `fn __clone_box(&self, _: Private) -> *mut ()`

### `impl FmtForward for T`

- `fn fmt_binary(self) -> FmtBinary` where Self: Binary
- `fn fmt_display(self) -> FmtDisplay` where Self: Display
- `fn fmt_lower_exp(self) -> FmtLowerExp` where Self: LowerExp
- `fn fmt_lower_hex(self) -> FmtLowerHex` where Self: LowerHex
- `fn fmt_octal(self) -> FmtOctal` where Self: Octal
- `fn fmt_pointer(self) -> FmtPointer` where Self: Pointer
- `fn fmt_upper_exp(self) -> FmtUpperExp` where Self: UpperExp
- `fn fmt_upper_hex(self) -> FmtUpperHex` where Self: UpperHex
- `fn fmt_list(self) -> FmtList` where &'a Self: IntoIterator

### `impl From<T> for T`

- `fn from(t: T) -> T`

### `impl FromRef<T> for T` where T: Clone

- `fn from_ref(input: &T) -> T`

### `impl HasTypeWitness<W> for T` where W: MakeTypeWitness, T: ?Sized

- `const WITNESS: W = W::MAKE`

### `impl Identity for T` where T: ?Sized

- `const TYPE_EQ: TypeEq<Identity::Type> = TypeEq::NEW`
- `type Type = T`

### `impl Instrument for T`

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### `impl Into<U> for T` where U: From<T>

- `fn into(self) -> U`

### `impl IntoEither for T`

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### `impl IntoShared<Shared> for Unshared` where Shared: FromUnshared

- `fn into_shared(self) -> Shared`

### `impl LayoutRaw for T`

- `fn layout_raw(_: Pointee::Metadata) -> Result<Layout, LayoutError>`

### `impl Niching<NichedOption<T, N1>> for N2` where T: SharedNiching, N1: Niching, N2: Niching

- `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
- `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

### `impl Pipe for T` where T: ?Sized

- `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` where Self: Sized
- `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
- `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
- `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` where Self: Borrow<B>, B: 'a + ?Sized, R: 'a
- `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a
- `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` where Self: AsRef<U>, U: 'a + ?Sized, R: 'a
- `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` where Self: AsMut<U>, U: 'a + ?Sized, R: 'a
- `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` where Self: Deref<T>, T: 'a + ?Sized, R: 'a
- `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a

### `impl Pointable for T`

- `const ALIGN: usize`
- `type Init = T`
- `unsafe fn init(init: Self::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### `impl Pointee for T`

- `type Metadata = ()`

### `impl PolicyExt for T` where T: ?Sized

- `fn and(self, other: P) -> And` where T: Policy, P: Policy
- `fn or(self, other: P) -> Or` where T: Policy, P: Policy

### `impl Same for T`

- `type Output = T`

### `impl Tap for T`

- `fn tap(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>, B: ?Sized
- `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>, B: ?Sized
- `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>, R: ?Sized
- `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>, R: ?Sized
- `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<T>, T: ?Sized
- `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut + Deref, T: ?Sized
- `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>, B: ?Sized
- `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>, B: ?Sized
- `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>, R: ?Sized
- `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>, R: ?Sized
- `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<T>, T: ?Sized
- `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut + Deref, T: ?Sized

### `impl ToOwned for T` where T: Clone

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### `impl TryConv for T`

- `fn try_conv(self) -> Result<T, T::Error>` where Self: TryInto<T>

### `impl TryFrom<U> for T` where U: Into<T>

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### `impl TryInto<U> for T` where U: TryFrom<T>

- `type Error = U::Error`
- `fn try_into(self) -> Result<U, Self::Error>`

### `impl TryInto<U> for T` where U: TryFrom<T> (async)

- `type Error = U::Error`
- `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, U::Error>> + 'async_trait>>` where T: 'async_trait

### `impl VZip<V> for T` where V: MultiLane

- `fn vzip(self) -> V`

### `impl WithSubscriber for T`

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: Into<Dispatch>
- `fn with_current_subscriber(self) -> WithDispatch`

### Marker Blanket Implementations

- `impl Allocation for T` where T: RefUnwindSafe + Send + Sync
- `impl DeserializeOwned for T` where T: for<'de> Deserialize<'de>
- `impl ErasedDestructor for T` where T: 'static
- `impl MaybeSend for T` where T: Send (two occurrences)
- `impl ResultError for E` where E: Send + Debug + Sync
- `impl ResultType for T` where T: Send + Clone + Sync + Debug
