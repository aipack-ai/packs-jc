# LanceNamespaceDatabase

## In `lancedb::database::namespace`

Struct `LanceNamespaceDatabase` — A database implementation that uses lance-namespace for table management.

```rust
pub struct LanceNamespaceDatabase { /* private fields */ }
```

## Implementations

### `from_namespace_client`

```rust
pub fn from_namespace_client(
    namespace_client: Arc<LanceNamespace>,
    namespace_client_impl: String,
    namespace_client_properties: HashMap<String, String>,
    storage_options: HashMap<String, String>,
    read_consistency_interval: Option<Duration>,
    session: Option<Arc<Session>>,
    namespace_client_pushdown_operations: HashSet<NamespaceClientPushdownOperation>,
) -> Self
```

### `connect`

```rust
pub async fn connect(
    ns_impl: &str,
    ns_properties: HashMap<String, String>,
    storage_options: HashMap<String, String>,
    read_consistency_interval: Option<Duration>,
    session: Option<Arc<Session>>,
    pushdown_operations: HashSet<NamespaceClientPushdownOperation>,
) -> Result<()>
```

## Trait Implementations

### `Database` for `LanceNamespaceDatabase`

Methods:

- `fn uri(&self) -> &str` — Get the uri of the database.
- `fn read_consistency<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<ReadConsistency>> + Send + 'async_trait>>` — Get the read consistency of the database.
- `fn list_namespaces<'life0, 'async_trait>(&'life0 self, request: ListNamespacesRequest) -> Pin<Box<dyn Future<Output = Result<ListNamespacesResponse>> + Send + 'async_trait>>` — List immediate child namespace names in the given namespace.
- `fn create_namespace<'life0, 'async_trait>(&'life0 self, request: CreateNamespaceRequest) -> Pin<Box<dyn Future<Output = Result<CreateNamespaceResponse>> + Send + 'async_trait>>` — Create a new namespace.
- `fn drop_namespace<'life0, 'async_trait>(&'life0 self, request: DropNamespaceRequest) -> Pin<Box<dyn Future<Output = Result<DropNamespaceResponse>> + Send + 'async_trait>>` — Drop a namespace.
- `fn describe_namespace<'life0, 'async_trait>(&'life0 self, request: DescribeNamespaceRequest) -> Pin<Box<dyn Future<Output = Result<DescribeNamespaceResponse>> + Send + 'async_trait>>` — Describe a namespace (get its properties).
- `fn table_names<'life0, 'async_trait>(&'life0 self, request: TableNamesRequest) -> Pin<Box<dyn Future<Output = Result<Vec<String>>> + Send + 'async_trait>>` — 👎Deprecated: Use `list_tables` instead.
- `fn list_tables<'life0, 'async_trait>(&'life0 self, request: ListTablesRequest) -> Pin<Box<dyn Future<Output = Result<ListTablesResponse>> + Send + 'async_trait>>` — List tables in the database with pagination support.
- `fn create_table<'life0, 'async_trait>(&'life0 self, request: DbCreateTableRequest) -> Pin<Box<dyn Future<Output = Result<Arc<dyn BaseTable>>> + Send + 'async_trait>>` — Create a table in the database.
- `fn open_table<'life0, 'async_trait>(&'life0 self, request: OpenTableRequest) -> Pin<Box<dyn Future<Output = Result<Arc<dyn BaseTable>>> + Send + 'async_trait>>` — Open a table in the database.
- `fn clone_table<'life0, 'async_trait>(&'life0 self, _request: CloneTableRequest) -> Pin<Box<dyn Future<Output = Result<Arc<dyn BaseTable>>> + Send + 'async_trait>>` — Clone a table in the database.
- `fn rename_table<'life0, 'life1, 'life2, 'life3, 'life4, 'async_trait>(&'life0 self, _cur_name: &'life1 str, _new_name: &'life2 str, _cur_namespace_path: &'life3 [String], _new_namespace_path: &'life4 [String]) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>` — Rename a table in the database.
- `fn drop_table<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, name: &'life1 str, namespace_path: &'life2 [String]) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>` — Drop a table in the database.
- `fn drop_all_tables<'life0, 'life1, 'async_trait>(&'life0 self, namespace_path: &'life1 [String]) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>` — Drop all tables in the database.
- `fn as_any(&self) -> &dyn Any`
- `fn namespace_client<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Arc<LanceNamespace>>> + Send + 'async_trait>>` — Get the equivalent namespace client of this database.
- `fn namespace_client_config<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<(String, HashMap<String, String>)>> + Send + 'async_trait>>` — Get the configuration for constructing an equivalent namespace client.

### `Debug` for `LanceNamespaceDatabase`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `Display` for `LanceNamespaceDatabase`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

## Auto Trait Implementations

- `Freeze` for `LanceNamespaceDatabase`
- `!RefUnwindSafe` for `LanceNamespaceDatabase`
- `Send` for `LanceNamespaceDatabase`
- `Sync` for `LanceNamespaceDatabase`
- `Unpin` for `LanceNamespaceDatabase`
- `UnsafeUnpin` for `LanceNamespaceDatabase`
- `!UnwindSafe` for `LanceNamespaceDatabase`

## Blanket Implementations

- `Any` for T where T: 'static + ?Sized
- `ArchivePointee` for T
- `Borrow<T>` for T where T: ?Sized
- `BorrowMut<T>` for T where T: ?Sized
- `Conv` for T
- `DropFlavorWrapper<T>` for T
- `ErasedDestructor` for T where T: 'static
- `FmtForward` for T
- `From<T>` for T
- `HasTypeWitness<W>` for T where W: MakeTypeWitness, T: ?Sized
- `Identity` for T where T: ?Sized
- `Instrument` for T
- `Into<U>` for T where U: From<T>
- `IntoEither` for T
- `IntoShared<Shared>` for Unshared where Shared: FromUnshared
- `LayoutRaw` for T
- `MaybeSend` for T where T: Send (two implementations)
- `Niching<NichedOption<T, N1>>` for N2 where T: SharedNiching, N1: Niching, N2: Niching
- `Pipe` for T where T: ?Sized
- `Pointable` for T
- `Pointee` for T
- `PolicyExt` for T where T: ?Sized
- `ResultError` for E where E: Send + Debug + Sync
- `Same` for T
- `Tap` for T
- `ToString` for T where T: Display + ?Sized
- `TryConv` for T
- `TryFrom<U>` for T where U: Into<T>
- `TryInto<U>` for T where U: TryFrom<T>
- `TryInto<U>` for T where U: TryFrom<T> (async-convert)
- `VZip<V>` for T where V: MultiLane
- `WithSubscriber` for T

## Source

- Struct definition: `src/lancedb/database/namespace.rs.html#55-73`
- Implementations: `src/lancedb/database/namespace.rs.html#75-225`
- Database trait impl: `src/lancedb/database/namespace.rs.html#244-547`
- Debug impl: `src/lancedb/database/namespace.rs.html#227-235`
- Display impl: `src/lancedb/database/namespace.rs.html#237-241`
