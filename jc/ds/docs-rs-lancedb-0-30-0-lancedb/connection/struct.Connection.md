# Connection in lancedb::connection

[Source](../../src/lancedb/connection.rs.html#337-340)

```
pub struct Connection { /* private fields */ }
```

**Expand description**  
A connection to LanceDB

---

## Implementations

### impl Connection

[Source](../../src/lancedb/connection.rs.html#348-565)

```rust
pub fn new(
    internal: Arc<Database>,
    embedding_registry: Arc<EmbeddingRegistry>,
) -> Self
```

---

```rust
pub fn uri(&self) -> &str
```

Get the URI of the connection.

---

```rust
pub fn database(&self) -> &Arc<Database>
```

Get access to the underlying database.

---

```rust
pub fn table_names(&self) -> TableNamesBuilder
```

Get the names of all tables in the database. The names will be returned in lexicographical order (ascending). The parameters `page_token` and `limit` can be used to paginate the results.

---

```rust
pub fn create_table<T: Scannable + 'static>(
    &self,
    name: impl Into<String>,
    initial_data: T,
) -> CreateTableBuilder
```

Create a new table from an iterator of data.

**Parameters**
- `name` – The name of the table
- `initial_data` – The initial data to write to the table

---

```rust
pub fn create_empty_table(
    &self,
    name: impl Into<String>,
    schema: SchemaRef,
) -> CreateTableBuilder
```

Create an empty table with a given schema.

**Parameters**
- `name` – The name of the table
- `schema` – The schema of the table

---

```rust
pub fn open_table(
    &self,
    name: impl Into<String>,
) -> OpenTableBuilder
```

Open an existing table in the database.

**Arguments**
- `name` – The name of the table

**Returns**  
Created `TableRef`, or `Error::TableNotFound` if the table does not exist.

---

```rust
pub fn clone_table(
    &self,
    target_table_name: impl Into<String>,
    source_uri: impl Into<String>,
) -> CloneTableBuilder
```

Clone a table in the database. Creates a new table by cloning from an existing source table. By default, this performs a shallow clone where the new table shares the underlying data files with the source table.

**Parameters**
- `target_table_name` – The name of the new table to create
- `source_uri` – The URI of the source table to clone from

**Returns**  
A `CloneTableBuilder` that can be used to configure the clone operation.

---

```rust
pub async fn rename_table(
    &self,
    old_name: impl AsRef<str>,
    new_name: impl AsRef<str>,
    cur_namespace_path: &[String],
    new_namespace_path: &[String],
) -> Result<()>
```

Rename a table in the database. This is only supported in LanceDB Cloud.

---

```rust
pub async fn read_consistency(&self) -> Result<ReadConsistency>
```

Get the read consistency of the connection.

---

```rust
pub async fn drop_table(
    &self,
    name: impl AsRef<str>,
    namespace_path: &[String],
) -> Result<()>
```

Drop a table in the database.

**Arguments**
- `name` – The name of the table to drop
- `namespace_path` – The namespace path to drop the table from

---

```rust
pub async fn drop_db(&self) -> Result<()>
```

👎Deprecated since 0.15.1: Use `drop_all_tables` instead. Drop the database – same as dropping all of the tables.

---

```rust
pub async fn drop_all_tables(
    &self,
    namespace_path: &[String],
) -> Result<()>
```

Drops all tables in the database.

**Arguments**
- `namespace_path` – The namespace path to drop all tables from. Empty slice represents root namespace.

---

```rust
pub async fn list_namespaces(
    &self,
    request: ListNamespacesRequest,
) -> Result<ListNamespacesResponse>
```

List immediate child namespace names in the given namespace.

---

```rust
pub async fn create_namespace(
    &self,
    request: CreateNamespaceRequest,
) -> Result<CreateNamespaceResponse>
```

Create a new namespace.

---

```rust
pub async fn drop_namespace(
    &self,
    request: DropNamespaceRequest,
) -> Result<DropNamespaceResponse>
```

Drop a namespace.

---

```rust
pub async fn describe_namespace(
    &self,
    request: DescribeNamespaceRequest,
) -> Result<DescribeNamespaceResponse>
```

Describe a namespace.

---

```rust
pub async fn namespace_client(&self) -> Result<Arc<LanceNamespace>>
```

Get the equivalent namespace client in the database of this connection.

---

```rust
pub async fn namespace_client_config(
    &self,
) -> Result<(String, HashMap<String, String>)>
```

Get the configuration for constructing an equivalent namespace client. Returns `(impl_type, properties)` where:
- `impl_type`: "dir" for DirectoryNamespace, "rest" for RestNamespace
- `properties`: configuration properties for the namespace

---

```rust
pub async fn list_tables(
    &self,
    request: ListTablesRequest,
) -> Result<ListTablesResponse>
```

List tables with pagination support.

---

```rust
pub fn embedding_registry(&self) -> &dyn EmbeddingRegistry
```

Get the in-memory embedding registry. It’s important to note that the embedding registry is not persisted across connections. So if a table contains embeddings, you will need to make sure that you are using a connection that has the same embedding functions registered.

---

## Trait Implementations

### impl Clone for Connection

[Source](../../src/lancedb/connection.rs.html#336)

```rust
fn clone(&self) -> Connection
```

```rust
fn clone_from(&mut self, source: &Self)
```

### impl Display for Connection

[Source](../../src/lancedb/connection.rs.html#342-346)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

---

## Auto Trait Implementations

- `impl !RefUnwindSafe for Connection`
- `impl !UnwindSafe for Connection`
- `impl Freeze for Connection`
- `impl Send for Connection`
- `impl Sync for Connection`
- `impl Unpin for Connection`
- `impl UnsafeUnpin for Connection`

---

## Blanket Implementations

- `Any` (where T: 'static + ?Sized)
- `ArchivePointee`
- `Borrow<T>` (where T: ?Sized)
- `BorrowMut<T>` (where T: ?Sized)
- `CloneToUninit` (where T: Clone)
- `Conv`
- `DropFlavorWrapper<T>`
- `DynClone` (where T: Clone)
- `ErasedDestructor` (where T: 'static)
- `FmtForward`
- `From<T>`
- `FromRef<T>` (where T: Clone)
- `HasTypeWitness<W>` (where W: MakeTypeWitness, T: ?Sized)
- `Identity` (where T: ?Sized)
- `Instrument`
- `Into<U>` (where U: From<T>)
- `IntoEither`
- `IntoShared<Shared> for Unshared`
- `LayoutRaw`
- `MaybeSend` (where T: Send) – two implementations
- `Niching<NichedOption<T, N1>> for N2`
- `Pipe` (where T: ?Sized)
- `Pointable`
- `Pointee`
- `PolicyExt` (where T: ?Sized)
- `Same`
- `Tap` (where T: ?Sized)
- `ToOwned` (where T: Clone)
- `ToString` (where T: Display + ?Sized)
- `TryConv`
- `TryFrom<U>` (where U: Into<T>)
- `TryInto<U>` (where U: TryFrom<T>) – two implementations
- `VZip<V>` (where V: MultiLane)
- `WithSubscriber`

---

## In lancedb::connection

Back to [lancedb](../index.html)::[connection](index.html)
