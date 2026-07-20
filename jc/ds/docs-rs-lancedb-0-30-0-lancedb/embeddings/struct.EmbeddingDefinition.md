# EmbeddingDefinition in lancedb::embeddings - Rust

## Struct Definition

```rust
pub struct EmbeddingDefinition {
    pub source_column: String,
    pub dest_column: Option<String>,
    pub embedding_name: String,
}
```

## Fields

- `source_column: String` – The name of the column in the input data.
- `dest_column: Option<String>` – The name of the embedding column; if not specified it will be the source column with `_embedding` appended.
- `embedding_name: String` – The name of the embedding function to apply.

## Implementations

### `impl EmbeddingDefinition`

```rust
pub fn new<S: Into<String>>(
    source_column: S,
    embedding_name: S,
    dest: Option<String>,
) -> Self
```

## Trait Implementations

### `impl Clone for EmbeddingDefinition`

```rust
fn clone(&self) -> EmbeddingDefinition
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for EmbeddingDefinition`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl<'de> Deserialize<'de> for EmbeddingDefinition`

```rust
fn deserialize<__D>(__deserializer: __D) -> Result<Self, __D::Error>
where __D: Deserializer<'de>
```

### `impl Hash for EmbeddingDefinition`

```rust
fn hash<__H: Hasher>(&self, state: &mut __H)
fn hash_slice(data: &[Self], state: &mut H)
```

### `impl PartialEq for EmbeddingDefinition`

```rust
fn eq(&self, other: &EmbeddingDefinition) -> bool
fn ne(&self, other: &Rhs) -> bool
```

### `impl Serialize for EmbeddingDefinition`

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where __S: Serializer
```

### `impl Eq for EmbeddingDefinition`

*(no methods)*

### `impl StructuralPartialEq for EmbeddingDefinition`

*(no methods)*

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

```rust
fn type_id(&self) -> TypeId
```

### `impl ArchivePointee for T`

```rust
type ArchivedMetadata = ()
fn pointer_metadata(_: &Self::ArchivedMetadata) -> <<Self as Pointee>::Metadata>
```

### `impl Borrow<T> for T` (where T: ?Sized)

```rust
fn borrow(&self) -> &T
```

### `impl BorrowMut<T> for T` (where T: ?Sized)

```rust
fn borrow_mut(&mut self) -> &mut T
```

### `impl CloneToUninit for T` (where T: Clone)

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

### `impl Conv for T`

```rust
fn conv(self) -> T
```

### `impl DropFlavorWrapper for T`

```rust
type Flavor = MayDrop
```

### `impl DynClone for T` (where T: Clone)

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### `impl DynEq for T` (where T: Eq + Any)

```rust
fn dyn_eq(&self, other: &(dyn Any + 'static)) -> bool
```

### `impl DynHash for T` (where T: Hash + Any)

```rust
fn dyn_hash(&self, state: &mut dyn Hasher)
```

### `impl Equivalent<K> for Q` (multiple versions with same signature)

```rust
fn equivalent(&self, key: &K) -> bool
```

### `impl FmtForward for T`

```rust
fn fmt_binary(self) -> FmtBinary
fn fmt_display(self) -> FmtDisplay
fn fmt_lower_exp(self) -> FmtLowerExp
fn fmt_lower_hex(self) -> FmtLowerHex
fn fmt_octal(self) -> FmtOctal
fn fmt_pointer(self) -> FmtPointer
fn fmt_upper_exp(self) -> FmtUpperExp
fn fmt_upper_hex(self) -> FmtUpperHex
fn fmt_list(self) -> FmtList
```

### `impl From<T> for T`

```rust
fn from(t: T) -> T
```

### `impl FromRef<T> for T` (where T: Clone)

```rust
fn from_ref(input: &T) -> T
```

### `impl HasTypeWitness<W> for T`

```rust
const WITNESS: W = W::MAKE
```

### `impl Identity for T` (where T: ?Sized)

```rust
const TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW
type Type = T
```

### `impl Instrument for T`

```rust
fn instrument(self, span: Span) -> Instrumented
fn in_current_span(self) -> Instrumented
```

### `impl Into<U> for T` (where U: From<T>)

```rust
fn into(self) -> U
```

### `impl IntoEither for T`

```rust
fn into_either(self, into_left: bool) -> Either
fn into_either_with(self, into_left: F) -> Either
```

### `impl IntoShared<Shared> for Unshared` (where Shared: FromUnshared)

```rust
fn into_shared(self) -> Shared
```

### `impl LayoutRaw for T`

```rust
fn layout_raw(_: <Self as Pointee>::Metadata) -> Result<Layout, LayoutError>
```

### `impl Niching<NichedOption<T, N1>> for N2` (where conditions)

```rust
unsafe fn is_niched(niched: *const NichedOption<...>) -> bool
fn resolve_niched(out: Place<NichedOption<...>>)
```

### `impl Pipe for T` (where T: ?Sized)

```rust
fn pipe(self, func: impl FnOnce(Self) -> R) -> R
fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R
fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R
fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R
fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R
fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R
fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R
fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R
fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R
```

### `impl Pointable for T`

```rust
const ALIGN: usize
type Init = T
unsafe fn init(init: Self::Init) -> usize
unsafe fn deref<'a>(ptr: usize) -> &'a T
unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
unsafe fn drop(ptr: usize)
```

### `impl Pointee for T`

```rust
type Metadata = ()
```

### `impl PolicyExt for T` (where T: ?Sized)

```rust
fn and(self, other: P) -> And
fn or(self, other: P) -> Or
```

### `impl Same for T`

```rust
type Output = T
```

### `impl Tap for T`

```rust
fn tap(self, func: impl FnOnce(&Self)) -> Self
fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self
fn tap_borrow(self, func: impl FnOnce(&B)) -> Self
fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self
fn tap_ref(self, func: impl FnOnce(&R)) -> Self
fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self
fn tap_deref(self, func: impl FnOnce(&T)) -> Self
fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self
// plus debug variants:
fn tap_dbg(...)
fn tap_mut_dbg(...)
fn tap_borrow_dbg(...)
fn tap_borrow_mut_dbg(...)
fn tap_ref_dbg(...)
fn tap_ref_mut_dbg(...)
fn tap_deref_dbg(...)
fn tap_deref_mut_dbg(...)
```

### `impl ToOwned for T` (where T: Clone)

```rust
type Owned = T
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### `impl TryConv for T`

```rust
fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>
```

### `impl TryFrom<U> for T` (where U: Into<T>)

```rust
type Error = Infallible
fn try_from(value: U) -> Result<T, Self::Error>
```

### `impl TryInto<U> for T` (where U: TryFrom<T>)

```rust
type Error = <U as TryFrom<T>>::Error
fn try_into(self) -> Result<U, Self::Error>
```

### `impl TryInto<U> for T` (async version, where U: TryFrom<T>)

```rust
type Error = <U as TryFrom<T>>::Error
fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>
```

### `impl VZip<V> for T` (where V: MultiLane)

```rust
fn vzip(self) -> V
```

### `impl WithSubscriber for T`

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
fn with_current_subscriber(self) -> WithDispatch
```

### `impl Allocation for T` (where T: RefUnwindSafe + Send + Sync)

*(no methods)*

### `impl DeserializeOwned for T` (where T: for<'de> Deserialize<'de>)

*(no methods)*

### `impl ErasedDestructor for T` (where T: 'static)

*(no methods)*

### `impl MaybeSend for T` (where T: Send) – two occurrences

*(no methods)*

### `impl ResultError for E` (where E: Send + Debug + Sync)

*(no methods)*

### `impl ResultType for T` (where T: Send + Clone + Sync + Debug)

*(no methods)*
