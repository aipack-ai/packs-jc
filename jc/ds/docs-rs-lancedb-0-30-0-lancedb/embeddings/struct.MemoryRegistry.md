# MemoryRegistry in lancedb::embeddings

## Struct MemoryRegistry

A [`EmbeddingRegistry`] that uses in-memory [`HashMap`]s.

```text
pub struct MemoryRegistry { /* private fields */ }
```

## Implementations

### `impl MemoryRegistry`

```text
pub fn new() -> Self
```

Create a new `MemoryRegistry`

## Trait Implementations

### `impl Clone for MemoryRegistry`

```text
fn clone(&self) -> MemoryRegistry
```

Returns a duplicate of the value.

```text
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### `impl Debug for MemoryRegistry`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `impl Default for MemoryRegistry`

```text
fn default() -> MemoryRegistry
```

Returns the "default value" for a type.

### `impl EmbeddingRegistry for MemoryRegistry`

```text
fn functions(&self) -> HashSet<String>
```

Return the names of all registered embedding functions.

```text
fn register(
    &self,
    name: &str,
    function: Arc<dyn EmbeddingFunction>,
) -> Result<()>
```

Register a new EmbeddingFunction. Returns an error if the function can not be registered.

```text
fn get(&self, name: &str) -> Option<Arc<dyn EmbeddingFunction>>
```

Get an embedding function by name.

## Auto Trait Implementations

- `impl Freeze for MemoryRegistry`
- `impl RefUnwindSafe for MemoryRegistry`
- `impl Send for MemoryRegistry`
- `impl Sync for MemoryRegistry`
- `impl Unpin for MemoryRegistry`
- `impl UnsafeUnpin for MemoryRegistry`
- `impl UnwindSafe for MemoryRegistry`

## Blanket Implementations

- `impl Any for T` where T: 'static + ?Sized
- `impl ArchivePointee for T`
- `impl Borrow<T> for T` where T: ?Sized
- `impl BorrowMut<T> for T` where T: ?Sized
- `impl CloneToUninit for T` where T: Clone
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T` where T: Clone
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl FromRef<T> for T` where T: Clone
- `impl HasTypeWitness<W> for T` where W: MakeTypeWitness, T: ?Sized
- `impl Identity for T` where T: ?Sized
- `impl Instrument for T`
- `impl Into<U> for T` where U: From<T>
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared` where Shared: FromUnshared
- `impl LayoutRaw for T`
- `impl Niching<NichedOption<T, N1>> for N2` where T: SharedNiching, N1: Niching, N2: Niching
- `impl Pipe for T` where T: ?Sized
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T` where T: ?Sized
- `impl ResultError for E` where E: Send + Debug + Sync
- `impl ResultType for T` where T: Send + Clone + Sync + Debug
- `impl Same for T`
- `impl Tap for T`
- `impl ToOwned for T` where T: Clone
- `impl TryConv for T`
- `impl TryFrom<U> for T` where U: Into<T>
- `impl TryInto<U> for T` where U: TryFrom<T>
- `impl TryInto<U> for T` (async-convert) where U: TryFrom<T>
- `impl VZip<V> for T` where V: MultiLane
- `impl WithSubscriber for T`
- `impl Allocation for T` where T: RefUnwindSafe + Send + Sync
- `impl ErasedDestructor for T` where T: 'static
- `impl MaybeSend for T` where T: Send (two implementations)
