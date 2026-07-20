# SentenceTransformersEmbeddings

## Struct Definition

```text
pub struct SentenceTransformersEmbeddings { /* private fields */ }
```

## Associated Functions

- `pub fn builder() -> SentenceTransformersEmbeddingsBuilder`

  [Source](../../../src/lancedb/embeddings/sentence_transformers.rs.html#196-198)

## Trait Implementations

### `Debug`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

  [Source](../../../src/lancedb/embeddings/sentence_transformers.rs.html#55-61)

### `EmbeddingFunction`

- `fn name(&self) -> &str`

  [Source](../../../src/lancedb/embeddings/sentence_transformers.rs.html#406-408)

- `fn source_type(&self) -> Result<Cow<'_, DataType>>`

  [Source](../../../src/lancedb/embeddings/sentence_transformers.rs.html#410-412)

- `fn dest_type(&self) -> Result<Cow<'_, DataType>>`

  [Source](../../../src/lancedb/embeddings/sentence_transformers.rs.html#414-421)

- `fn compute_source_embeddings(&self, source: Arc<...>) -> Result<Arc<...>>`

  [Source](../../../src/lancedb/embeddings/sentence_transformers.rs.html#423-438)

- `fn compute_query_embeddings(&self, input: Arc<...>) -> Result<Arc<...>>`

  [Source](../../../src/lancedb/embeddings/sentence_transformers.rs.html#440-443)

## Auto Trait Implementations

- `!Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

- `Any` for `T` where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `ArchivePointee` for `T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata( _: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata`
- `Borrow<T>` for `T` where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- `BorrowMut<T>` for `T` where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `Conv` for `T`
  - `fn conv(self) -> T` where `Self: Into<T>`
- `DropFlavorWrapper<T>` for `T`
  - `type Flavor = MayDrop`
- `FmtForward` for `T`
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`
- `From<T>` for `T`
  - `fn from(t: T) -> T`
- `HasTypeWitness<W>` for `T` where `W: MakeTypeWitness, T: ?Sized`
  - `const WITNESS: W = W::MAKE`
- `Identity` for `T` where `T: ?Sized`
  - `const TYPE_EQ: TypeEq<Self, <Self as Identity>::Type> = TypeEq::NEW`
  - `type Type = T`
- `Instrument` for `T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- `Into<U>` for `T` where `U: From<T>`
  - `fn into(self) -> U`
- `IntoEither` for `T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`
- `IntoShared<Shared>` for `Unshared` where `Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`
- `LayoutRaw` for `T`
  - `fn layout_raw( _: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `Niching<NichedOption<T, N1>>` for `N2` (with bounds)
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- `Pipe` for `T` where `T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` (where Self: Sized)
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`
- `Pointable` for `T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: <T as Pointable>::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `Pointee` for `T`
  - `type Metadata = ()`
- `PolicyExt` for `T` where `T: ?Sized`
  - `fn and(self, other: P) -> And` (where T: Policy, P: Policy)
  - `fn or(self, other: P) -> Or` (where T: Policy, P: Policy)
- `Same` for `T`
  - `type Output = T`
- `Tap` for `T`
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow<B>(self, func: impl FnOnce(&B)) -> Self`
  - `fn tap_borrow_mut<B>(self, func: impl FnOnce(&mut B)) -> Self`
  - `fn tap_ref<R>(self, func: impl FnOnce(&R)) -> Self`
  - `fn tap_ref_mut<R>(self, func: impl FnOnce(&mut R)) -> Self`
  - `fn tap_deref<T>(self, func: impl FnOnce(&T)) -> Self`
  - `fn tap_deref_mut<T>(self, func: impl FnOnce(&mut T)) -> Self`
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg<B>(self, func: impl FnOnce(&B)) -> Self`
  - `fn tap_borrow_mut_dbg<B>(self, func: impl FnOnce(&mut B)) -> Self`
  - `fn tap_ref_dbg<R>(self, func: impl FnOnce(&R)) -> Self`
  - `fn tap_ref_mut_dbg<R>(self, func: impl FnOnce(&mut R)) -> Self`
  - `fn tap_deref_dbg<T>(self, func: impl FnOnce(&T)) -> Self`
  - `fn tap_deref_mut_dbg<T>(self, func: impl FnOnce(&mut T)) -> Self`
- `TryConv` for `T`
  - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>` where `Self: TryInto<T>`
- `TryFrom<U>` for `T` where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `TryInto<U>` for `T` where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- `TryInto<U>` (async) for `T` where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `async fn try_into(self) -> Result<U, Self::Error>`
- `VZip<V>` for `T` where `V: MultiLane`
  - `fn vzip(self) -> V`
- `WithSubscriber` for `T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch` (where S: Into<Dispatch>)
  - `fn with_current_subscriber(self) -> WithDispatch`
- `ErasedDestructor` for `T` where `T: 'static`
- `MaybeSend` for `T` where `T: Send`
- `ResultError` for `E` where `E: Send + Debug + Sync`
