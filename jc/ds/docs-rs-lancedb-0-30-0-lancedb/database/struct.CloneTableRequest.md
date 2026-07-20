# CloneTableRequest in `lancedb::database`

Request to clone a table from a source table.  
A shallow clone creates a new table that shares the underlying data files with the source table but has its own independent manifest. This allows both the source and cloned tables to evolve independently while initially sharing the same data, deletion, and index files.

## Struct Definition

```rust
pub struct CloneTableRequest {
    pub target_table_name: String,
    pub target_namespace_path: Vec<String>,
    pub source_uri: String,
    pub source_version: Option<u64>,
    pub source_tag: Option<String>,
    pub is_shallow: bool,
    pub namespace_client: Option<Arc<LanceNamespace>>,
}
```

## Fields

- **`target_table_name`**: `String` – The name of the target table to create.
- **`target_namespace_path`**: `Vec<String>` – The namespace path for the target table. Empty list represents root namespace.
- **`source_uri`**: `String` – The URI of the source table to clone from.
- **`source_version`**: `Option<u64>` – Optional version of the source table to clone.
- **`source_tag`**: `Option<String>` – Optional tag of the source table to clone.
- **`is_shallow`**: `bool` – Whether to perform a shallow clone (`true`) or deep clone (`false`). Defaults to `true`. Currently only shallow clone is supported.
- **`namespace_client`**: `Option<Arc<LanceNamespace>>` – Optional namespace client for managed versioning support. When set, enables the commit handler to track table versions through the namespace.

## Implementations

### `impl CloneTableRequest`

```rust
pub fn new(
    target_table_name: String,
    source_uri: String,
) -> Self
```

### `impl Clone for CloneTableRequest`

```rust
fn clone(&self) -> CloneTableRequest
```

```rust
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for CloneTableRequest`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

## Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

### `impl Any for T` where `T: 'static + ?Sized`

```rust
fn type_id(&self) -> TypeId
```

### `impl ArchivePointee for T`

- Associated Type: `type ArchivedMetadata = ()`

```rust
fn pointer_metadata(_: &<ArchivePointee>::ArchivedMetadata) -> <Pointee>::Metadata
```

### `impl Borrow<T> for T` where `T: ?Sized`

```rust
fn borrow(&self) -> &T
```

### `impl BorrowMut<T> for T` where `T: ?Sized`

```rust
fn borrow_mut(&mut self) -> &mut T
```

### `impl CloneToUninit for T` where `T: Clone`

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

### `impl Conv for T`

```rust
fn conv(self) -> T
```

### `impl DropFlavorWrapper<T> for T`

- Associated Type: `type Flavor = MayDrop`

### `impl DynClone for T` where `T: Clone`

```rust
fn __clone_box(&self, _: Private) -> *mut ()
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

### `impl FromRef<T> for T` where `T: Clone`

```rust
fn from_ref(input: &T) -> T
```

### `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness`, `T: ?Sized`

- Associated Constant: `const WITNESS: W = W::MAKE`

### `impl Identity for T` where `T: ?Sized`

- Associated Constant: `const TYPE_EQ: TypeEq<<Identity>::Type> = TypeEq::NEW`
- Associated Type: `type Type = T`

### `impl Instrument for T`

```rust
fn instrument(self, span: Span) -> Instrumented
fn in_current_span(self) -> Instrumented
```

### `impl Into<U> for T` where `U: From<T>`

```rust
fn into(self) -> U
```

### `impl IntoEither for T`

```rust
fn into_either(self, into_left: bool) -> Either
fn into_either_with(self, into_left: F) -> Either
```

### `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`

```rust
fn into_shared(self) -> Shared
```

### `impl LayoutRaw for T`

```rust
fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>
```

### `impl Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching`, `N1: Niching`, `N2: Niching`

```rust
unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool
fn resolve_niched(out: Place<NichedOption<T, N1>>)
```

### `impl Pipe for T` where `T: ?Sized`

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

- Associated Constant: `const ALIGN: usize`
- Associated Type: `type Init = T`

```rust
unsafe fn init(init: <Pointable>::Init) -> usize
unsafe fn deref<'a>(ptr: usize) -> &'a T
unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
unsafe fn drop(ptr: usize)
```

### `impl Pointee for T`

- Associated Type: `type Metadata = ()`

### `impl PolicyExt for T` where `T: ?Sized`

```rust
fn and(self, other: P) -> And
fn or(self, other: P) -> Or
```

### `impl Same for T`

- Associated Type: `type Output = T`

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
fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self
fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self
fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self
fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self
fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self
fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self
fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self
fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self
```

### `impl ToOwned for T` where `T: Clone`

- Associated Type: `type Owned = T`

```rust
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### `impl TryConv for T`

```rust
fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>
```

### `impl TryFrom<U> for T` where `U: Into<T>`

- Associated Type: `type Error = Infallible`

```rust
fn try_from(value: U) -> Result<T, <TryFrom as TryFrom>::Error>
```

### `impl TryInto<U> for T` where `U: TryFrom<T>`

- Associated Type: `type Error = <U as TryFrom<T>>::Error`

```rust
fn try_into(self) -> Result<U, <Self as TryInto<U>>::Error>
```

### `impl TryInto<U> for T` (async) where `U: TryFrom<T>`

- Associated Type: `type Error = <U as TryFrom<T>>::Error`

```rust
async fn try_into(self) -> Result<U, <Self as TryInto<U>>::Error>
```

### `impl VZip<V> for T` where `V: MultiLane`

```rust
fn vzip(self) -> V
```

### `impl WithSubscriber for T`

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
fn with_current_subscriber(self) -> WithDispatch
```

### `impl ErasedDestructor for T` where `T: 'static`

*(no methods)*

### `impl MaybeSend for T` where `T: Send` (two occurrences)

*(no methods)*

### `impl ResultError for E` where `E: Send + Debug + Sync`

*(no methods)*

### `impl ResultType for T` where `T: Send + Clone + Sync + Debug`

*(no methods)*
