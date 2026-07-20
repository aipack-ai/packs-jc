# ObjectStoreRegistry in lancedb - Rust

## Struct ObjectStoreRegistry

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#106)

```rust
pub struct ObjectStoreRegistry { /* private fields */ }
```

A registry of object store providers.

Use [`Self::default()`](struct.ObjectStoreRegistry.html#method.default) to create one with the available default providers. This includes (depending on features enabled):
- `memory`: An in-memory object store.
- `file`: A local file object store, with optimized code paths.
- `file-object-store`: A local file object store that uses the ObjectStore API, for all operations. Used for testing with ObjectStore wrappers.
- `file+uring`: A local file object store using io_uring (Linux only).
- `s3`: An S3 object store.
- `s3+ddb`: An S3 object store with DynamoDB for metadata.
- `az`: An Azure Blob Storage object store.
- `gs`: A Google Cloud Storage object store.

Use [`Self::empty()`](struct.ObjectStoreRegistry.html#method.empty) to create an empty registry, with no providers registered.

The registry also caches object stores that are currently in use. It holds weak references to the object stores, so they are not held onto. If an object store is no longer in use, it will be removed from the cache on the next call to either [`Self::active_stores()`](struct.ObjectStoreRegistry.html#method.active_stores) or [`Self::get_store()`](struct.ObjectStoreRegistry.html#method.get_store).

## Implementations

### impl ObjectStoreRegistry

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#117)

#### pub fn empty() -> ObjectStoreRegistry

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#122)

```rust
pub fn empty() -> ObjectStoreRegistry
```

Create a new registry with no providers registered.

Typically, you want to use [`Self::default()`](struct.ObjectStoreRegistry.html#method.default) instead, so you get the default providers.

#### pub fn get_provider(&self, scheme: &str) -> Option<Arc<dyn ObjectStoreProvider>>

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#132)

```rust
pub fn get_provider(&self, scheme: &str) -> Option<Arc<dyn ObjectStoreProvider>>
```

Get the object store provider for a given scheme.

#### pub fn active_stores(&self) -> Vec<Arc<ObjectStore>>

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#144)

```rust
pub fn active_stores(&self) -> Vec<Arc<ObjectStore>>
```

Get a list of all active object stores.

Calling this will also clean up any weak references to object stores that are no longer valid.

#### pub fn stats(&self) -> ObjectStoreRegistryStats

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#176)

```rust
pub fn stats(&self) -> ObjectStoreRegistryStats
```

Get cache statistics for monitoring and debugging.

Returns the number of cache hits, misses, and currently active stores. This is useful for detecting configuration issues that cause excessive cache misses (e.g., storage options that vary per-request).

#### pub async fn get_store(&self, base_path: Url, params: &ObjectStoreParams) -> Result<Arc<ObjectStore>, Error>

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#203-207)

```rust
pub async fn get_store(
    &self,
    base_path: Url,
    params: &ObjectStoreParams,
) -> Result<Arc<ObjectStore>, Error>
```

Get an object store for a given base path and parameters.

If the object store is already in use, it will return a strong reference to the object store. If the object store is not in use, it will create a new object store and return a strong reference to it.

#### pub fn calculate_object_store_prefix(&self, uri: &str, storage_options: Option<&HashMap<String, String>>) -> Result<String, Error>

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#272-276)

```rust
pub fn calculate_object_store_prefix(
    &self,
    uri: &str,
    storage_options: Option<&HashMap<String, String>>,
) -> Result<String, Error>
```

Calculate the datastore prefix based on the URI and the storage options. The data store prefix should uniquely identify the datastore.

### impl ObjectStoreRegistry

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#342)

#### pub fn insert(&self, scheme: &str, provider: Arc<dyn ObjectStoreProvider>)

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#345)

```rust
pub fn insert(&self, scheme: &str, provider: Arc<dyn ObjectStoreProvider>)
```

Add a new object store provider to the registry. The provider will be used in [`Self::get_store()`](struct.ObjectStoreRegistry.html#method.get_store) when a URL is passed with a matching scheme.

## Trait Implementations

### impl Debug for ObjectStoreRegistry

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#105)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
```

Formats the value using the given formatter.

### impl Default for ObjectStoreRegistry

[Source](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/src/lance_io/object_store/providers.rs.html#291)

```rust
fn default() -> ObjectStoreRegistry
```

Returns the "default value" for a type.

## Auto Trait Implementations

- !Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- **Allocation** for T where T: RefUnwindSafe + Send + Sync
- **Any** for T where T: 'static + ?Sized

  ```rust
  fn type_id(&self) -> TypeId
  ```

- **ArchivePointee** for T

  ```rust
  type ArchivedMetadata = ()
  fn pointer_metadata(_: <ArchivePointee>::ArchivedMetadata) -> <Pointee>::Metadata
  ```

- **Borrow<T>** for T where T: ?Sized

  ```rust
  fn borrow(&self) -> &T
  ```

- **BorrowMut<T>** for T where T: ?Sized

  ```rust
  fn borrow_mut(&mut self) -> &mut T
  ```

- **Conv** for T

  ```rust
  fn conv(self) -> T where Self: Into<T>
  ```

- **DropFlavorWrapper<T>** for T

  ```rust
  type Flavor = MayDrop
  ```

- **ErasedDestructor** for T where T: 'static
- **FmtForward** for T

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

- **From<T>** for T

  ```rust
  fn from(t: T) -> T
  ```

- **HasTypeWitness<W>** for T where W: MakeTypeWitness, T: ?Sized

  ```rust
  const WITNESS: W = W::MAKE
  ```

- **Identity** for T where T: ?Sized

  ```rust
  const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW
  type Type = T
  ```

- **Instrument** for T

  ```rust
  fn instrument(self, span: Span) -> Instrumented
  fn in_current_span(self) -> Instrumented
  ```

- **Into<U>** for T where U: From<T>

  ```rust
  fn into(self) -> U
  ```

- **IntoEither** for T

  ```rust
  fn into_either(self, into_left: bool) -> Either
  fn into_either_with(self, into_left: F) -> Either
  ```

- **IntoShared<Shared>** for Unshared where Shared: FromUnshared

  ```rust
  fn into_shared(self) -> Shared
  ```

- **LayoutRaw** for T

  ```rust
  fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>
  ```

- **MaybeSend** (two implementations) for T where T: Send
- **Niching<NichedOption<T, N1>>** for N2

  ```rust
  unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool
  fn resolve_niched(out: Place<NichedOption<T, N1>>)
  ```

- **Pipe** for T where T: ?Sized

  Multiple methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`

- **Pointable** for T

  ```rust
  const ALIGN: usize
  type Init = T
  unsafe fn init(init: <Pointable>::Init) -> usize
  unsafe fn deref<'a>(ptr: usize) -> &'a T
  unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
  unsafe fn drop(ptr: usize)
  ```

- **Pointee** for T

  ```rust
  type Metadata = ()
  ```

- **PolicyExt** for T where T: ?Sized

  ```rust
  fn and(self, other: P) -> And
  fn or(self, other: P) -> Or
  ```

- **ResultError** for E where E: Send + Debug + Sync
- **Same** for T

  ```rust
  type Output = T
  ```

- **Tap** for T

  Multiple methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`

- **TryConv** for T

  ```rust
  fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>
  ```

- **TryFrom<U>** for T where U: Into<T>

  ```rust
  type Error = Infallible
  fn try_from(value: U) -> Result<T, <TryFrom<U> as TryFrom<U>>::Error>
  ```

- **TryInto<U>** for T where U: TryFrom<T> (two implementations)

  ```rust
  type Error = <U as TryFrom<T>>::Error
  fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
  ```

- **VZip<V>** for T where V: MultiLane

  ```rust
  fn vzip(self) -> V
  ```

- **WithSubscriber** for T

  ```rust
  fn with_subscriber(self, subscriber: S) -> WithDispatch
  fn with_current_subscriber(self) -> WithDispatch
  ```
