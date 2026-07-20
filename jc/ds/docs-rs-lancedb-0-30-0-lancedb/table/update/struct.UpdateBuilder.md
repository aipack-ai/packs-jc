# UpdateBuilder

**A builder for configuring a [`crate::table::Table::update`](../struct.Table.html#method.update "method lancedb::table::Table::update") operation.**

```text
pub struct UpdateBuilder { /* private fields */ }
```

## Implementations

### `impl UpdateBuilder`

- `pub fn only_if(self, filter: impl Into<String>) -> Self`
  - Limits the update operation to rows matching the given filter.

- `pub fn column(self, column_name: impl Into<String>, update_expr: impl Into<String>) -> Self`
  - Specifies a column to update. The `update_expr` is an SQL expression evaluated against the previous row’s value.

- `pub async fn execute(self) -> Result<UpdateResult>`
  - Executes the update operation.

## Trait Implementations

### `impl Clone for UpdateBuilder`

- `fn clone(&self) -> UpdateBuilder`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for UpdateBuilder`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

## Auto Trait Implementations

- `impl Freeze for UpdateBuilder`
- `impl !RefUnwindSafe for UpdateBuilder`
- `impl Send for UpdateBuilder`
- `impl Sync for UpdateBuilder`
- `impl Unpin for UpdateBuilder`
- `impl UnsafeUnpin for UpdateBuilder`
- `impl !UnwindSafe for UpdateBuilder`

## Blanket Implementations

- `impl<T: 'static + ?Sized> Any for T`
  - `fn type_id(&self) -> TypeId`
- `impl<T: ?Sized> ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &ArchivedMetadata) -> Pointee::Metadata`
- `impl<T: ?Sized> Borrow<T> for T`
  - `fn borrow(&self) -> &T`
- `impl<T: ?Sized> BorrowMut<T> for T`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl<T: Clone> CloneToUninit for T`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl<T> Conv for T`
  - `fn conv(self) -> T where Self: Into<T>`
- `impl<T> DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`
- `impl<T: Clone> DynClone for T`
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- `impl<T> FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary`, `fn fmt_display(self) -> FmtDisplay`, `fn fmt_lower_exp(self) -> FmtLowerExp`, `fn fmt_lower_hex(self) -> FmtLowerHex`, `fn fmt_octal(self) -> FmtOctal`, `fn fmt_pointer(self) -> FmtPointer`, `fn fmt_upper_exp(self) -> FmtUpperExp`, `fn fmt_upper_hex(self) -> FmtUpperHex`, `fn fmt_list(self) -> FmtList`
- `impl<T> From<T> for T`
  - `fn from(t: T) -> T`
- `impl<T: Clone> FromRef<T> for T`
  - `fn from_ref(input: &T) -> T`
- `impl<T: ?Sized, W: MakeTypeWitness> HasTypeWitness<W> for T`
  - `const WITNESS: W = W::MAKE`
- `impl<T: ?Sized> Identity for T`
  - `const TYPE_EQ: TypeEq<T> = TypeEq::NEW`
  - `type Type = T`
- `impl<T> Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`
- `impl<T, U: From<T>> Into<U> for T`
  - `fn into(self) -> U`
- `impl<T> IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`
- `impl<Unshared, Shared: FromUnshared> IntoShared<Shared> for Unshared`
  - `fn into_shared(self) -> Shared`
- `impl<T> LayoutRaw for T`
  - `fn layout_raw(_: Pointee::Metadata) -> Result<Layout, LayoutError>`
- `impl<T, N1, N2> Niching<NichedOption<T, N1>> for N2`
  - `unsafe fn is_niched(niched: *const NichedOption) -> bool`
  - `fn resolve_niched(out: Place<NichedOption>)`
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
  - `unsafe fn init(init: T) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl<T> Pointee for T`
  - `type Metadata = ()`
- `impl<T: ?Sized> PolicyExt for T`
  - `fn and(self, other: P) -> And where T: Policy, P: Policy`
  - `fn or(self, other: P) -> Or where T: Policy, P: Policy`
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
  - and debug-only variants (`tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`)
- `impl<T: Clone> ToOwned for T`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `impl<T> TryConv for T`
  - `fn try_conv(self) -> Result<T, Error>`
- `impl<T, U: Into<T>> TryFrom<U> for T`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`
- `impl<T, U: TryFrom<T>> TryInto<U> for T`
  - `type Error = U::Error`
  - `fn try_into(self) -> Result<U, U::Error>`
- `impl<T, U: TryFrom<T>> TryInto<U> for T` (async-convert)
  - `type Error = U::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, U::Error>> + 'async_trait>>`
- `impl<T, V: MultiLane> VZip<V> for T`
  - `fn vzip(self) -> V`
- `impl<T> WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
- `impl<T: 'static> ErasedDestructor for T`
- `impl<T: Send> MaybeSend for T` (opendal-core)
- `impl<T: Send> MaybeSend for T` (reqsign-core)
- `impl<E: Send + Debug + Sync> ResultError for E`
- `impl<T: Send + Clone + Sync + Debug> ResultType for T`
