# IndexConfig

A description of an index currently configured on a column.

## Struct Definition

```rust
pub struct IndexConfig {
    pub name: String,
    pub index_type: IndexType,
    pub columns: Vec<String>,
}
```

## Fields

- `name: String` – The name of the index.
- `index_type: IndexType` – The type of the index.
- `columns: Vec<String>` – The columns in the index. Currently this is always a `Vec` of size 1. In the future there may be more columns to represent composite indices.

## Trait Implementations

### `Clone`

```rust
impl Clone for IndexConfig
```

- `fn clone(&self) -> IndexConfig` – Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` – Performs copy-assignment from `source`.

### `Debug`

```rust
impl Debug for IndexConfig
```

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` – Formats the value using the given formatter.

### `PartialEq`

```rust
impl PartialEq for IndexConfig
```

- `fn eq(&self, other: &IndexConfig) -> bool` – Tests for `self` and `other` values to be equal.
- `fn ne(&self, other: &IndexConfig) -> bool` – Tests for `!=`.

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for IndexConfig
```

## Auto Trait Implementations

- `impl Freeze for IndexConfig`
- `impl RefUnwindSafe for IndexConfig`
- `impl Send for IndexConfig`
- `impl Sync for IndexConfig`
- `impl Unpin for IndexConfig`
- `impl UnsafeUnpin for IndexConfig`
- `impl UnwindSafe for IndexConfig`

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
    - `fn type_id(&self) -> TypeId`
- `impl ArchivePointee for T`
    - `type ArchivedMetadata = ()`
    - `fn pointer_metadata(_: &Self::ArchivedMetadata) -> <T as Pointee>::Metadata`
- `impl Borrow<T> for T` where `T: ?Sized`
    - `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T` where `T: ?Sized`
    - `fn borrow_mut(&mut self) -> &mut T`
- `impl CloneToUninit for T` where `T: Clone`
    - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl Conv for T`
    - `fn conv(self) -> T` where `Self: Into<T>`
- `impl DropFlavorWrapper for T`
    - `type Flavor = MayDrop`
- `impl DynClone for T` where `T: Clone`
    - `fn __clone_box(&self, _: Private) -> *mut ()`
- `impl FmtForward for T`
    - `fn fmt_binary(self) -> FmtBinary` (and others)
- `impl From<T> for T`
    - `fn from(t: T) -> T`
- `impl FromRef<T> for T` where `T: Clone`
    - `fn from_ref(input: &T) -> T`
- `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness, T: ?Sized`
    - `const WITNESS: W = W::MAKE`
- `impl Identity for T` where `T: ?Sized`
    - `const TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW`
    - `type Type = T`
- `impl Instrument for T`
    - `fn instrument(self, span: Span) -> Instrumented<Self>`
    - `fn in_current_span(self) -> Instrumented<Self>`
- `impl Into<U> for T` where `U: From<T>`
    - `fn into(self) -> U`
- `impl IntoEither for T`
    - `fn into_either(self, into_left: bool) -> Either<Self, Self>`
    - `fn into_either_with(self, into_left: F) -> Either<Self, Self>`
- `impl IntoShared<Shared> for Unshared`
    - `fn into_shared(self) -> Shared`
- `impl LayoutRaw for T`
    - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `impl Niching<NichedOption<T, N1>> for N2` (complex bounds)
    - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
    - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- `impl Pipe for T` where `T: ?Sized`
    - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` (and many other pipe methods)
- `impl Pointable for T`
    - `const ALIGN: usize`
    - `type Init = T`
    - `unsafe fn init(init: Self::Init) -> usize`
    - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
    - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
    - `unsafe fn drop(ptr: usize)`
- `impl Pointee for T`
    - `type Metadata = ()`
- `impl PolicyExt for T` where `T: ?Sized`
    - `fn and(self, other: P) -> And<Self, P>`
    - `fn or(self, other: P) -> Or<Self, P>`
- `impl Same for T`
    - `type Output = T`
- `impl Tap for T` (many tap methods)
- `impl ToOwned for T` where `T: Clone`
    - `type Owned = T`
    - `fn to_owned(&self) -> T`
    - `fn clone_into(&self, target: &mut T)`
- `impl TryConv for T`
    - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>`
- `impl TryFrom<U> for T` where `U: Into<T>`
    - `type Error = Infallible`
    - `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl TryInto<U> for T` where `U: TryFrom<T>`
    - `type Error = <U as TryFrom<T>>::Error`
    - `fn try_into(self) -> Result<U, Self::Error>`
- Additional blanket implementations for `TryInto` (async), `VZip`, `WithSubscriber`, `Allocation`, `ErasedDestructor`, `MaybeSend`, `ResultError`, `ResultType`.
