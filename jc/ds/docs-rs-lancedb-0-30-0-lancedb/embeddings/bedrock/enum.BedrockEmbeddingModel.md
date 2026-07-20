# BedrockEmbeddingModel in lancedb::embeddings::bedrock

In `lancedb::embeddings::bedrock`

## Enum Definition

```rust
pub enum BedrockEmbeddingModel {
    TitanEmbedding,
    CohereLarge,
}
```

## Variants

- `TitanEmbedding`
- `CohereLarge`

## Trait Implementations

### `impl Debug for BedrockEmbeddingModel`

- **fn fmt(&self, f: &mut Formatter<'_>) -> Result** (formats the value using the given formatter)

### `impl FromStr for BedrockEmbeddingModel`

- **type Err = Error** (the associated error that can be returned from parsing)
- **fn from_str(s: &str) -> Result<Self, Self::Err>** (parses a string `s` to return a value of this type)

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `impl Any for T` (where T: 'static + ?Sized)
- **fn type_id(&self) -> TypeId**

### `impl ArchivePointee for T`
- **type ArchivedMetadata = ()**
- **fn pointer_metadata( _: <T as ArchivePointee>::ArchivedMetadata) -> <<T as Pointee>::Metadata>**

### `impl Borrow<T> for T` (where T: ?Sized)
- **fn borrow(&self) -> &T**

### `impl BorrowMut<T> for T` (where T: ?Sized)
- **fn borrow_mut(&mut self) -> &mut T**

### `impl Conv for T`
- **fn conv(self) -> T** (converts `self` into `T` using `Into`)

### `impl DropFlavorWrapper<T> for T`
- **type Flavor = MayDrop**

### `impl FmtForward for T`
- **fn fmt_binary(self) -> FmtBinary** (causes `self` to use its `Binary` implementation when `Debug`-formatted)
- **fn fmt_display(self) -> FmtDisplay** (causes `self` to use its `Display` implementation when `Debug`-formatted)
- **fn fmt_lower_exp(self) -> FmtLowerExp** (causes `self` to use its `LowerExp` implementation when `Debug`-formatted)
- **fn fmt_lower_hex(self) -> FmtLowerHex** (causes `self` to use its `LowerHex` implementation when `Debug`-formatted)
- **fn fmt_octal(self) -> FmtOctal** (causes `self` to use its `Octal` implementation when `Debug`-formatted)
- **fn fmt_pointer(self) -> FmtPointer** (causes `self` to use its `Pointer` implementation when `Debug`-formatted)
- **fn fmt_upper_exp(self) -> FmtUpperExp** (causes `self` to use its `UpperExp` implementation when `Debug`-formatted)
- **fn fmt_upper_hex(self) -> FmtUpperHex** (causes `self` to use its `UpperHex` implementation when `Debug`-formatted)
- **fn fmt_list(self) -> FmtList** (formats each item in a sequence)

### `impl From<T> for T`
- **fn from(t: T) -> T**

### `impl HasTypeWitness<W> for T` (where W: MakeTypeWitness, T: ?Sized)
- **const WITNESS: W = W::MAKE**

### `impl Identity for T` (where T: ?Sized)
- **const TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW**
- **type Type = T**

### `impl Instrument for T`
- **fn instrument(self, span: Span) -> Instrumented**
- **fn in_current_span(self) -> Instrumented**

### `impl Into<U> for T` (where U: From<T>)
- **fn into(self) -> U**

### `impl IntoEither for T`
- **fn into_either(self, into_left: bool) -> Either**
- **fn into_either_with(self, into_left: F) -> Either** (where F: FnOnce(&Self) -> bool)

### `impl IntoShared<Shared> for Unshared` (where Shared: FromUnshared)
- **fn into_shared(self) -> Shared**

### `impl LayoutRaw for T`
- **fn layout_raw( _: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>**

### `impl Niching<NichedOption<T, N1>> for N2` (where T: SharedNiching, N1: Niching, N2: Niching)
- **unsafe fn is_niched(niched: *const NichedOption) -> bool**
- **fn resolve_niched(out: Place<NichedOption>)**

### `impl Pipe for T` (where T: ?Sized)
- **fn pipe(self, func: impl FnOnce(Self) -> R) -> R** (where Self: Sized)
- **fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R** (where R: 'a)
- **fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R** (where R: 'a)
- **fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R** (where Self: Borrow<B>, B: 'a + ?Sized, R: 'a)
- **fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R** (where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a)
- **fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R** (where Self: AsRef<U>, U: 'a + ?Sized, R: 'a)
- **fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R** (where Self: AsMut<U>, U: 'a + ?Sized, R: 'a)
- **fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R** (where Self: Deref<Target=T>, T: 'a + ?Sized, R: 'a)
- **fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R** (where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a)

### `impl Pointable for T`
- **const ALIGN: usize**
- **type Init = T**
- **unsafe fn init(init: <T as Pointable>::Init) -> usize**
- **unsafe fn deref<'a>(ptr: usize) -> &'a T**
- **unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T**
- **unsafe fn drop(ptr: usize)**

### `impl Pointee for T`
- **type Metadata = ()**

### `impl PolicyExt for T` (where T: ?Sized)
- **fn and(self, other: P) -> And** (where T: Policy, P: Policy)
- **fn or(self, other: P) -> Or** (where T: Policy, P: Policy)

### `impl Same for T`
- **type Output = T**

### `impl Tap for T`
- **fn tap(self, func: impl FnOnce(&Self)) -> Self**
- **fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self**
- **fn tap_borrow(self, func: impl FnOnce(&B)) -> Self** (where Self: Borrow<B>, B: ?Sized)
- **fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self** (where Self: BorrowMut<B>, B: ?Sized)
- **fn tap_ref(self, func: impl FnOnce(&R)) -> Self** (where Self: AsRef<R>, R: ?Sized)
- **fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self** (where Self: AsMut<R>, R: ?Sized)
- **fn tap_deref(self, func: impl FnOnce(&T)) -> Self** (where Self: Deref<Target=T>, T: ?Sized)
- **fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self** (where Self: DerefMut + Deref, T: ?Sized)
- **fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self** (debug only)
- **fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self** (debug only)
- **fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self** (debug only, where Self: Borrow<B>, B: ?Sized)
- **fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self** (debug only, where Self: BorrowMut<B>, B: ?Sized)
- **fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self** (debug only, where Self: AsRef<R>, R: ?Sized)
- **fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self** (debug only, where Self: AsMut<R>, R: ?Sized)
- **fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self** (debug only, where Self: Deref<Target=T>, T: ?Sized)
- **fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self** (debug only, where Self: DerefMut + Deref, T: ?Sized)

### `impl TryConv for T`
- **fn try_conv(self) -> Result<T, Error>** (where Self: TryInto<T>)

### `impl TryFrom<U> for T` (where U: Into<T>)
- **type Error = Infallible**
- **fn try_from(value: U) -> Result<T, Self::Error>**

### `impl TryInto<U> for T` (where U: TryFrom<T>)
- **type Error = <U as TryFrom<T>>::Error**
- **fn try_into(self) -> Result<U, Self::Error>**

### `impl TryInto<U> for T` (async version, where U: TryFrom<T>)
- **type Error = <U as TryFrom<T>>::Error**
- **fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>** (where T: 'async_trait)

### `impl VZip<V> for T` (where V: MultiLane)
- **fn vzip(self) -> V**

### `impl WithSubscriber for T`
- **fn with_subscriber(self, subscriber: S) -> WithDispatch** (where S: Into<Dispatch>)
- **fn with_current_subscriber(self) -> WithDispatch**

### `impl Allocation for T` (where T: RefUnwindSafe + Send + Sync)

### `impl ErasedDestructor for T` (where T: 'static)

### `impl MaybeSend for T` (where T: Send) – multiple sources

### `impl ResultError for E` (where E: Send + Debug + Sync)
