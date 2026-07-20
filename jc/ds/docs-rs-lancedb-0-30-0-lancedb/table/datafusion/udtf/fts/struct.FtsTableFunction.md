# FtsTableFunction

**Module:** lancedb::table::datafusion::udtf::fts

**Description:** Full-Text Search table function that operates on LanceDB tables

**Source:** [Source](https://github.com/lancedb/lancedb/blob/0.30.0/lancedb/src/table/datafusion/udtf/fts.rs#L28-L30)

```
pub struct FtsTableFunction { /* private fields */ }
```

## Implementations

### impl FtsTableFunction

```
pub fn new(resolver: Arc<dyn TableResolver>) -> Self
```

## Trait Implementations

### impl Debug for FtsTableFunction

```
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### impl TableFunctionImpl for FtsTableFunction

```
fn call(&self, exprs: &[DfExpr]) -> DataFusionResult<Arc<dyn TableProvider>>
```

## Auto Trait Implementations

- impl Freeze for FtsTableFunction
- impl !RefUnwindSafe for FtsTableFunction
- impl Send for FtsTableFunction
- impl Sync for FtsTableFunction
- impl Unpin for FtsTableFunction
- impl UnsafeUnpin for FtsTableFunction
- impl !UnwindSafe for FtsTableFunction

## Blanket Implementations

- impl Any for T where T: 'static + ?Sized
  - `fn type_id(&self) -> TypeId`
- impl ArchivePointee for T
  - type ArchivedMetadata = ()
  - `fn pointer_metadata(_: &<T as ArchivePointee>::ArchivedMetadata) -> <<T as Pointee>::Metadata>`
- impl Borrow<T> for T where T: ?Sized
  - `fn borrow(&self) -> &T`
- impl BorrowMut<T> for T where T: ?Sized
  - `fn borrow_mut(&mut self) -> &mut T`
- impl Conv for T
  - `fn conv(self) -> T where Self: Into<T>`
- impl DropFlavorWrapper<T> for T
  - type Flavor = MayDrop
- impl FmtForward for T
  - `fn fmt_binary(self) -> FmtBinary where Self: Binary`
  - `fn fmt_display(self) -> FmtDisplay where Self: Display`
  - `fn fmt_lower_exp(self) -> FmtLowerExp where Self: LowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex where Self: LowerHex`
  - `fn fmt_octal(self) -> FmtOctal where Self: Octal`
  - `fn fmt_pointer(self) -> FmtPointer where Self: Pointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp where Self: UpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex where Self: UpperHex`
  - `fn fmt_list(self) -> FmtList where &'a Self: for<'a> IntoIterator`
- impl From<T> for T
  - `fn from(t: T) -> T`
- impl HasTypeWitness<W> for T where W: MakeTypeWitness, T: ?Sized
  - const WITNESS: W = W::MAKE
- impl Identity for T where T: ?Sized
  - const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW
  - type Type = T
- impl Instrument for T
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- impl Into<U> for T where U: From<T>
  - `fn into(self) -> U`
- impl IntoEither for T
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`
- impl IntoShared<Shared> for Unshared where Shared: FromUnshared
  - `fn into_shared(self) -> Shared`
- impl LayoutRaw for T
  - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- impl Niching<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching, N2: Niching
  - unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- impl Pipe for T where T: ?Sized
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R where Self: Sized`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R where R: 'a`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R where R: 'a`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R where Self: Borrow<B>, B: 'a + ?Sized, R: 'a`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R where Self: AsRef<U>, U: 'a + ?Sized, R: 'a`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R where Self: AsMut<U>, U: 'a + ?Sized, R: 'a`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R where Self: Deref<Target = T>, T: 'a + ?Sized, R: 'a`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R where Self: DerefMut + Deref<Target = T>, T: 'a + ?Sized, R: 'a`
- impl Pointable for T
  - const ALIGN: usize
  - type Init = T
  - unsafe fn init(init: <Self as Pointable>::Init) -> usize
  - unsafe fn deref<'a>(ptr: usize) -> &'a T
  - unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
  - unsafe fn drop(ptr: usize)
- impl Pointee for T
  - type Metadata = ()
- impl PolicyExt for T where T: ?Sized
  - `fn and(self, other: P) -> And<T, P> where T: Policy, P: Policy`
  - `fn or(self, other: P) -> Or<T, P> where T: Policy, P: Policy`
- impl Same for T
  - type Output = T
- impl Tap for T
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow<B>(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`
  - `fn tap_borrow_mut<B>(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`
  - `fn tap_ref<R>(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`
  - `fn tap_ref_mut<R>(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`
  - `fn tap_deref<T>(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized`
  - `fn tap_deref_mut<T>(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref<Target = T>, T: ?Sized`
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg<B>(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`
  - `fn tap_borrow_mut_dbg<B>(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`
  - `fn tap_ref_dbg<R>(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`
  - `fn tap_ref_mut_dbg<R>(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`
  - `fn tap_deref_dbg<T>(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized`
  - `fn tap_deref_mut_dbg<T>(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref<Target = T>, T: ?Sized`
- impl TryConv for T
  - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error> where Self: TryInto<T>`
- impl TryFrom<U> for T where U: Into<T>
  - type Error = Infallible
  - `fn try_from(value: U) -> Result<T, <Self as TryFrom<U>>::Error>`
- impl TryInto<U> for T where U: TryFrom<T>
  - type Error = <U as TryFrom<T>>::Error
  - `fn try_into(self) -> Result<U, <Self as TryInto<U>>::Error>`
- impl TryInto<U> for T where U: TryFrom<T>
  - type Error = <U as TryFrom<T>>::Error
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>> where T: 'async_trait`
- impl VZip<V> for T where V: MultiLane
  - `fn vzip(self) -> V`
- impl WithSubscriber for T
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch`
- impl ErasedDestructor for T where T: 'static
- impl MaybeSend for T where T: Send (from opendal-core)
- impl MaybeSend for T where T: Send (from reqsign-core)
- impl ResultError for E where E: Send + Debug + Sync
