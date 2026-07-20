# ColumnKind

In [lancedb::table](index.html)

**Enum** — Defines the type of column.

```text
pub enum ColumnKind {
    Physical,
    Embedding(EmbeddingDefinition),
}
```

## Variants

- **Physical** — Columns populated by data from the user (this is the most common case).
- **Embedding**([EmbeddingDefinition](../embeddings/struct.EmbeddingDefinition.html)) — Columns populated by applying an embedding function to the input.

## Trait Implementations

### Clone

```text
fn clone(&self) -> ColumnKind
```

```text
fn clone_from(&mut self, source: &Self)
```

### Debug

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### Deserialize<'de>

```text
fn deserialize<__D>(__deserializer: __D) -> Result<Self, __D::Error>
    where __D: Deserializer<'de>
```

### Serialize

```text
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
    where __S: Serializer
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

### Allocation

```text
(no methods)  // trait bound only
```

### Any (where T: 'static + ?Sized)

```text
fn type_id(&self) -> TypeId
```

### ArchivePointee

```text
type ArchivedMetadata = ()
```

```text
fn pointer_metadata(_: &<Self as ArchivePointee>::ArchivedMetadata) -> <Self as Pointee>::Metadata
```

### Borrow<T> (where T: ?Sized)

```text
fn borrow(&self) -> &T
```

### BorrowMut<T> (where T: ?Sized)

```text
fn borrow_mut(&mut self) -> &mut T
```

### CloneToUninit (where T: Clone)

```text
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

### Conv

```text
fn conv(self) -> T  // where Self: Into<T>
```

### DropFlavorWrapper<T>

```text
type Flavor = MayDrop
```

### DynClone (where T: Clone)

```text
fn __clone_box(&self, _: Private) -> *mut ()
```

### FmtForward

```text
fn fmt_binary(self) -> FmtBinary  // where Self: Binary
fn fmt_display(self) -> FmtDisplay  // where Self: Display
fn fmt_lower_exp(self) -> FmtLowerExp  // where Self: LowerExp
fn fmt_lower_hex(self) -> FmtLowerHex  // where Self: LowerHex
fn fmt_octal(self) -> FmtOctal  // where Self: Octal
fn fmt_pointer(self) -> FmtPointer  // where Self: Pointer
fn fmt_upper_exp(self) -> FmtUpperExp  // where Self: UpperExp
fn fmt_upper_hex(self) -> FmtUpperHex  // where Self: UpperHex
fn fmt_list(self) -> FmtList  // where &'a Self: for<'a> IntoIterator
```

### From<T>

```text
fn from(t: T) -> T
```

### FromRef<T> (where T: Clone)

```text
fn from_ref(input: &T) -> T
```

### HasTypeWitness<W> (where W: MakeTypeWitness, T: ?Sized)

```text
const WITNESS: W = W::MAKE
```

### Identity (where T: ?Sized)

```text
const TYPE_EQ: TypeEq<T, Self::Type> = TypeEq::NEW
type Type = T
```

### Instrument

```text
fn instrument(self, span: Span) -> Instrumented<Self>
fn in_current_span(self) -> Instrumented<Self>
```

### Into<U> (where U: From<T>)

```text
fn into(self) -> U
```

### IntoEither

```text
fn into_either(self, into_left: bool) -> Either<Self, Self>
fn into_either_with(self, into_left: F) -> Either<Self, Self>  // where F: FnOnce(&Self) -> bool
```

### IntoShared<Shared> (where Shared: FromUnshared)

```text
fn into_shared(self) -> Shared
```

### LayoutRaw

```text
fn layout_raw(_: <Self as Pointee>::Metadata) -> Result<Layout, LayoutError>
```

### Niching<NichedOption<T, N1>> (where T: SharedNiching, N1: Niching, N2: Niching)

```text
unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool
fn resolve_niched(out: Place<NichedOption<T, N1>>)
```

### Pipe (where T: ?Sized)

```text
fn pipe(self, func: impl FnOnce(Self) -> R) -> R  // where Self: Sized
fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R  // where R: 'a
fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R  // where R: 'a
fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R  // where Self: Borrow<B>, B: 'a + ?Sized, R: 'a
fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R  // where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a
fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R  // where Self: AsRef<U>, U: 'a + ?Sized, R: 'a
fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R  // where Self: AsMut<U>, U: 'a + ?Sized, R: 'a
fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R  // where Self: Deref<Target=T>, T: 'a + ?Sized, R: 'a
fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R  // where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a
```

### Pointable

```text
const ALIGN: usize
type Init = T
unsafe fn init(init: <Self as Pointable>::Init) -> usize
unsafe fn deref<'a>(ptr: usize) -> &'a T
unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
unsafe fn drop(ptr: usize)
```

### Pointee

```text
type Metadata = ()
```

### PolicyExt (where T: ?Sized)

```text
fn and(self, other: P) -> And<Self, P>  // where T: Policy, P: Policy
fn or(self, other: P) -> Or<Self, P>    // where T: Policy, P: Policy
```

### Same

```text
type Output = T
```

### Tap

```text
fn tap(self, func: impl FnOnce(&Self)) -> Self
fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self
fn tap_borrow<B>(self, func: impl FnOnce(&B)) -> Self  // where Self: Borrow<B>, B: ?Sized
fn tap_borrow_mut<B>(self, func: impl FnOnce(&mut B)) -> Self  // where Self: BorrowMut<B>, B: ?Sized
fn tap_ref<R>(self, func: impl FnOnce(&R)) -> Self  // where Self: AsRef<R>, R: ?Sized
fn tap_ref_mut<R>(self, func: impl FnOnce(&mut R)) -> Self  // where Self: AsMut<R>, R: ?Sized
fn tap_deref<T>(self, func: impl FnOnce(&T)) -> Self  // where Self: Deref<Target=T>, T: ?Sized
fn tap_deref_mut<T>(self, func: impl FnOnce(&mut T)) -> Self  // where Self: DerefMut + Deref, T: ?Sized
fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self
fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self
fn tap_borrow_dbg<B>(self, func: impl FnOnce(&B)) -> Self  // where Self: Borrow<B>, B: ?Sized
fn tap_borrow_mut_dbg<B>(self, func: impl FnOnce(&mut B)) -> Self  // where Self: BorrowMut<B>, B: ?Sized
fn tap_ref_dbg<R>(self, func: impl FnOnce(&R)) -> Self  // where Self: AsRef<R>, R: ?Sized
fn tap_ref_mut_dbg<R>(self, func: impl FnOnce(&mut R)) -> Self  // where Self: AsMut<R>, R: ?Sized
fn tap_deref_dbg<T>(self, func: impl FnOnce(&T)) -> Self  // where Self: Deref<Target=T>, T: ?Sized
fn tap_deref_mut_dbg<T>(self, func: impl FnOnce(&mut T)) -> Self  // where Self: DerefMut + Deref, T: ?Sized
```

### ToOwned (where T: Clone)

```text
type Owned = T
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### TryConv

```text
fn try_conv(self) -> Result<T, Self::Error>  // where Self: TryInto<T>
```

### TryFrom<U> (where U: Into<T>)

```text
type Error = Infallible
fn try_from(value: U) -> Result<T, Self::Error>
```

### TryInto<U> (where U: TryFrom<T>)

```text
type Error = <U as TryFrom<T>>::Error
fn try_into(self) -> Result<U, Self::Error>
```

### TryInto<U> (async‑convert) (where U: TryFrom<T>)

```text
type Error = <U as TryFrom<T>>::Error
fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>
```

### VZip<V> (where V: MultiLane)

```text
fn vzip(self) -> V
```

### WithSubscriber

```text
fn with_subscriber(self, subscriber: S) -> WithDispatch<Self>  // where S: Into<Dispatch>
fn with_current_subscriber(self) -> WithDispatch<Self>
```

### DeserializeOwned (where T: for<'de> Deserialize<'de>)

```text
(no methods)
```

### ErasedDestructor (where T: 'static)

```text
(no methods)
```

### MaybeSend (where T: Send)

(Blanket impl from opendal-core and reqsign-core, each providing the same marker trait — no methods.)

### ResultError (where E: Send + Debug + Sync)

```text
(no methods)
```

### ResultType (where T: Send + Clone + Sync + Debug)

```text
(no methods)
```
