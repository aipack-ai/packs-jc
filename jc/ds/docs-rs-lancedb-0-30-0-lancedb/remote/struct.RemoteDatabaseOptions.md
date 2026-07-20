# RemoteDatabaseOptions

**Module:** [lancedb::remote](index.html)

Configuration options for a remote LanceDB database.

## Struct Definition

```text
pub struct RemoteDatabaseOptions {
    pub api_key: Option<String>,
    pub region: Option<String>,
    pub host_override: Option<String>,
    pub storage_options: HashMap<String, String>,
}
```

## Fields

- `api_key: Option<String>` — The LanceDB Cloud API key.
- `region: Option<String>` — The LanceDB Cloud region.
- `host_override: Option<String>` — The LanceDB Enterprise host override. Required when connecting to LanceDB Enterprise.
- `storage_options: HashMap<String, String>` — Storage options for the storage layer (e.g. S3, GCS, Azure). See [documentation](https://docs.lancedb.com/storage/).

## Implementations

### `impl RemoteDatabaseOptions`

- `pub fn builder() -> RemoteDatabaseOptionsBuilder`

## Trait Implementations

### `impl Clone for RemoteDatabaseOptions`

- `fn clone(&self) -> RemoteDatabaseOptions`
- `fn clone_from(&mut self, source: &Self)`

### `impl DatabaseOptions for RemoteDatabaseOptions`

- `fn serialize_into_map(&self, map: &mut HashMap<String, String>)`

### `impl Debug for RemoteDatabaseOptions`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Default for RemoteDatabaseOptions`

- `fn default() -> RemoteDatabaseOptions`

## Auto Trait Implementations

- `impl Freeze for RemoteDatabaseOptions`
- `impl RefUnwindSafe for RemoteDatabaseOptions`
- `impl Send for RemoteDatabaseOptions`
- `impl Sync for RemoteDatabaseOptions`
- `impl Unpin for RemoteDatabaseOptions`
- `impl UnsafeUnpin for RemoteDatabaseOptions`
- `impl UnwindSafe for RemoteDatabaseOptions`

## Blanket Implementations

### `impl Any for T` where `T: 'static + ?Sized`

- `fn type_id(&self) -> TypeId`

### `impl ArchivePointee for T`

- `type ArchivedMetadata = ()`
- `fn pointer_metadata(_: &<ArchivePointee>::ArchivedMetadata) -> <Pointee>::Metadata`

### `impl Borrow<T> for T` where `T: ?Sized`

- `fn borrow(&self) -> &T`

### `impl BorrowMut<T> for T` where `T: ?Sized`

- `fn borrow_mut(&mut self) -> &mut T`

### `impl CloneToUninit for T` where `T: Clone`

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### `impl Conv for T`

- `fn conv(self) -> T` where `Self: Into<T>`

### `impl DropFlavorWrapper<T> for T`

- `type Flavor = MayDrop`

### `impl DynClone for T` where `T: Clone`

- `fn __clone_box(&self, _: Private) -> *mut ()`

### `impl FmtForward for T`

- `fn fmt_binary(self) -> FmtBinary`
- `fn fmt_display(self) -> FmtDisplay`
- `fn fmt_lower_exp(self) -> FmtLowerExp`
- `fn fmt_lower_hex(self) -> FmtLowerHex`
- `fn fmt_octal(self) -> FmtOctal`
- `fn fmt_pointer(self) -> FmtPointer`
- `fn fmt_upper_exp(self) -> FmtUpperExp`
- `fn fmt_upper_hex(self) -> FmtUpperHex`
- `fn fmt_list(self) -> FmtList`

### `impl From<T> for T`

- `fn from(t: T) -> T`

### `impl FromRef<T> for T` where `T: Clone`

- `fn from_ref(input: &T) -> T`

### `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness, T: ?Sized`

- `const WITNESS: W = W::MAKE`

### `impl Identity for T` where `T: ?Sized`

- `const TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW`
- `type Type = T`

### `impl Instrument for T`

- `fn instrument(self, span: Span) -> Instrumented<Self>`
- `fn in_current_span(self) -> Instrumented<Self>`

### `impl Into<U> for T` where `U: From<T>`

- `fn into(self) -> U`

### `impl IntoEither for T`

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`

- `fn into_shared(self) -> Shared`

### `impl LayoutRaw for T`

- `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`

### `impl Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching, N1: Niching, N2: Niching`

- `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
- `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

### `impl Pipe for T` where `T: ?Sized`

- `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
- `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
- `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
- `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
- `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
- `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
- `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
- `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
- `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`

### `impl Pointable for T`

- `const ALIGN: usize`
- `type Init = T`
- `unsafe fn init(init: <Self as Pointable>::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### `impl Pointee for T`

- `type Metadata = ()`

### `impl PolicyExt for T` where `T: ?Sized`

- `fn and(self, other: P) -> And`
- `fn or(self, other: P) -> Or`

### `impl Same for T`

- `type Output = T`

### `impl Tap for T`

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

### `impl ToOwned for T` where `T: Clone`

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### `impl TryConv for T`

- `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>`

### `impl TryFrom<U> for T` where `U: Into<T>`

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### `impl TryInto<U> for T` where `U: TryFrom<T>`

- `type Error = <U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, Self::Error>`

### `impl TryInto<U> for T` where `U: TryFrom<T>` (async-convert)

- `type Error = <U as TryFrom<T>>::Error`
- `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`

### `impl VZip<V> for T` where `V: MultiLane`

- `fn vzip(self) -> V`

### `impl WithSubscriber for T`

- `fn with_subscriber(self, subscriber: S) -> WithDispatch`
- `fn with_current_subscriber(self) -> WithDispatch`

### `impl Allocation for T` where `T: RefUnwindSafe + Send + Sync`

### `impl ErasedDestructor for T` where `T: 'static`

### `impl MaybeSend for T` where `T: Send` (opendal)

### `impl MaybeSend for T` where `T: Send` (reqsign)

### `impl ResultError for E` where `E: Send + Debug + Sync`

### `impl ResultType for T` where `T: Send + Clone + Sync + Debug`
