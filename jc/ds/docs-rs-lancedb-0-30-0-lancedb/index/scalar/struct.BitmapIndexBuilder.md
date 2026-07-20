# BitmapIndexBuilder

In `lancedb::index::scalar`

[Source](../../../src/lancedb/index/scalar.rs.html#43)

```rust
pub struct BitmapIndexBuilder {}
```

Builder for a Bitmap index. It is a scalar index that stores a bitmap for each possible value. This index works best for low-cardinality (i.e., less than 1000 unique values) columns, where the number of unique values is small. The bitmap stores a list of row ids where the value is present.

## Trait Implementations

### `Clone`

```rust
impl Clone for BitmapIndexBuilder
```

- `fn clone(&self) -> BitmapIndexBuilder` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### `Debug`

```rust
impl Debug for BitmapIndexBuilder
```

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### `Default`

```rust
impl Default for BitmapIndexBuilder
```

- `fn default() -> BitmapIndexBuilder` — Returns the “default value” for a type.

### `Serialize`

```rust
impl Serialize for BitmapIndexBuilder
```

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` — Serialize this value into the given Serde serializer.

## Auto Trait Implementations

- `impl Freeze for BitmapIndexBuilder`
- `impl RefUnwindSafe for BitmapIndexBuilder`
- `impl Send for BitmapIndexBuilder`
- `impl Sync for BitmapIndexBuilder`
- `impl Unpin for BitmapIndexBuilder`
- `impl UnsafeUnpin for BitmapIndexBuilder`
- `impl UnwindSafe for BitmapIndexBuilder`

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
- `impl ArchivePointee for T`
- `impl Borrow<T> for T` where `T: ?Sized`
- `impl BorrowMut<T> for T` where `T: ?Sized`
- `impl CloneToUninit for T` where `T: Clone`
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T` where `T: Clone`
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl FromRef<T> for T` where `T: Clone`
- `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness, T: ?Sized`
- `impl Identity for T` where `T: ?Sized`
- `impl Instrument for T`
- `impl Into<U> for T` where `U: From<T>`
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`
- `impl LayoutRaw for T`
- `impl Niching<NichedOption<T, N1>> for N2`
- `impl Pipe for T` where `T: ?Sized`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T` where `T: ?Sized`
- `impl ResultError for E`
- `impl ResultType for T`
- `impl Same for T`
- `impl Tap for T`
- `impl ToOwned for T` where `T: Clone`
- `impl TryConv for T`
- `impl TryFrom<U> for T` where `U: Into<T>`
- `impl TryInto<U> for T` where `U: TryFrom<T>`
- `impl TryInto<U> for T` (async)
- `impl VZip<V> for T` where `V: MultiLane`
- `impl WithSubscriber for T`
- `impl Allocation for T` where `T: RefUnwindSafe + Send + Sync`
- `impl ErasedDestructor for T` where `T: 'static`
- `impl MaybeSend for T` (two implementations)
