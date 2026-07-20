# DropColumnsResult

In `lancedb::table::schema_evolution`

The result of a drop columns operation.

## Struct Definition

```rust
pub struct DropColumnsResult {
    pub version: u64,
}
```

## Fields

- `version: u64` — a commit version.

## Trait Implementations

### Clone

```rust
impl Clone for DropColumnsResult {
    fn clone(&self) -> DropColumnsResult;
    fn clone_from(&mut self, source: &Self);
}
```

### Debug

```rust
impl Debug for DropColumnsResult {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

### Default

```rust
impl Default for DropColumnsResult {
    fn default() -> DropColumnsResult;
}
```

### Deserialize<'de>

```rust
impl<'de> Deserialize<'de> for DropColumnsResult {
    fn deserialize<__D>(__deserializer: __D) -> Result<Self, __D::Error>
    where __D: Deserializer<'de>;
}
```

### PartialEq

```rust
impl PartialEq for DropColumnsResult {
    fn eq(&self, other: &DropColumnsResult) -> bool;
    fn ne(&self, other: &Rhs) -> bool;
}
```

### Eq

(No methods)

### Serialize

```rust
impl Serialize for DropColumnsResult {
    fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
    where __S: Serializer;
}
```

### StructuralPartialEq

(No methods)

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

### Any for T

```rust
impl Any for T
where T: 'static + ?Sized
{
    fn type_id(&self) -> TypeId;
}
```

### ArchivePointee for T

```rust
impl ArchivePointee for T {
    type ArchivedMetadata = ();
    fn pointer_metadata(_: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata;
}
```

### Borrow<T> for T

```rust
impl Borrow<T> for T
where T: ?Sized
{
    fn borrow(&self) -> &T;
}
```

### BorrowMut<T> for T

```rust
impl BorrowMut<T> for T
where T: ?Sized
{
    fn borrow_mut(&mut self) -> &mut T;
}
```

### CloneToUninit for T

```rust
impl CloneToUninit for T
where T: Clone
{
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}
```

### Conv for T

```rust
impl Conv for T {
    fn conv(self) -> T
    where Self: Into<T>;
}
```

### DropFlavorWrapper<T> for T

```rust
impl DropFlavorWrapper<T> for T {
    type Flavor = MayDrop;
}
```

### DynClone for T

```rust
impl DynClone for T
where T: Clone
{
    fn __clone_box(&self, _: Private) -> *mut ();
}
```

### DynEq for T

```rust
impl DynEq for T
where T: Eq + Any
{
    fn dyn_eq(&self, other: &(dyn Any + 'static)) -> bool;
}
```

### Equivalent<K> for Q

(Three identical implementations from different crates)

```rust
impl Equivalent<K> for Q
where Q: Eq + ?Sized, K: Borrow<Q> + ?Sized
{
    fn equivalent(&self, key: &K) -> bool;
}
```

### FmtForward for T

```rust
impl FmtForward for T {
    fn fmt_binary(self) -> FmtBinary;
    fn fmt_display(self) -> FmtDisplay;
    fn fmt_lower_exp(self) -> FmtLowerExp;
    fn fmt_lower_hex(self) -> FmtLowerHex;
    fn fmt_octal(self) -> FmtOctal;
    fn fmt_pointer(self) -> FmtPointer;
    fn fmt_upper_exp(self) -> FmtUpperExp;
    fn fmt_upper_hex(self) -> FmtUpperHex;
    fn fmt_list(self) -> FmtList;
}
```

### From<T> for T

```rust
impl From<T> for T {
    fn from(t: T) -> T;
}
```

### FromRef<T> for T

```rust
impl FromRef<T> for T
where T: Clone
{
    fn from_ref(input: &T) -> T;
}
```

### HasTypeWitness<W> for T

```rust
impl HasTypeWitness<W> for T
where W: MakeTypeWitness, T: ?Sized
{
    const WITNESS: W = W::MAKE;
}
```

### Identity for T

```rust
impl Identity for T
where T: ?Sized
{
    const TYPE_EQ: TypeEq<T, Self::Type> = TypeEq::NEW;
    type Type = T;
}
```

### Instrument for T

```rust
impl Instrument for T {
    fn instrument(self, span: Span) -> Instrumented<Self>;
    fn in_current_span(self) -> Instrumented<Self>;
}
```

### Into<U> for T

```rust
impl Into<U> for T
where U: From<T>
{
    fn into(self) -> U;
}
```

### IntoEither for T

```rust
impl IntoEither for T {
    fn into_either(self, into_left: bool) -> Either<Self, Self>;
    fn into_either_with(self, into_left: F) -> Either<Self, Self>;
}
```

### IntoShared<Shared> for Unshared

```rust
impl IntoShared<Shared> for Unshared
where Shared: FromUnshared
{
    fn into_shared(self) -> Shared;
}
```

### LayoutRaw for T

```rust
impl LayoutRaw for T {
    fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>;
}
```

### Niching<NichedOption<T, N1>> for N2

```rust
impl Niching<NichedOption<T, N1>> for N2
where T: SharedNiching, N1: Niching, N2: Niching
{
    unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool;
    fn resolve_niched(out: Place<NichedOption<T, N1>>);
}
```

### Pipe for T

```rust
impl Pipe for T
where T: ?Sized
{
    fn pipe(self, func: impl FnOnce(Self) -> R) -> R;
    fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R;
    fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R;
    fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R;
    fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R;
    fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R;
    fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R;
    fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R;
    fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R;
}
```

### Pointable for T

```rust
impl Pointable for T {
    const ALIGN: usize;
    type Init = T;
    unsafe fn init(init: Self::Init) -> usize;
    unsafe fn deref<'a>(ptr: usize) -> &'a T;
    unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T;
    unsafe fn drop(ptr: usize);
}
```

### Pointee for T

```rust
impl Pointee for T {
    type Metadata = ();
}
```

### PolicyExt for T

```rust
impl PolicyExt for T
where T: ?Sized
{
    fn and(self, other: P) -> And<Self, P>;
    fn or(self, other: P) -> Or<Self, P>;
}
```

### Same for T

```rust
impl Same for T {
    type Output = T;
}
```

### Tap for T

```rust
impl Tap for T {
    fn tap(self, func: impl FnOnce(&Self)) -> Self;
    fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self;
    fn tap_borrow(self, func: impl FnOnce(&B)) -> Self;
    fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self;
    fn tap_ref(self, func: impl FnOnce(&R)) -> Self;
    fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self;
    fn tap_deref(self, func: impl FnOnce(&T)) -> Self;
    fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self;
    fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self;
    fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self;
    fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self;
    fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self;
    fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self;
    fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self;
    fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self;
    fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self;
}
```

### ToOwned for T

```rust
impl ToOwned for T
where T: Clone
{
    type Owned = T;
    fn to_owned(&self) -> T;
    fn clone_into(&self, target: &mut T);
}
```

### TryConv for T

```rust
impl TryConv for T {
    fn try_conv(self) -> Result<T, Self::Error>;
}
```

### TryFrom<U> for T

```rust
impl TryFrom<U> for T
where U: Into<T>
{
    type Error = Infallible;
    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

### TryInto<U> for T

```rust
impl TryInto<U> for T
where U: TryFrom<T>
{
    type Error = <U as TryFrom<T>>::Error;
    fn try_into(self) -> Result<U, Self::Error>;
}
```

### TryInto<U> for T (async)

```rust
impl TryInto<U> for T
where U: TryFrom<T>
{
    type Error = <U as TryFrom<T>>::Error;
    fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>;
}
```

### VZip<V> for T

```rust
impl VZip<V> for T
where V: MultiLane
{
    fn vzip(self) -> V;
}
```

### WithSubscriber for T

```rust
impl WithSubscriber for T {
    fn with_subscriber(self, subscriber: S) -> WithDispatch<Self>;
    fn with_current_subscriber(self) -> WithDispatch<Self>;
}
```

### Allocation for T

```rust
impl Allocation for T
where T: RefUnwindSafe + Send + Sync;
```

### DeserializeOwned for T

```rust
impl DeserializeOwned for T
where T: for<'de> Deserialize<'de>;
```

### ErasedDestructor for T

```rust
impl ErasedDestructor for T
where T: 'static;
```

### MaybeSend for T

(Two implementations with the same signature)

```rust
impl MaybeSend for T
where T: Send;
```

### ResultError for E

```rust
impl ResultError for E
where E: Send + Debug + Sync;
```

### ResultType for T

```rust
impl ResultType for T
where T: Send + Clone + Sync + Debug;
```
