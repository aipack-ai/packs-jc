# NativeTags

**In `lancedb::table`**

```rust
pub struct NativeTags { /* private fields */ }
```

## Trait Implementations

### `impl Tags for NativeTags`

List the tags of the table.

```rust
fn list<'life0, 'async_trait>(&'life0 self) -> Pin<Box<FutureResult<HashMap<String, TagContents>>> + Send + 'async_trait>
where
    Self: 'async_trait,
    'life0: 'async_trait,
```

Get the version of the table referenced by a tag.

```rust
fn get_version<'life0, 'life1, 'async_trait>(
    &'life0 self,
    tag: &'life1 str,
) -> Pin<Box<FutureResult<u64>> + Send + 'async_trait>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait,
```

Create a new tag for the given version of the table.

```rust
fn create<'life0, 'life1, 'async_trait>(
    &'life0 mut self,
    tag: &'life1 str,
    version: u64,
) -> Pin<Box<FutureResult<()>> + Send + 'async_trait>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait,
```

Delete a tag from the table.

```rust
fn delete<'life0, 'life1, 'async_trait>(
    &'life0 mut self,
    tag: &'life1 str,
) -> Pin<Box<FutureResult<()>> + Send + 'async_trait>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait,
```

Update an existing tag to point to a new version of the table.

```rust
fn update<'life0, 'life1, 'async_trait>(
    &'life0 mut self,
    tag: &'life1 str,
    version: u64,
) -> Pin<Box<FutureResult<()>> + Send + 'async_trait>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait,
```

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- `impl Any for T` where T: 'static + ?Sized
  - `fn type_id(&self) -> TypeId`
- `impl ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &<ArchivePointee>::ArchivedMetadata) -> <Pointee>::Metadata`
- `impl Borrow<T> for T` where T: ?Sized
  - `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T` where T: ?Sized
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl Conv for T`
  - `fn conv(self) -> T` where Self: Into<T>
- `impl DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`
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
- `impl HasTypeWitness<W> for T` where W: MakeTypeWitness, T: ?Sized
  - `const WITNESS: W = W::MAKE`
- `impl Identity for T` where T: ?Sized
  - `const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`
  - `type Type = T`
- `impl Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- `impl Into<U> for T` where U: From<T>
  - `fn into(self) -> U`
- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`
- `impl IntoShared<Shared> for Unshared` where Shared: FromUnshared
  - `fn into_shared(self) -> Shared`
- `impl LayoutRaw for T`
  - `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `impl Niching<NichedOption<T, N1>> for N2` where T: SharedNiching, N1: Niching, N2: Niching
  - `unsafe fn is_niched(niched: *const NichedOption<T>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T>>)`
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
  - `unsafe fn init(init: T) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl Pointee for T`
  - `type Metadata = ()`
- `impl PolicyExt for T` where T: ?Sized
  - `fn and(self, other: P) -> And`
  - `fn or(self, other: P) -> Or`
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
- `impl TryConv for T`
  - `fn try_conv(self) -> Result<T, Error>`
- `impl TryFrom<U> for T` where U: Into<T>
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl TryInto<U> for T` where U: TryFrom<T>
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- `impl TryInto<U> for T` (async-convert) where U: TryFrom<T>
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<Future<Result<U, Self::Error>> + 'async_trait>>`
- `impl VZip<V> for T` where V: MultiLane
  - `fn vzip(self) -> V`
- `impl WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
- `impl Allocation for T` where T: RefUnwindSafe + Send + Sync
- `impl ErasedDestructor for T` where T: 'static
- `impl MaybeSend for T` where T: Send (opendal-core)
- `impl MaybeSend for T` where T: Send (reqsign-core)
