# Enum FtsQuery

In `lancedb::index::scalar`.

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#106)

```rust
pub enum FtsQuery {
    Match(MatchQuery),
    Phrase(PhraseQuery),
    Boost(BoostQuery),
    MultiMatch(MultiMatchQuery),
    Boolean(BooleanQuery),
}
```

## Variants

- **Match**([`MatchQuery`](struct.MatchQuery.html))
- **Phrase**([`PhraseQuery`](struct.PhraseQuery.html))
- **Boost**([`BoostQuery`](struct.BoostQuery.html))
- **MultiMatch**([`MultiMatchQuery`](struct.MultiMatchQuery.html))
- **Boolean**([`BooleanQuery`](struct.BooleanQuery.html))

## Implementations

### `impl FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#170)

```rust
pub fn query(&self) -> String
```

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#184)

```rust
pub fn is_missing_column(&self) -> bool
```

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#199)

```rust
pub fn with_column(self, column: String) -> FtsQuery
```

## Trait Implementations

### `impl Clone for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#104)

```rust
fn clone(&self) -> FtsQuery
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#104)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
```

### `impl<'de> Deserialize<'de> for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#104)

```rust
fn deserialize<__D>(__deserializer: __D) -> Result<FtsQuery, __D::Error>
where __D: Deserializer<'de>
```

### `impl Display for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#117)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
```

### `impl From<BooleanQuery> for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#270)

```rust
fn from(query: BooleanQuery) -> FtsQuery
```

### `impl From<BoostQuery> for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#258)

```rust
fn from(query: BoostQuery) -> FtsQuery
```

### `impl From<MatchQuery> for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#246)

```rust
fn from(query: MatchQuery) -> FtsQuery
```

### `impl From<MultiMatchQuery> for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#264)

```rust
fn from(query: MultiMatchQuery) -> FtsQuery
```

### `impl From<PhraseQuery> for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#252)

```rust
fn from(query: PhraseQuery) -> FtsQuery
```

### `impl FtsQueryNode for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#139)

```rust
fn columns(&self) -> HashSet<String>
```

### `impl PartialEq for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#104)

```rust
fn eq(&self, other: &FtsQuery) -> bool
fn ne(&self, other: &Rhs) -> bool
```

### `impl Serialize for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#104)

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where __S: Serializer
```

### `impl StructuralPartialEq for FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#104)

(No methods)

## Auto Trait Implementations

- `impl Freeze for FtsQuery`
- `impl RefUnwindSafe for FtsQuery`
- `impl Send for FtsQuery`
- `impl Sync for FtsQuery`
- `impl Unpin for FtsQuery`
- `impl UnsafeUnpin for FtsQuery`
- `impl UnwindSafe for FtsQuery`

## Blanket Implementations

- `impl Any for T where T: 'static + ?Sized`  
  - `fn type_id(&self) -> TypeId`

- `impl ArchivePointee for T`  
  - `type ArchivedMetadata = ()`  
  - `fn pointer_metadata(_: &<Self as ArchivePointee>::ArchivedMetadata) -> <Self as Pointee>::Metadata`

- `impl Borrow<T> for T where T: ?Sized`  
  - `fn borrow(&self) -> &T`

- `impl BorrowMut<T> for T where T: ?Sized`  
  - `fn borrow_mut(&mut self) -> &mut T`

- `impl CloneToUninit for T where T: Clone`  
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

- `impl Conv for T`  
  - `fn conv(self) -> T where Self: Into<T>`

- `impl DropFlavorWrapper<T> for T`  
  - `type Flavor = MayDrop`

- `impl DynClone for T where T: Clone`  
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

- `impl FromRef<T> for T where T: Clone`  
  - `fn from_ref(input: &T) -> T`

- `impl HasTypeWitness<W> for T`  
  - `const WITNESS: W = W::MAKE`

- `impl Identity for T where T: ?Sized`  
  - `const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`  
  - `type Type = T`

- `impl Instrument for T`  
  - `fn instrument(self, span: Span) -> Instrumented<Self>`  
  - `fn in_current_span(self) -> Instrumented<Self>`

- `impl Into<U> for T where U: From<T>`  
  - `fn into(self) -> U`

- `impl IntoEither for T`  
  - `fn into_either(self, into_left: bool) -> Either<Self, Self>`  
  - `fn into_either_with<F>(self, into_left: F) -> Either<Self, Self>`

- `impl IntoShared<Shared> for Unshared where Shared: FromUnshared<Unshared>`  
  - `fn into_shared(self) -> Shared`

- `impl LayoutRaw for T`  
  - `fn layout_raw(_: <Self as Pointee>::Metadata) -> Result<Layout, LayoutError>`

- `impl Niching<NichedOption<T, N1>> for N2`  
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`  
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

- `impl Pipe for T where T: ?Sized`  
  - `fn pipe<F, R>(self, func: F) -> R`  
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
  - `unsafe fn init(init: Self::Init) -> usize`  
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`  
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`  
  - `unsafe fn drop(ptr: usize)`

- `impl Pointee for T`  
  - `type Metadata = ()`

- `impl PolicyExt for T where T: ?Sized`  
  - `fn and<P>(self, other: P) -> And<Self, P>`  
  - `fn or<P>(self, other: P) -> Or<Self, P>`

- `impl Same for T`  
  - `type Output = T`

- `impl Tap for T`  
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

- `impl ToOwned for T where T: Clone`  
  - `type Owned = T`  
  - `fn to_owned(&self) -> T`  
  - `fn clone_into(&self, target: &mut T)`

- `impl ToString for T where T: Display + ?Sized`  
  - `fn to_string(&self) -> String`

- `impl TryConv for T`  
  - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>`

- `impl TryFrom<U> for T where U: Into<T>`  
  - `type Error = Infallible`  
  - `fn try_from(value: U) -> Result<T, Self::Error>`

- `impl TryInto<U> for T where U: TryFrom<T>` (core)  
  - `type Error = <U as TryFrom<T>>::Error`  
  - `fn try_into(self) -> Result<U, Self::Error>`

- `impl TryInto<U> for T where U: TryFrom<T>` (async_convert)  
  - `type Error = <U as TryFrom<T>>::Error`  
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`

- `impl VZip<V> for T where V: MultiLane`  
  - `fn vzip(self) -> V`

- `impl WithSubscriber for T`  
  - `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>`  
  - `fn with_current_subscriber(self) -> WithDispatch<Self>`

- `impl Allocation for T where T: RefUnwindSafe + Send + Sync` (no methods listed)

- `impl DeserializeOwned for T where T: for<'de> Deserialize<'de>` (no methods)

- `impl ErasedDestructor for T where T: 'static` (no methods)

- `impl MaybeSend for T where T: Send` (two occurrences, no methods)

- `impl ResultError for E where E: Send + Debug + Sync` (no methods)

- `impl ResultType for T where T: Send + Clone + Sync + Debug` (no methods)
