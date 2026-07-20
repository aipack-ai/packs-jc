# OpenTableRequest in lancedb::database

- **Source:** [lancedb-0.30.0](../../lancedb/index.html) :: [lancedb](../../lancedb/index.html) :: [database](index.html) :: [OpenTableRequest](struct.OpenTableRequest.html)

A request to open a table.

## Struct Definition

```text
pub struct OpenTableRequest {
    pub name: String,
    pub namespace_path: Vec<String>,
    pub index_cache_size: Option<u32>,
    pub lance_read_params: Option<ReadParams>,
    pub location: Option<String>,
    pub namespace_client: Option<Arc<LanceNamespace>>,
    pub managed_versioning: Option<bool>,
}
```

## Fields

- `name: String` – The name of the table.
- `namespace_path: Vec<String>` – The namespace path to open the table from. Empty list represents root namespace.
- `index_cache_size: Option<u32>` – Optional index cache size.
- `lance_read_params: Option<ReadParams>` – Optional read parameters.
- `location: Option<String>` – Optional custom location for the table. If not provided, the database will derive a location based on its URI and the table name.
- `namespace_client: Option<Arc<LanceNamespace>>` – Optional namespace client for server-side query execution. When set, queries will be executed on the namespace server instead of locally.
- `managed_versioning: Option<bool>` – Whether managed versioning is enabled for this table. When `Some(true)`, the table will use namespace-managed commits instead of local commits. When `None` and `namespace_client` is provided, the value will be fetched from the namespace.

## Trait Implementations

### `Clone`

```text
impl Clone for OpenTableRequest {
    fn clone(&self) -> OpenTableRequest;
    fn clone_from(&mut self, source: &Self);
}
```

### `Debug`

```text
impl Debug for OpenTableRequest {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

### `Any` (blanket)

```text
impl Any for T
where T: 'static + ?Sized
{
    fn type_id(&self) -> TypeId;
}
```

### `ArchivePointee` (blanket)

```text
impl ArchivePointee for T {
    type ArchivedMetadata = ();
    fn pointer_metadata(_: &<Self as ArchivePointee>::ArchivedMetadata) -> <<Self as Pointee>::Metadata>;
}
```

### `Borrow` (blanket)

```text
impl Borrow for T
where T: ?Sized
{
    fn borrow(&self) -> &T;
}
```

### `BorrowMut` (blanket)

```text
impl BorrowMut for T
where T: ?Sized
{
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `CloneToUninit` (blanket)

```text
impl CloneToUninit for T
where T: Clone
{
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}
```

### `Conv` (blanket)

```text
impl Conv for T {
    fn conv(self) -> T
    where Self: Into<T>;
}
```

### `DropFlavorWrapper` (blanket)

```text
impl DropFlavorWrapper for T {
    type Flavor = MayDrop;
}
```

### `DynClone` (blanket)

```text
impl DynClone for T
where T: Clone
{
    fn __clone_box(&self, _: Private) -> *mut ();
}
```

### `FmtForward` (blanket)

```text
impl FmtForward for T {
    fn fmt_binary(self) -> FmtBinary
    where Self: Binary;
    fn fmt_display(self) -> FmtDisplay
    where Self: Display;
    fn fmt_lower_exp(self) -> FmtLowerExp
    where Self: LowerExp;
    fn fmt_lower_hex(self) -> FmtLowerHex
    where Self: LowerHex;
    fn fmt_octal(self) -> FmtOctal
    where Self: Octal;
    fn fmt_pointer(self) -> FmtPointer
    where Self: Pointer;
    fn fmt_upper_exp(self) -> FmtUpperExp
    where Self: UpperExp;
    fn fmt_upper_hex(self) -> FmtUpperHex
    where Self: UpperHex;
    fn fmt_list(self) -> FmtList
    where &'a Self: for<'a> IntoIterator;
}
```

### `From` (blanket)

```text
impl From for T {
    fn from(t: T) -> T;
}
```

### `FromRef` (blanket)

```text
impl FromRef for T
where T: Clone
{
    fn from_ref(input: &T) -> T;
}
```

### `HasTypeWitness` (blanket)

```text
impl HasTypeWitness for T
where W: MakeTypeWitness, T: ?Sized
{
    const WITNESS: W = W::MAKE;
}
```

### `Identity` (blanket)

```text
impl Identity for T
where T: ?Sized
{
    const TYPE_EQ: TypeEq<<Self as Identity>::Type> = TypeEq::NEW;
    type Type = T;
}
```

### `Instrument` (blanket)

```text
impl Instrument for T {
    fn instrument(self, span: Span) -> Instrumented;
    fn in_current_span(self) -> Instrumented;
}
```

### `Into` (blanket)

```text
impl Into for T
where U: From<T>
{
    fn into(self) -> U;
}
```

### `IntoEither` (blanket)

```text
impl IntoEither for T {
    fn into_either(self, into_left: bool) -> Either;
    fn into_either_with(self, into_left: F) -> Either
    where F: FnOnce(&Self) -> bool;
}
```

### `IntoShared` (blanket)

```text
impl IntoShared for Unshared
where Shared: FromUnshared
{
    fn into_shared(self) -> Shared;
}
```

### `LayoutRaw` (blanket)

```text
impl LayoutRaw for T {
    fn layout_raw(_: <<Self as Pointee>::Metadata>) -> Result<Layout, LayoutError>;
}
```

### `Niching` (blanket)

```text
impl<NichedOption<T, N1>> Niching for N2
where
    T: SharedNiching,
    N1: Niching,
    N2: Niching,
{
    unsafe fn is_niched(niched: *const NichedOption) -> bool;
    fn resolve_niched(out: Place<NichedOption>);
}
```

### `Pipe` (blanket)

```text
impl Pipe for T
where T: ?Sized
{
    fn pipe(self, func: impl FnOnce(Self) -> R) -> R
    where Self: Sized;
    fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R
    where R: 'a;
    fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R
    where R: 'a;
    fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R
    where Self: Borrow<B>, B: 'a + ?Sized, R: 'a;
    fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R
    where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a;
    fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R
    where Self: AsRef<U>, U: 'a + ?Sized, R: 'a;
    fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R
    where Self: AsMut<U>, U: 'a + ?Sized, R: 'a;
    fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R
    where Self: Deref, T: 'a + ?Sized, R: 'a;
    fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R
    where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a;
}
```

### `Pointable` (blanket)

```text
impl Pointable for T {
    const ALIGN: usize;
    type Init = T;
    unsafe fn init(init: <Self as Pointable>::Init) -> usize;
    unsafe fn deref<'a>(ptr: usize) -> &'a T;
    unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T;
    unsafe fn drop(ptr: usize);
}
```

### `Pointee` (blanket)

```text
impl Pointee for T {
    type Metadata = ();
}
```

### `PolicyExt` (blanket)

```text
impl PolicyExt for T
where T: ?Sized
{
    fn and(self, other: P) -> And
    where T: Policy, P: Policy;
    fn or(self, other: P) -> Or
    where T: Policy, P: Policy;
}
```

### `Same` (blanket)

```text
impl Same for T {
    type Output = T;
}
```

### `Tap` (blanket)

```text
impl Tap for T {
    fn tap(self, func: impl FnOnce(&Self)) -> Self;
    fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self;
    fn tap_borrow(self, func: impl FnOnce(&B)) -> Self
    where Self: Borrow<B>, B: ?Sized;
    fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self
    where Self: BorrowMut<B>, B: ?Sized;
    fn tap_ref(self, func: impl FnOnce(&R)) -> Self
    where Self: AsRef<R>, R: ?Sized;
    fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self
    where Self: AsMut<R>, R: ?Sized;
    fn tap_deref(self, func: impl FnOnce(&T)) -> Self
    where Self: Deref, T: ?Sized;
    fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self
    where Self: DerefMut + Deref, T: ?Sized;
    fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self;
    fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self;
    fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self
    where Self: Borrow<B>, B: ?Sized;
    fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self
    where Self: BorrowMut<B>, B: ?Sized;
    fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self
    where Self: AsRef<R>, R: ?Sized;
    fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self
    where Self: AsMut<R>, R: ?Sized;
    fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self
    where Self: Deref, T: ?Sized;
    fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self
    where Self: DerefMut + Deref, T: ?Sized;
}
```

### `ToOwned` (blanket)

```text
impl ToOwned for T
where T: Clone
{
    type Owned = T;
    fn to_owned(&self) -> T;
    fn clone_into(&self, target: &mut T);
}
```

### `TryConv` (blanket)

```text
impl TryConv for T {
    fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>
    where Self: TryInto<T>;
}
```

### `TryFrom` (blanket)

```text
impl TryFrom for T
where U: Into<T>
{
    type Error = Infallible;
    fn try_from(value: U) -> Result<T, <Self as TryFrom<U>>::Error>;
}
```

### `TryInto` (blanket)

```text
impl TryInto for T
where U: TryFrom<T>
{
    type Error = <U as TryFrom<T>>::Error;
    fn try_into(self) -> Result<U, <Self as TryInto<U>>::Error>;
}
```

### `TryInto` (async, blanket)

```text
impl TryInto for T
where U: TryFrom<T>
{
    type Error = <U as TryFrom<T>>::Error;
    fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <Self as TryInto<U>>::Error>> + 'async_trait>>
    where T: 'async_trait;
}
```

### `VZip` (blanket)

```text
impl VZip for T
where V: MultiLane
{
    fn vzip(self) -> V;
}
```

### `WithSubscriber` (blanket)

```text
impl WithSubscriber for T {
    fn with_subscriber(self, subscriber: S) -> WithDispatch
    where S: Into<Dispatch>;
    fn with_current_subscriber(self) -> WithDispatch;
}
```

### `ErasedDestructor` (blanket)

```text
impl ErasedDestructor for T
where T: 'static;
```

### `MaybeSend` (blanket)

```text
impl MaybeSend for T
where T: Send;
```

### `ResultError` (blanket)

```text
impl ResultError for E
where E: Send + Debug + Sync;
```

### `ResultType` (blanket)

```text
impl ResultType for T
where T: Send + Clone + Sync + Debug;
```

## Auto Trait Implementations

- `impl Freeze for OpenTableRequest`
- `impl !RefUnwindSafe for OpenTableRequest`
- `impl Send for OpenTableRequest`
- `impl Sync for OpenTableRequest`
- `impl Unpin for OpenTableRequest`
- `impl UnsafeUnpin for OpenTableRequest`
- `impl !UnwindSafe for OpenTableRequest`
