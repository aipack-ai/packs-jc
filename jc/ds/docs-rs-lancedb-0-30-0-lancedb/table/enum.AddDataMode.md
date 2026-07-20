# AddDataMode

**Module:** [lancedb::table](index.html) (version 0.30.0)

## Definition

```rust
pub enum AddDataMode {
    Append,
    Overwrite,
}
```

## Variants

- **Append** – Rows will be appended to the table (the default)
- **Overwrite** – The existing table will be overwritten with the new data

## Trait Implementations

### impl Clone for AddDataMode

- `fn clone(&self) -> AddDataMode`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for AddDataMode

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Default for AddDataMode

- `fn default() -> AddDataMode`

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- **impl Any for T** where T: 'static + ?Sized
   - `fn type_id(&self) -> TypeId`
- **impl ArchivePointee for T**
   - `type ArchivedMetadata = ()`
   - `fn pointer_metadata( _: &ArchivePointee>::ArchivedMetadata ) -> Pointee>::Metadata`
- **impl Borrow for T** where T: ?Sized
   - `fn borrow(&self) -> &T`
- **impl BorrowMut for T** where T: ?Sized
   - `fn borrow_mut(&mut self) -> &mut T`
- **impl CloneToUninit for T** where T: Clone
   - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- **impl Conv for T**
   - `fn conv(self) -> T` where Self: Into<T>
- **impl DropFlavorWrapper for T**
   - `type Flavor = MayDrop`
- **impl DynClone for T** where T: Clone
   - `fn __clone_box(&self, _: Private) -> *mut ()`
- **impl FmtForward for T**
   - `fn fmt_binary(self) -> FmtBinary` where Self: Binary
   - `fn fmt_display(self) -> FmtDisplay` where Self: Display
   - `fn fmt_lower_exp(self) -> FmtLowerExp` where Self: LowerExp
   - `fn fmt_lower_hex(self) -> FmtLowerHex` where Self: LowerHex
   - `fn fmt_octal(self) -> FmtOctal` where Self: Octal
   - `fn fmt_pointer(self) -> FmtPointer` where Self: Pointer
   - `fn fmt_upper_exp(self) -> FmtUpperExp` where Self: UpperExp
   - `fn fmt_upper_hex(self) -> FmtUpperHex` where Self: UpperHex
   - `fn fmt_list(self) -> FmtList` where &'a Self: for<'a> IntoIterator
- **impl From<T> for T**
   - `fn from(t: T) -> T`
- **impl FromRef for T** where T: Clone
   - `fn from_ref(input: &T) -> T`
- **impl HasTypeWitness for T** where W: MakeTypeWitness, T: ?Sized
   - `const WITNESS: W = W::MAKE`
- **impl Identity for T** where T: ?Sized
   - `const TYPE_EQ: TypeEq = TypeEq::NEW`
   - `type Type = T`
- **impl Instrument for T**
   - `fn instrument(self, span: Span) -> Instrumented`
   - `fn in_current_span(self) -> Instrumented`
- **impl Into<U> for T** where U: From<T>
   - `fn into(self) -> U`
- **impl IntoEither for T**
   - `fn into_either(self, into_left: bool) -> Either`
   - `fn into_either_with(self, into_left: F) -> Either` where F: FnOnce(&Self) -> bool
- **impl IntoShared for Unshared** where Shared: FromUnshared
   - `fn into_shared(self) -> Shared`
- **impl LayoutRaw for T**
   - `fn layout_raw(_: Pointee>::Metadata) -> Result<Layout, LayoutError>`
- **impl Niching<NichedOption<T, N1>> for N2** where T: SharedNiching, N1: Niching, N2: Niching
   - `unsafe fn is_niched(niched: *const NichedOption) -> bool`
   - `fn resolve_niched(out: Place<NichedOption>)`
- **impl Pipe for T** where T: ?Sized
   - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` where Self: Sized
   - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
   - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
   - `fn pipe_borrow<'a, B: ?Sized, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` where Self: Borrow<B>
   - `fn pipe_borrow_mut<'a, B: ?Sized, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` where Self: BorrowMut<B>
   - `fn pipe_as_ref<'a, U: ?Sized, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` where Self: AsRef<U>
   - `fn pipe_as_mut<'a, U: ?Sized, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` where Self: AsMut<U>
   - `fn pipe_deref<'a, T: ?Sized, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` where Self: Deref<Target=T>
   - `fn pipe_deref_mut<'a, T: ?Sized, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` where Self: DerefMut + Deref<Target=T>
- **impl Pointable for T**
   - `const ALIGN: usize`
   - `type Init = T`
   - `unsafe fn init(init: T) -> usize`
   - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
   - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
   - `unsafe fn drop(ptr: usize)`
- **impl Pointee for T**
   - `type Metadata = ()`
- **impl PolicyExt for T** where T: ?Sized
   - `fn and(self, other: P) -> And` where T: Policy, P: Policy
   - `fn or(self, other: P) -> Or` where T: Policy, P: Policy
- **impl Same for T**
   - `type Output = T`
- **impl Tap for T**
   - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
   - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
   - `fn tap_borrow<B: ?Sized>(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>
   - `fn tap_borrow_mut<B: ?Sized>(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>
   - `fn tap_ref<R: ?Sized>(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>
   - `fn tap_ref_mut<R: ?Sized>(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>
   - `fn tap_deref<T: ?Sized>(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<Target=T>
   - `fn tap_deref_mut<T: ?Sized>(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut + Deref<Target=T>
   - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
   - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
   - `fn tap_borrow_dbg<B: ?Sized>(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>
   - `fn tap_borrow_mut_dbg<B: ?Sized>(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>
   - `fn tap_ref_dbg<R: ?Sized>(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>
   - `fn tap_ref_mut_dbg<R: ?Sized>(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>
   - `fn tap_deref_dbg<T: ?Sized>(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<Target=T>
   - `fn tap_deref_mut_dbg<T: ?Sized>(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut + Deref<Target=T>
- **impl ToOwned for T** where T: Clone
   - `type Owned = T`
   - `fn to_owned(&self) -> T`
   - `fn clone_into(&self, target: &mut T)`
- **impl TryConv for T**
   - `fn try_conv(self) -> Result<T, Error>` where Self: TryInto<T>
- **impl TryFrom<U> for T** where U: Into<T>
   - `type Error = Infallible`
   - `fn try_from(value: U) -> Result<T, Self::Error>`
- **impl TryInto<U> for T** where U: TryFrom<T>
   - `type Error = <U as TryFrom<T>>::Error`
   - `fn try_into(self) -> Result<U, Self::Error>`
- **impl TryInto<U> for T (async)** where U: TryFrom<T>
   - `type Error = <U as TryFrom<T>>::Error`
   - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Result<U, Self::Error>> + 'async_trait>>` where T: 'async_trait
- **impl VZip for T** where V: MultiLane
   - `fn vzip(self) -> V`
- **impl WithSubscriber for T**
   - `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: Into<Dispatch>
   - `fn with_current_subscriber(self) -> WithDispatch`
- **impl Allocation for T** where T: RefUnwindSafe + Send + Sync
   - (no methods listed)
- **impl ErasedDestructor for T** where T: 'static
   - (no methods listed)
- **impl MaybeSend for T** where T: Send (two occurrences)
   - (no methods listed)
- **impl ResultError for E** where E: Send + Debug + Sync
   - (no methods listed)
- **impl ResultType for T** where T: Send + Clone + Sync + Debug
   - (no methods listed)
