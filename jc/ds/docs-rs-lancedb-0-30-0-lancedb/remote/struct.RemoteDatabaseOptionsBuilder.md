# RemoteDatabaseOptionsBuilder in lancedb::remote

## Struct Definition

```text
pub struct RemoteDatabaseOptionsBuilder { /* private fields */ }
```

## Implementations

### Associated Functions

- `pub fn new() -> Self`

### Methods

- `pub fn api_key(self, api_key: String) -> Self`
  - Set the LanceDB Cloud API key.
  - **Arguments:**
    - `api_key` - The LanceDB Cloud API key

- `pub fn region(self, region: String) -> Self`
  - Set the LanceDB Cloud region.
  - **Arguments:**
    - `region` - The LanceDB Cloud region

- `pub fn host_override(self, host_override: String) -> Self`
  - Set the LanceDB Enterprise host override.
  - **Arguments:**
    - `host_override` - The LanceDB Enterprise host override

## Trait Implementations

### Clone

- `fn clone(&self) -> RemoteDatabaseOptionsBuilder`
- `fn clone_from(&mut self, source: &Self)`

### Debug

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### Default

- `fn default() -> RemoteDatabaseOptionsBuilder`

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
    - `type ArchivedMetadata = ()`
    - `fn pointer_metadata(_: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata`

- `impl Borrow<T> for T` where T: ?Sized
    - `fn borrow(&self) -> &T`

- `impl BorrowMut<T> for T` where T: ?Sized
    - `fn borrow_mut(&mut self) -> &mut T`

- `impl CloneToUninit for T` where T: Clone
    - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

- `impl Conv for T`
    - `fn conv(self) -> T`

- `impl DropFlavorWrapper<T> for T`
    - `type Flavor = MayDrop`

- `impl DynClone for T` where T: Clone
    - `fn __clone_box(&self, _: Private) -> *mut ()`

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

- `impl FromRef<T> for T` where T: Clone
    - `fn from_ref(input: &T) -> T`

- `impl HasTypeWitness<W> for T` where W: MakeTypeWitness, T: ?Sized
    - `const WITNESS: W = W::MAKE`

- `impl Identity for T` where T: ?Sized
    - `const TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW`
    - `type Type = T`

- `impl Instrument for T`
    - `fn instrument(self, span: Span) -> Instrumented<Self>`
    - `fn in_current_span(self) -> Instrumented<Self>`

- `impl Into<U> for T` where U: From<T>
    - `fn into(self) -> U`

- `impl IntoEither for T`
    - `fn into_either(self, into_left: bool) -> Either<Self, Self>`
    - `fn into_either_with(self, into_left: F) -> Either<Self, Self>`

- `impl IntoShared<Shared> for Unshared` where Shared: FromUnshared
    - `fn into_shared(self) -> Shared`

- `impl LayoutRaw for T`
    - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`

- `impl Niching<NichedOption<T, N1>> for N2`
    - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
    - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

- `impl Pipe for T` where T: ?Sized
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
    - `const ALIGN: usize`
    - `type Init = T`
    - `unsafe fn init(init: <T as Pointable>::Init) -> usize`
    - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
    - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
    - `unsafe fn drop(ptr: usize)`

- `impl Pointee for T`
    - `type Metadata = ()`

- `impl PolicyExt for T` where T: ?Sized
    - `fn and(self, other: P) -> And<Self, P>`
    - `fn or(self, other: P) -> Or<Self, P>`

- `impl Same for T`
    - `type Output = T`

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

- `impl ToOwned for T` where T: Clone
    - `type Owned = T`
    - `fn to_owned(&self) -> T`
    - `fn clone_into(&self, target: &mut T)`

- `impl TryConv for T`
    - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>`

- `impl TryFrom<U> for T` where U: Into<T>
    - `type Error = Infallible`
    - `fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>`

- `impl TryInto<U> for T` where U: TryFrom<T>
    - `type Error = <U as TryFrom<T>>::Error`
    - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`

- `impl TryInto<U> for T` (async-convert) where U: TryFrom<T>
    - `type Error = <U as TryFrom<T>>::Error`
    - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`

- `impl VZip<V> for T` where V: MultiLane
    - `fn vzip(self) -> V`

- `impl WithSubscriber for T`
    - `fn with_subscriber(self, subscriber: S) -> WithDispatch<Self>`
    - `fn with_current_subscriber(self) -> WithDispatch<Self>`

- `impl Allocation for T` where T: RefUnwindSafe + Send + Sync
    - (no methods listed in source; trait definition not expanded)

- `impl ErasedDestructor for T` where T: 'static
    - (no methods listed)

- `impl MaybeSend for T` where T: Send
    - (no methods listed; marker trait)

- `impl MaybeSend for T` (reqsign-core) where T: Send
    - (marker)

- `impl ResultError for E` where E: Send + Debug + Sync
    - (no methods)

- `impl ResultType for T` where T: Send + Clone + Sync + Debug
    - (no methods)
