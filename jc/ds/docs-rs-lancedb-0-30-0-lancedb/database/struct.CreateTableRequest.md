# CreateTableRequest (lancedb::database)

## Struct Definition

```text
pub struct CreateTableRequest {
    pub name: String,
    pub namespace_path: Vec<String>,
    pub data: Box<dyn Scannable>,
    pub mode: CreateTableMode,
    pub write_options: WriteOptions,
    pub location: Option<String>,
    pub namespace_client: Option<Arc<dyn LanceNamespace>>,
}
```

A request to create a table.

## Fields

- `name`: `String` - The name of the new table
- `namespace_path`: `Vec<String>` - The namespace path to create the table in. Empty list represents root namespace.
- `data`: `Box<dyn Scannable>` - Initial data to write to the table, can be empty.
- `mode`: `CreateTableMode` - The mode to use when creating the table
- `write_options`: `WriteOptions` - Options to use when writing data (only used if `data` is not None)
- `location`: `Option<String>` - Optional custom location for the table. If not provided, the database will derive a location based on its URI and the table name.
- `namespace_client`: `Option<Arc<dyn LanceNamespace>>` - Optional namespace client for server-side query execution.

## Implementations

### `impl CreateTableRequest`

- `pub fn new(name: String, data: Box<dyn Scannable>) -> Self`

## Auto Trait Implementations

- `impl Freeze for CreateTableRequest`
- `impl !RefUnwindSafe for CreateTableRequest`
- `impl Send for CreateTableRequest`
- `impl !Sync for CreateTableRequest`
- `impl Unpin for CreateTableRequest`
- `impl UnsafeUnpin for CreateTableRequest`
- `impl !UnwindSafe for CreateTableRequest`

## Blanket Implementations

- `impl<T: 'static + ?Sized> Any for T`
  - `fn type_id(&self) -> TypeId`
- `impl<T> ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata( _: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata`
- `impl<T: ?Sized> Borrow<T> for T`
  - `fn borrow(&self) -> &T`
- `impl<T: ?Sized> BorrowMut<T> for T`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl<T> Conv for T`
  - `fn conv(self) -> T`
- `impl<T> DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`
- `impl<T> FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`
- `impl<T> From<T> for T`
  - `fn from(t: T) -> T`
- `impl<T: ?Sized, W: MakeTypeWitness> HasTypeWitness<W> for T`
  - `const WITNESS: W = W::MAKE`
- `impl<T: ?Sized> Identity for T`
  - `const TYPE_EQ: TypeEq<Identity::Type> = TypeEq::NEW`
  - `type Type = T`
- `impl<T> Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`
- `impl<T, U> Into<U> for T where U: From<T>`
  - `fn into(self) -> U`
- `impl<T> IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either<Self, Self>`
  - `fn into_either_with(self, into_left: F) -> Either<Self, Self>`
- `impl<Unshared, Shared> IntoShared<Shared> for Unshared where Shared: FromUnshared<Unshared>`
  - `fn into_shared(self) -> Shared`
- `impl<T> LayoutRaw for T`
  - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `impl<T, N1, N2> Niching<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching<N2>, N2: Niching<NichedOption<T, N1>>`
  - `unsafe fn is_niched(niched: *const NichedOption<T>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T>>)`
- `impl<T: ?Sized> Pipe for T`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`
- `impl<T> Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl<T> Pointee for T`
  - `type Metadata = ()`
- `impl<T: ?Sized> PolicyExt for T`
  - `fn and(self, other: P) -> And<T, P>`
  - `fn or(self, other: P) -> Or<T, P>`
- `impl<T> Same for T`
  - `type Output = T`
- `impl<T> Tap for T`
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
- `impl<T> TryConv for T`
  - `fn try_conv(self) -> Result<T, Error>`
- `impl<T, U> TryFrom<U> for T where U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl<T, U> TryInto<U> for T where U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- `impl<T, U> TryInto<U> for T where U: TryFrom<T>` (async)
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`
- `impl<T, V> VZip<V> for T where V: MultiLane`
  - `fn vzip(self) -> V`
- `impl<T> WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
- `impl<T: 'static> ErasedDestructor for T`
- `impl<T: Send> MaybeSend for T`
