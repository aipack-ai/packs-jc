# Session

Re-export Lance Session and ObjectStoreRegistry for custom session creation.

A user session holds the runtime state for a [`crate::Dataset`](https://docs.rs/lance/7.0.0/x86_64-unknown-linux-gnu/lance/dataset/struct.Dataset.html). A session will be created automatically when a Dataset is opened. However, you can manually create the session and provide it to the Dataset builder in order to share runtime state between multiple datasets. This can be used to share caches between multiple datasets, increasing the hit rate and reducing the amount of memory used.

A session contains two different caches:

- The index cache is used to cache opened indices and will cache index data.
- The metadata cache is used to cache a variety of dataset metadata (more details can be found in the [performance guide](https://lance.org/guide/performance/)).

## Implementations

### `impl Session`

```rust
pub fn new(
    index_cache_size: usize,
    metadata_cache_size: usize,
    store_registry: Arc<ObjectStoreRegistry>
) -> Session
```

Create a new session.

**Parameters:**

- `index_cache_size`: the size of the index cache.
- `metadata_cache_size`: the size of the metadata cache.
- `store_registry`: the object store registry to use when opening datasets.

```rust
pub fn with_index_cache_backend(
    index_cache_backend: Arc<dyn CacheBackend>,
    metadata_cache_size: usize,
    store_registry: Arc<ObjectStoreRegistry>
) -> Session
```

Create a session with a custom index cache backend.

```rust
pub fn register_index_extension(
    &mut self,
    name: String,
    extension: Arc<dyn IndexExtension>
) -> Result<(), Error>
```

Register a new index extension. A name can only be registered once per type of index extension.

**Parameters:**

- `name`: the name of the extension.
- `extension`: the extension to register.

```rust
pub fn size_bytes(&self) -> u64
```

Return the current size of the session in bytes. This is not trivial to compute.

```rust
pub fn approx_num_items(&self) -> usize
```

Get the approximate number of items in the session. This is a rough estimate.

```rust
pub fn store_registry(&self) -> Arc<ObjectStoreRegistry>
```

Get the object store registry.

```rust
pub fn file_metadata_cache(&self) -> &LanceCache
```

Get a reference to the raw metadata cache (for use in index reconstruction).

```rust
pub async fn metadata_cache_stats(&self) -> CacheStats
```

Fetch statistics for the metadata cache.

```rust
pub async fn index_cache_stats(&self) -> CacheStats
```

Fetch statistics for the index cache.

## Trait Implementations

### `impl Clone for Session`

```rust
fn clone(&self) -> Session
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for Session`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
```

### `impl DeepSizeOf for Session`

```rust
fn deep_size_of_children(&self, context: &mut Context) -> usize
fn deep_size_of(&self) -> usize
```

### `impl Default for Session`

```rust
fn default() -> Session
```

### `impl Freeze for Session`

### `impl RefUnwindSafe for Session` (not implemented)

### `impl Send for Session`

### `impl Sync for Session`

### `impl Unpin for Session`

### `impl UnsafeUnpin for Session`

### `impl UnwindSafe for Session` (not implemented)

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
- `impl ArchivePointee for T`
- `impl Borrow<T> for T` where `T: ?Sized`
- `impl BorrowMut<T> for T` where `T: ?Sized`
- `impl CloneToUninit for T` where `T: Clone`
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T` where `T: Clone`
- `impl ErasedDestructor for T` where `T: 'static`
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl FromRef<T> for T` where `T: Clone`
- `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness`, `T: ?Sized`
- `impl Identity for T` where `T: ?Sized`
- `impl Instrument for T`
- `impl Into<U> for T` where `U: From<T>`
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`
- `impl LayoutRaw for T`
- `impl MaybeSend for T` where `T: Send`
- `impl Niching<NichedOption<T, N1>> for N2` where ...
- `impl Pipe for T` where `T: ?Sized`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T` where `T: ?Sized`
- `impl ResultError for E` where `E: Send + Debug + Sync`
- `impl ResultType for T` where `T: Send + Clone + Sync + Debug`
- `impl Same for T`
- `impl Tap for T`
- `impl ToOwned for T` where `T: Clone`
- `impl TryConv for T`
- `impl TryFrom<U> for T` where `U: Into<T>`
- `impl TryInto<U> for T` where `U: TryFrom<T>`
- `impl TryInto<U> for T` (async version)
- `impl VZip<V> for T` where `V: MultiLane`
- `impl WithSubscriber for T`
