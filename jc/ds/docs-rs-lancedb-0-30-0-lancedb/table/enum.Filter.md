# Filter

**Module path**: `lancedb::table::Filter`

**Description**: Filters that can be used to limit the rows returned by a query.

## Definition

```rust
pub enum Filter {
    Sql(String),
    Datafusion(Expr),
}
```

## Variants

- `Sql(String)` — A SQL filter string.
- `Datafusion(Expr)` — A Datafusion logical expression (type `lancedb::expr::DfExpr`).

## Auto Trait Implementations

- `!RefUnwindSafe`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

- **`Any`** for T where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- **`ArchivePointee`** for T
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &<ArchivePointee>::ArchivedMetadata) -> <Pointee>::Metadata`
- **`Borrow<T>`** for T where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- **`BorrowMut<T>`** for T where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- **`Conv`** for T
  - `fn conv(self) -> T` where `Self: Into<T>`
- **`DropFlavorWrapper<T>`** for T
  - `type Flavor = MayDrop`
- **`FmtForward`** for T
  - `fn fmt_binary(self) -> FmtBinary` where `Self: Binary`
  - `fn fmt_display(self) -> FmtDisplay` where `Self: Display`
  - `fn fmt_lower_exp(self) -> FmtLowerExp` where `Self: LowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex` where `Self: LowerHex`
  - `fn fmt_octal(self) -> FmtOctal` where `Self: Octal`
  - `fn fmt_pointer(self) -> FmtPointer` where `Self: Pointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp` where `Self: UpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex` where `Self: UpperHex`
  - `fn fmt_list(self) -> FmtList` where `&'a Self: for<'a> IntoIterator`
- **`From<T>`** for T
  - `fn from(t: T) -> T`
- **`HasTypeWitness<W>`** for T where `W: MakeTypeWitness`, `T: ?Sized`
  - `const WITNESS: W = W::MAKE`
- **`Identity`** for T where `T: ?Sized`
  - `type Type = T`
  - `const TYPE_EQ: TypeEq<T, T> = TypeEq::NEW`
- **`Instrument`** for T
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- **`Into<U>`** for T where `U: From<T>`
  - `fn into(self) -> U`
- **`IntoEither`** for T
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either` where `F: FnOnce(&Self) -> bool`
- **`IntoShared<Shared>`** for Unshared where `Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`
- **`LayoutRaw`** for T
  - `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`
- **`Niching<NichedOption<T, N1>>`** for N2 where `T: SharedNiching`, `N1: Niching`, `N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption<...>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<...>>)`
- **`Pipe`** for T where `T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` where `Self: Sized`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R` where `R: 'a`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R` where `R: 'a`
  - `fn pipe_borrow<'a, B: ?Sized, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` where `Self: Borrow<B>`, `R: 'a`
  - `fn pipe_borrow_mut<'a, B: ?Sized, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` where `Self: BorrowMut<B>`, `R: 'a`
  - `fn pipe_as_ref<'a, U: ?Sized, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` where `Self: AsRef<U>`, `R: 'a`
  - `fn pipe_as_mut<'a, U: ?Sized, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` where `Self: AsMut<U>`, `R: 'a`
  - `fn pipe_deref<'a, T: ?Sized, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` where `Self: Deref<Target=T>`, `R: 'a`
  - `fn pipe_deref_mut<'a, T: ?Sized, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` where `Self: DerefMut + Deref`, `R: 'a`
- **`Pointable`** for T
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: T) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- **`Pointee`** for T
  - `type Metadata = ()`
- **`PolicyExt`** for T where `T: ?Sized`
  - `fn and(self, other: P) -> And` where `T: Policy`, `P: Policy`
  - `fn or(self, other: P) -> Or` where `T: Policy`, `P: Policy`
- **`Same`** for T
  - `type Output = T`
- **`Tap`** for T
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` where `Self: Borrow<B>`, `B: ?Sized`
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` where `Self: BorrowMut<B>`, `B: ?Sized`
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` where `Self: AsRef<R>`, `R: ?Sized`
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` where `Self: AsMut<R>`, `R: ?Sized`
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` where `Self: Deref<Target=T>`, `T: ?Sized`
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` where `Self: DerefMut + Deref`, `T: ?Sized`
  - Debug variants: `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`
- **`TryConv`** for T
  - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>` where `Self: TryInto<T>`
- **`TryFrom<U>`** for T where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`
- **`TryInto<U>`** for T where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
- **`TryInto<U>`** (async) for T where `U: TryFrom` (async)
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>>` where `T: 'async_trait`
- **`VZip<V>`** for T where `V: MultiLane`
  - `fn vzip(self) -> V`
- **`WithSubscriber`** for T
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch` where `S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch`
- **`ErasedDestructor`** for T where `T: 'static`
- **`MaybeSend`** for T where `T: Send` (two separate implementations)
