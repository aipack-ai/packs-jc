# OpenTableBuilder in lancedb::connection - Rust

## Struct OpenTableBuilder

```text
pub struct OpenTableBuilder { /* private fields */ }
```

## Implementations

### impl OpenTableBuilder

#### `pub fn index_cache_size(self, index_cache_size: u32) -> Self`

Set the size of the index cache, specified as a number of entries. The default value is 256. The exact meaning of an “entry” depends on the index type:
- IVF – one entry for each IVF partition
- BTREE – one entry for the entire index  
This cache applies to the entire opened table, across all indices. Setting this value higher will increase performance on larger datasets at the expense of more RAM.

#### `pub fn lance_read_params(self, params: ReadParams) -> Self`

Advanced parameters that can be used to customize table reads. If set, these will take precedence over any overlapping `OpenTableOptions` options.

#### `pub fn storage_option(self, key: impl Into<String>, value: impl Into<String>) -> Self`

Set an option for the storage layer. Options already set on the connection will be inherited by the table, but can be overridden here. See available options at [https://docs.lancedb.com/storage/](https://docs.lancedb.com/storage/).

#### `pub fn storage_options(self, pairs: impl IntoIterator<Item = (impl Into<String>, impl Into<String>)>) -> Self`

Set multiple options for the storage layer. Options already set on the connection will be inherited by the table, but can be overridden here. See available options at [https://docs.lancedb.com/storage/](https://docs.lancedb.com/storage/).

#### `pub fn namespace(self, namespace_path: Vec<String>) -> Self`

Set the namespace path for the table.

#### `pub fn location(self, location: impl Into<String>) -> Self`

Set a custom location for the table. If not set, the database will derive a location from its URI and the table name. Useful when integrating with namespace systems that manage table locations.

#### `pub fn storage_options_provider(self, provider: Arc<StorageOptionsProvider>) -> Self`

Set a storage options provider for automatic credential refresh. This allows tables to automatically refresh cloud storage credentials when they expire, enabling long‑running operations on remote storage.

#### `pub fn namespace_client(self, client: Arc<LanceNamespace>) -> Self`

Set a namespace client for managed versioning support. When a namespace client is provided and the table has `managed_versioning` enabled, the table will use the namespace’s commit handler to notify the namespace of version changes. This enables features like event emission for table modifications.

#### `pub fn managed_versioning(self, enabled: bool) -> Self`

Set whether managed versioning is enabled for this table. When set to `Some(true)`, the table will use namespace‑managed commits. When set to `Some(false)`, the table will use local commits even if `namespace_client` is set. When set to `None` (default), the value will be fetched from the namespace if `namespace_client` is set. Typically set when the caller has already queried the namespace and knows the `managed_versioning` status, avoiding a redundant `describe_table` call.

#### `pub async fn execute(self) -> Result<Table>`

Open the table.

## Trait Implementations

### impl Clone for OpenTableBuilder

```text
fn clone(&self) -> OpenTableBuilder
fn clone_from(&mut self, source: &Self)
```

### impl Debug for OpenTableBuilder

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

## Auto Trait Implementations

- `impl Freeze for OpenTableBuilder`
- `impl !RefUnwindSafe for OpenTableBuilder`
- `impl Send for OpenTableBuilder`
- `impl Sync for OpenTableBuilder`
- `impl Unpin for OpenTableBuilder`
- `impl UnsafeUnpin for OpenTableBuilder`
- `impl !UnwindSafe for OpenTableBuilder`

## Blanket Implementations

- `impl Any for T` where T: 'static + ?Sized  
  `fn type_id(&self) -> TypeId`
- `impl ArchivePointee for T`  
  `type ArchivedMetadata = ()`  
  `fn pointer_metadata( _: &<ArchivePointee>::ArchivedMetadata) -> <<Pointee>::Metadata>`
- `impl Borrow<T> for T` where T: ?Sized  
  `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T` where T: ?Sized  
  `fn borrow_mut(&mut self) -> &mut T`
- `impl CloneToUninit for T` where T: Clone  
  `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl Conv for T`  
  `fn conv(self) -> T`
- `impl DropFlavorWrapper<T> for T`  
  `type Flavor = MayDrop`
- `impl DynClone for T` where T: Clone  
  `fn __clone_box(&self, _: Private) -> *mut ()`
- `impl FmtForward for T`  
  (methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list`)
- `impl From<T> for T`  
  `fn from(t: T) -> T`
- `impl FromRef<T> for T` where T: Clone  
  `fn from_ref(input: &T) -> T`
- `impl HasTypeWitness<W> for T` where W: MakeTypeWitness, T: ?Sized  
  `const WITNESS: W = W::MAKE`
- `impl Identity for T` where T: ?Sized  
  `const TYPE_EQ: TypeEq<<Identity as Identity>::Type> = TypeEq::NEW`  
  `type Type = T`
- `impl Instrument for T`  
  `fn instrument(self, span: Span) -> Instrumented`  
  `fn in_current_span(self) -> Instrumented`
- `impl Into<U> for T` where U: From<T>  
  `fn into(self) -> U`
- `impl IntoEither for T`  
  `fn into_either(self, into_left: bool) -> Either`  
  `fn into_either_with(self, into_left: F) -> Either`
- `impl IntoShared<Shared> for Unshared` where Shared: FromUnshared  
  `fn into_shared(self) -> Shared`
- `impl LayoutRaw for T`  
  `fn layout_raw(_: <<Pointee>::Metadata>) -> Result<Layout, LayoutError>`
- `impl Niching<NichedOption<T, N1>> for N2` where T: SharedNiching, N1: Niching, N2: Niching  
  `unsafe fn is_niched(niched: *const NichedOption) -> bool`  
  `fn resolve_niched(out: Place<NichedOption>)`
- `impl Pipe for T` where T: ?Sized  
  (methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`)
- `impl Pointable for T`  
  `const ALIGN: usize`  
  `type Init = T`  
  `unsafe fn init(init: <T as Pointable>::Init) -> usize`  
  `unsafe fn deref<'a>(ptr: usize) -> &'a T`  
  `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`  
  `unsafe fn drop(ptr: usize)`
- `impl Pointee for T`  
  `type Metadata = ()`
- `impl PolicyExt for T` where T: ?Sized  
  `fn and(self, other: P) -> And`  
  `fn or(self, other: P) -> Or`
- `impl Same for T`  
  `type Output = T`
- `impl Tap for T`  
  (methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`)
- `impl ToOwned for T` where T: Clone  
  `type Owned = T`  
  `fn to_owned(&self) -> T`  
  `fn clone_into(&self, target: &mut T)`
- `impl TryConv for T`  
  `fn try_conv(self) -> Result<T, Error>`
- `impl TryFrom<U> for T` where U: Into<T>  
  `type Error = Infallible`  
  `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl TryInto<U> for T` where U: TryFrom<T>  
  `type Error = <U as TryFrom<T>>::Error`  
  `fn try_into(self) -> Result<U, Self::Error>`
- `impl TryInto<U> for T` (async version) where U: TryFrom<T>  
  `type Error = <U as TryFrom<T>>::Error`  
  `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>>`
- `impl VZip<V> for T` where V: MultiLane  
  `fn vzip(self) -> V`
- `impl WithSubscriber for T`  
  `fn with_subscriber(self, subscriber: S) -> WithDispatch`  
  `fn with_current_subscriber(self) -> WithDispatch`
- `impl ErasedDestructor for T` where T: 'static
- `impl MaybeSend for T` where T: Send (two implementations)
- `impl ResultError for E` where E: Send + Debug + Sync
- `impl ResultType for T` where T: Send + Clone + Sync + Debug
