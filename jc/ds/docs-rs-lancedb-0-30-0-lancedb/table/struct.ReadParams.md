# ReadParams in lancedb::table - Rust

## Struct ReadParams

Customize read behavior of a dataset.

```rust
pub struct ReadParams {
    pub index_cache_size_bytes: usize,
    pub metadata_cache_size_bytes: usize,
    pub session: Option<Arc<Session>>,
    pub store_options: Option<ObjectStoreParams>,
    pub commit_handler: Option<Arc<CommitHandler>>,
    pub file_reader_options: Option<FileReaderOptions>,
}
```

### Fields

- `index_cache_size_bytes: usize` — Size of the index cache in bytes. This cache stores index data in memory for faster lookups. The default is 6 GiB.
- `metadata_cache_size_bytes: usize` — Size of the metadata cache in bytes. This cache stores metadata in memory for faster open table and scans. The default is 1 GiB.
- `session: Option<Arc<Session>>` — If present, dataset will use this shared [`Session`] instead creating a new one. This is useful for sharing the same session across multiple datasets.
- `store_options: Option<ObjectStoreParams>` — Options for object store configuration.
- `commit_handler: Option<Arc<CommitHandler>>` — If present, dataset will use this to resolve the latest version. Lance needs atomic updates to the manifest. Some file systems (e.g., S3) do not support atomic operations; in that case an external commit mechanism is recommended. If a custom object store is provided, this must also be provided.
- `file_reader_options: Option<FileReaderOptions>` — File reader options to use when reading data files. This allows control over features like caching repetition indices and validation. Options set here act as dataset-level defaults and can be overridden per scan.

## Implementations

### `impl ReadParams`

- `pub fn index_cache_size(&mut self, cache_size: usize) -> &mut ReadParams`  
  *Deprecated since 0.30.0* — Use `index_cache_size_bytes` instead.

- `pub fn index_cache_size_bytes(&mut self, cache_size: usize) -> &mut ReadParams`  
  Set the cache size for indices in bytes.

- `pub fn metadata_cache_size(&mut self, cache_size: usize) -> &mut ReadParams`  
  *Deprecated since 0.30.0* — Use `metadata_cache_size_bytes` instead.

- `pub fn metadata_cache_size_bytes(&mut self, cache_size: usize) -> &mut ReadParams`  
  Set the cache size for file metadata in bytes.

- `pub fn session(&mut self, session: Arc<Session>) -> &mut ReadParams`  
  Set a shared session for the datasets.

- `pub fn set_commit_lock<T: CommitLock + Send + Sync + 'static>(&mut self, lock: Arc<T>)`  
  Use explicit locking to resolve the latest version.

- `pub fn file_reader_options(&mut self, options: FileReaderOptions) -> &mut ReadParams`  
  Set the file reader options.

## Trait Implementations

### `impl Clone for ReadParams`

- `fn clone(&self) -> ReadParams`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for ReadParams`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### `impl Default for ReadParams`

- `fn default() -> ReadParams`

### `impl PatchReadParam for ReadParams`

- `fn patch_with_store_wrapper(self, wrapper: Arc<WrappingObjectStore>) -> Result<ReadParams>`

## Auto Trait Implementations

- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!RefUnwindSafe`
- `!UnwindSafe`

## Blanket Implementations

The following blanket implementations are provided for all types (where applicable):

- `Any`
- `ArchivePointee`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `Conv`
- `DropFlavorWrapper`
- `DynClone`
- `FmtForward`
- `From<T>`
- `FromRef`
- `HasTypeWitness`
- `Identity`
- `Instrument`
- `Into<U>`
- `IntoEither`
- `IntoShared`
- `LayoutRaw`
- `MaybeSend` (two versions)
- `Niching`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError`
- `ResultType`
- `Same`
- `Tap`
- `ToOwned`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>` (two versions)
- `VZip`
- `WithSubscriber`
- `ErasedDestructor`
