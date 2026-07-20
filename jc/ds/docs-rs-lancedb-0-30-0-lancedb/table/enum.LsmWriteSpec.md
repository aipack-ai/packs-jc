# LsmWriteSpec

In [lancedb::table](./index.html)

[Source](../../src/lancedb/table.rs.html#319-355)

```rust
pub enum LsmWriteSpec {
    Bucket {
        column: String,
        num_buckets: u32,
        maintained_indexes: Vec<String>,
        writer_config_defaults: HashMap<String, String>,
    },
    Identity {
        column: String,
        maintained_indexes: Vec<String>,
        writer_config_defaults: HashMap<String, String>,
    },
    Unsharded {
        maintained_indexes: Vec<String>,
        writer_config_defaults: HashMap<String, String>,
    },
}
```

Specification selecting Lance’s MemWAL LSM-style write path for `merge_insert`.

Construct via [`LsmWriteSpec::bucket`](#method.bucket), [`LsmWriteSpec::identity`](#method.identity), or [`LsmWriteSpec::unsharded`](#method.unsharded), then optionally chain [`LsmWriteSpec::with_maintained_indexes`](#method.with_maintained_indexes) (indexes the MemWAL keeps up to date) and [`LsmWriteSpec::with_writer_config_defaults`](#method.with_writer_config_defaults) (default `ShardWriter` configuration recorded in the MemWAL index).

Install a spec with [`Table::set_lsm_write_spec`] and remove it with [`Table::unset_lsm_write_spec`]. The actual `merge_insert` dispatch onto the MemWAL writer is a follow-up.

## Variants

### `Bucket`
Hash-bucket sharding by a scalar column.

`column` must be a non-nested column with a supported scalar type. `num_buckets` must be in `[1, 1024]`. Iceberg-compatible Murmur3-x86-32 (seed 0) is used so each row’s `bucket(column, num_buckets)` value is stable across processes.

**Fields**
- `column: String`
- `num_buckets: u32`
- `maintained_indexes: Vec<String>` – Names of indexes (already created on the table) that the MemWAL should maintain in-memory as rows are appended.
- `writer_config_defaults: HashMap<String, String>` – Default `ShardWriter` configuration recorded in the MemWAL index.

### `Identity`
Identity sharding — shard by the raw value of `column`.

Use this when the data is already partitioned by `column`; each distinct value of `column` becomes its own shard.

**Fields**
- `column: String`
- `maintained_indexes: Vec<String>`
- `writer_config_defaults: HashMap<String, String>`

### `Unsharded`
No sharding — every `merge_insert` call writes to a single MemWAL shard.

**Fields**
- `maintained_indexes: Vec<String>`
- `writer_config_defaults: HashMap<String, String>`

## Implementations

### `impl LsmWriteSpec`

```rust
pub fn bucket(column: impl Into<String>, num_buckets: u32) -> Self
```

Construct a hash-bucket sharding spec with no maintained indexes.

```rust
pub fn identity(column: impl Into<String>) -> Self
```

Construct an identity-sharding spec (shard by the raw value of `column`) with no maintained indexes.

```rust
pub fn unsharded() -> Self
```

Construct an unsharded spec with no maintained indexes.

```rust
pub fn with_maintained_indexes(self, indexes: I) -> Self
where
    I: IntoIterator,
    S: Into<String>,
```

Replace the list of indexes the MemWAL should keep up to date as rows are appended. Each name must reference an index that already exists on the table at the time `set_lsm_write_spec` is called.

```rust
pub fn with_writer_config_defaults(self, defaults: I) -> Self
where
    I: IntoIterator<(K, V)>,
    K: Into<String>,
    V: Into<String>,
```

Replace the default `ShardWriter` configuration recorded in the MemWAL index, so every writer starts from the same defaults. Keys are `ShardWriter` config field names (`Duration` knobs use a `_ms` suffix); values are their string encodings.

```rust
pub fn maintained_indexes(&self) -> &[String]
```

Borrow the list of index names this spec asks MemWAL to maintain.

```rust
pub fn writer_config_defaults(&self) -> &HashMap<String, String>
```

Borrow the default `ShardWriter` configuration recorded by this spec.

## Trait Implementations

### `impl Clone for LsmWriteSpec`

```rust
fn clone(&self) -> LsmWriteSpec
```

Returns a duplicate of the value. 1.0.0 (const: unstable).

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### `impl Debug for LsmWriteSpec`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `impl<'de> Deserialize<'de> for LsmWriteSpec`

```rust
fn deserialize<__D>(__deserializer: __D) -> Result<Self, __D::Error>
where __D: Deserializer<'de>
```

Deserialize this value from the given Serde deserializer.

### `impl PartialEq for LsmWriteSpec`

```rust
fn eq(&self, other: &LsmWriteSpec) -> bool
```

Tests for `self` and `other` values to be equal, and is used by `==`. 1.0.0 (const: unstable).

```rust
fn ne(&self, other: &Self) -> bool
```

Tests for `!=`.

### `impl Serialize for LsmWriteSpec`

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where __S: Serializer
```

Serialize this value into the given Serde serializer.

### `impl Eq for LsmWriteSpec`

(No methods, marker trait.)

### `impl StructuralPartialEq for LsmWriteSpec`

(No methods, marker trait.)

## Auto Trait Implementations

- `impl Freeze for LsmWriteSpec`
- `impl RefUnwindSafe for LsmWriteSpec`
- `impl Send for LsmWriteSpec`
- `impl Sync for LsmWriteSpec`
- `impl Unpin for LsmWriteSpec`
- `impl UnsafeUnpin for LsmWriteSpec`
- `impl UnwindSafe for LsmWriteSpec`

## Blanket Implementations

### `impl Any for T` where T: 'static + ?Sized

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `impl ArchivePointee for T`

```rust
type ArchivedMetadata = ()
```

The archived version of the pointer metadata for this type.

```rust
fn pointer_metadata( _: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata
```

Converts some archived metadata to the pointer metadata for itself.

### `impl Borrow<T> for T` where T: ?Sized

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `impl BorrowMut<T> for T` where T: ?Sized

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `impl CloneToUninit for T` where T: Clone

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

🔬 Nightly-only experimental API. Performs copy-assignment from `self` to `dest`.

### `impl Conv for T`

```rust
fn conv(self) -> T
where Self: Into<T>
```

Converts `self` into `T` using `Into`.

### `impl DropFlavorWrapper<T> for T`

```rust
type Flavor = MayDrop
```

The DropFlavor that wraps `T` into `Self`.

### `impl DynClone for T` where T: Clone

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### `impl DynEq for T` where T: Eq + Any

```rust
fn dyn_eq(&self, other: &(dyn Any + 'static)) -> bool
```

### `impl Equivalent<K> for Q` (multiple implementations from hashbrown and equivalent)

```rust
fn equivalent(&self, key: &K) -> bool
```

Checks if this value is equivalent to the given key.

### `impl FmtForward for T`

Methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list`.

### `impl From<T> for T`

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `impl FromRef<T> for T` where T: Clone

```rust
fn from_ref(input: &T) -> T
```

Converts to this type from a reference to the input type.

### `impl HasTypeWitness<W> for T` where W: MakeTypeWitness, T: ?Sized

```rust
const WITNESS: W = W::MAKE
```

A constant of the type witness.

### `impl Identity for T` where T: ?Sized

```rust
const TYPE_EQ: TypeEq<T, T> = TypeEq::NEW
type Type = T
```

Proof that `Self` is the same type as `Self::Type`.

### `impl Instrument for T`

```rust
fn instrument(self, span: Span) -> Instrumented
fn in_current_span(self) -> Instrumented
```

Instruments this type with the provided `Span` or the current `Span`.

### `impl Into<U> for T` where U: From<T>

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### `impl IntoEither for T`

```rust
fn into_either(self, into_left: bool) -> Either
fn into_either_with(self, into_left: F) -> Either
```

Converts `self` into a `Left` or `Right` variant of `Either`.

### `impl IntoShared<Shared> for Unshared` where Shared: FromUnshared

```rust
fn into_shared(self) -> Shared
```

Creates a shared type from an unshared type.

### `impl LayoutRaw for T`

```rust
fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>
```

Returns the layout of the type.

### `impl Niching<NichedOption<T, N1>> for N2` where T: SharedNiching, N1: Niching, N2: Niching

```rust
unsafe fn is_niched(niched: *const NichedOption) -> bool
fn resolve_niched(out: Place<NichedOption>)
```

### `impl Pipe for T` where T: ?Sized

Methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`.

### `impl Pointable for T`

```rust
const ALIGN: usize
type Init = T
unsafe fn init(init: T) -> usize
unsafe fn deref<'a>(ptr: usize) -> &'a T
unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
unsafe fn drop(ptr: usize)
```

### `impl Pointee for T`

```rust
type Metadata = ()
```

The metadata type for pointers and references to this type.

### `impl PolicyExt for T` where T: ?Sized

```rust
fn and(self, other: P) -> And
fn or(self, other: P) -> Or
```

### `impl Same for T`

```rust
type Output = T
```

Should always be `Self`.

### `impl Tap for T`

Methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`.

### `impl ToOwned for T` where T: Clone

```rust
type Owned = T
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### `impl TryConv for T`

```rust
fn try_conv(self) -> Result<T, Self::Error>
where Self: TryInto<T>
```

Attempts to convert `self` into `T` using `TryInto`.

### `impl TryFrom<U> for T` where U: Into<T>

```rust
type Error = Infallible
fn try_from(value: U) -> Result<T, Infallible>
```

Performs the conversion.

### `impl TryInto<U> for T` where U: TryFrom<T>

```rust
type Error = U::Error
fn try_into(self) -> Result<U, U::Error>
```

Performs the conversion.

### `impl VZip<V> for T` where V: MultiLane

```rust
fn vzip(self) -> V
```

### `impl WithSubscriber for T`

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
fn with_current_subscriber(self) -> WithDispatch
```

Attaches the provided or current `Subscriber` to this type.

### `impl Allocation for T` where T: RefUnwindSafe + Send + Sync

(No methods, marker trait.)

### `impl DeserializeOwned for T` where T: for<'de> Deserialize<'de>

(No methods, marker trait.)

### `impl ErasedDestructor for T` where T: 'static

(No methods, marker trait.)

### `impl MaybeSend for T` (multiple from opendal-core and reqsign-core) where T: Send

(No methods, marker trait.)

### `impl ResultError for E` where E: Send + Debug + Sync

(No methods, marker trait.)

### `impl ResultType for T` where T: Send + Clone + Sync + Debug

(No methods, marker trait.)
