# ColumnDefinition (lancedb::table)

## Description

Defines a column in a table.

## Struct Definition

```text
pub struct ColumnDefinition {
    pub kind: ColumnKind,
}
```

## Fields

- `kind`: `ColumnKind` — The source of the column data.

## Trait Implementations

### Clone

```text
impl Clone for ColumnDefinition
```

- `fn clone(&self) -> ColumnDefinition`
- `fn clone_from(&mut self, source: &Self)`

### Debug

```text
impl Debug for ColumnDefinition
```

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### Deserialize<'de>

```text
impl<'de> Deserialize<'de> for ColumnDefinition
```

- `fn deserialize<D>(__deserializer: D) -> Result<Self, D::Error>` where `D: Deserializer<'de>`

### Serialize

```text
impl Serialize for ColumnDefinition
```

- `fn serialize<S>(&self, __serializer: S) -> Result<S::Ok, S::Error>` where `S: Serializer`

## Auto Trait Implementations

- `impl Freeze for ColumnDefinition`
- `impl RefUnwindSafe for ColumnDefinition`
- `impl Send for ColumnDefinition`
- `impl Sync for ColumnDefinition`
- `impl Unpin for ColumnDefinition`
- `impl UnsafeUnpin for ColumnDefinition`
- `impl UnwindSafe for ColumnDefinition`

## Blanket Implementations

### Allocation

```text
impl<T> Allocation for T where T: RefUnwindSafe + Send + Sync
```

### Any

```text
impl<T> Any for T where T: 'static + ?Sized
```

- `fn type_id(&self) -> TypeId`

### ArchivePointee

```text
impl<T> ArchivePointee for T
```

- Type: `ArchivedMetadata = ()`
- `fn pointer_metadata(_: &ArchivedMetadata) -> Pointee::Metadata`

### Borrow<T>

```text
impl<T> Borrow<T> for T where T: ?Sized
```

- `fn borrow(&self) -> &T`

### BorrowMut<T>

```text
impl<T> BorrowMut<T> for T where T: ?Sized
```

- `fn borrow_mut(&mut self) -> &mut T`

### CloneToUninit

```text
impl<T> CloneToUninit for T where T: Clone
```

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### Conv

```text
impl<T> Conv for T
```

- `fn conv(self) -> T` where `Self: Into<T>`

### DeserializeOwned

```text
impl<T> DeserializeOwned for T where T: for<'de> Deserialize<'de>
```

### DropFlavorWrapper<T>

```text
impl<T> DropFlavorWrapper<T> for T
```

- Type: `Flavor = MayDrop`

### DynClone

```text
impl<T> DynClone for T where T: Clone
```

- `fn __clone_box(&self, _: Private) -> *mut ()`

### ErasedDestructor

```text
impl<T> ErasedDestructor for T where T: 'static
```

### FmtForward

```text
impl<T> FmtForward for T
```

- `fn fmt_binary(self) -> FmtBinary` (where `Self: Binary`)
- `fn fmt_display(self) -> FmtDisplay` (where `Self: Display`)
- `fn fmt_lower_exp(self) -> FmtLowerExp` (where `Self: LowerExp`)
- `fn fmt_lower_hex(self) -> FmtLowerHex` (where `Self: LowerHex`)
- `fn fmt_octal(self) -> FmtOctal` (where `Self: Octal`)
- `fn fmt_pointer(self) -> FmtPointer` (where `Self: Pointer`)
- `fn fmt_upper_exp(self) -> FmtUpperExp` (where `Self: UpperExp`)
- `fn fmt_upper_hex(self) -> FmtUpperHex` (where `Self: UpperHex`)
- `fn fmt_list(self) -> FmtList` (where `&'a Self: for<'a> IntoIterator`)

### From<T>

```text
impl<T> From<T> for T
```

- `fn from(t: T) -> T`

### FromRef<T>

```text
impl<T> FromRef<T> for T where T: Clone
```

- `fn from_ref(input: &T) -> T`

### HasTypeWitness<W>

```text
impl<T, W> HasTypeWitness<W> for T where W: MakeTypeWitness, T: ?Sized
```

- Const: `WITNESS: W = W::MAKE`

### Identity

```text
impl<T> Identity for T where T: ?Sized
```

- Type: `Type = T`
- Const: `TYPE_EQ: TypeEq<T, T> = TypeEq::NEW`

### Instrument

```text
impl<T> Instrument for T
```

- `fn instrument(self, span: Span) -> Instrumented<Self>`
- `fn in_current_span(self) -> Instrumented<Self>`

### Into<U>

```text
impl<T, U> Into<U> for T where U: From<T>
```

- `fn into(self) -> U`

### IntoEither

```text
impl<T> IntoEither for T
```

- `fn into_either(self, into_left: bool) -> Either<Self, Self>`
- `fn into_either_with(self, into_left: F) -> Either<Self, Self>` where `F: FnOnce(&Self) -> bool`

### IntoShared<Shared> for Unshared

```text
impl<Unshared, Shared> IntoShared<Shared> for Unshared where Shared: FromUnshared<Unshared>
```

- `fn into_shared(self) -> Shared`

### LayoutRaw

```text
impl<T> LayoutRaw for T
```

- `fn layout_raw(_: Pointee::Metadata) -> Result<Layout, LayoutError>`

### MaybeSend

```text
impl<T> MaybeSend for T where T: Send
```

(and another similar implementation)

### Niching<NichedOption<T, N1>> for N2

```text
impl<T, N1, N2> Niching<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching<...,1>, N2: Niching<...,2>
```

- `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
- `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

### Pipe

```text
impl<T> Pipe for T where T: ?Sized
```

- `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` (where `Self: Sized`)
- `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
- `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
- `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` (where `Self: Borrow<B>`)
- `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` (where `Self: BorrowMut<B>`)
- `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` (where `Self: AsRef<U>`)
- `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` (where `Self: AsMut<U>`)
- `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` (where `Self: Deref<Target=T>`)
- `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` (where `Self: DerefMut<Target=T>`)

### Pointable

```text
impl<T> Pointable for T
```

- Const: `ALIGN: usize`
- Type: `Init = T`
- `unsafe fn init(init: Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### Pointee

```text
impl<T> Pointee for T
```

- Type: `Metadata = ()`

### PolicyExt

```text
impl<T> PolicyExt for T where T: ?Sized
```

- `fn and(self, other: P) -> And<Self, P>` (where `Self: Policy`, `P: Policy`)
- `fn or(self, other: P) -> Or<Self, P>` (where `Self: Policy`, `P: Policy`)

### ResultError

```text
impl<E> ResultError for E where E: Send + Debug + Sync
```

### ResultType

```text
impl<T> ResultType for T where T: Send + Clone + Sync + Debug
```

### Same

```text
impl<T> Same for T
```

- Type: `Output = T`

### Tap

```text
impl<T> Tap for T
```

- `fn tap(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` (where `Self: Borrow<B>`)
- `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` (where `Self: BorrowMut<B>`)
- `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` (where `Self: AsRef<R>`)
- `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` (where `Self: AsMut<R>`)
- `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` (where `Self: Deref<Target=T>`)
- `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` (where `Self: DerefMut<Target=T>`)
- `fn tap_dbg(...)` (debug-only variants)
- `fn tap_mut_dbg(...)`
- `fn tap_borrow_dbg(...)`
- `fn tap_borrow_mut_dbg(...)`
- `fn tap_ref_dbg(...)`
- `fn tap_ref_mut_dbg(...)`
- `fn tap_deref_dbg(...)`
- `fn tap_deref_mut_dbg(...)`

### ToOwned

```text
impl<T> ToOwned for T where T: Clone
```

- Type: `Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### TryConv

```text
impl<T> TryConv for T
```

- `fn try_conv(self) -> Result<T, Self::Error>` where `Self: TryInto<T>`

### TryFrom<U>

```text
impl<T, U> TryFrom<U> for T where U: Into<T>
```

- Type: `Error = Infallible`
- `fn try_from(value: U) -> Result<T, Infallible>`

### TryInto<U>

```text
impl<T, U> TryInto<U> for T where U: TryFrom<T>
```

- Type: `Error = U::Error`
- `fn try_into(self) -> Result<U, U::Error>`

### TryInto (async-convert)

```text
impl<T, U> TryInto<U> for T where U: TryFrom<T>
```

- Type: `Error = U::Error`
- `async fn try_into(self) -> Result<U, U::Error>`

### VZip<V>

```text
impl<T, V> VZip<V> for T where V: MultiLane
```

- `fn vzip(self) -> V`

### WithSubscriber

```text
impl<T> WithSubscriber for T
```

- `fn with_subscriber(self, subscriber: S) -> WithDispatch<Self>` where `S: Into<Dispatch>`
- `fn with_current_subscriber(self) -> WithDispatch<Self>`
