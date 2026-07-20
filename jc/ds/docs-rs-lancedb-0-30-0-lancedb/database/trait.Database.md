# Database (lancedb::database)

The `Database` trait defines the interface for database implementations.
A database is responsible for managing tables and their metadata.

## Trait Definition

```text
pub trait Database:
    Send
    + Sync
    + Any
    + Debug
    + Display
    + 'static {
    // Required methods
    fn uri(&self) -> &str;
    fn read_consistency<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = ReadConsistency> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn list_namespaces<'life0, 'async_trait>(&'life0 self, request: ListNamespacesRequest) -> Pin<Box<dyn Future<Output = ListNamespacesResponse> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn create_namespace<'life0, 'async_trait>(&'life0 self, request: CreateNamespaceRequest) -> Pin<Box<dyn Future<Output = CreateNamespaceResponse> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn drop_namespace<'life0, 'async_trait>(&'life0 self, request: DropNamespaceRequest) -> Pin<Box<dyn Future<Output = DropNamespaceResponse> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn describe_namespace<'life0, 'async_trait>(&'life0 self, request: DescribeNamespaceRequest) -> Pin<Box<dyn Future<Output = DescribeNamespaceResponse> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn table_names<'life0, 'async_trait>(&'life0 self, request: TableNamesRequest) -> Pin<Box<dyn Future<Output = Vec<String>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn list_tables<'life0, 'async_trait>(&'life0 self, request: ListTablesRequest) -> Pin<Box<dyn Future<Output = ListTablesResponse> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn create_table<'life0, 'async_trait>(&'life0 self, request: CreateTableRequest) -> Pin<Box<dyn Future<Output = Arc<dyn BaseTable>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn clone_table<'life0, 'async_trait>(&'life0 self, request: CloneTableRequest) -> Pin<Box<dyn Future<Output = Arc<dyn BaseTable>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn open_table<'life0, 'async_trait>(&'life0 self, request: OpenTableRequest) -> Pin<Box<dyn Future<Output = Arc<dyn BaseTable>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn rename_table<'life0, 'life1, 'life2, 'life3, 'life4, 'async_trait>(
        &'life0 self,
        cur_name: &'life1 str,
        new_name: &'life2 str,
        cur_namespace_path: &'life3 [String],
        new_namespace_path: &'life4 [String],
    ) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait,
          'life0: 'async_trait,
          'life1: 'async_trait,
          'life2: 'async_trait,
          'life3: 'async_trait,
          'life4: 'async_trait;
    fn drop_table<'life0, 'life1, 'life2, 'async_trait>(
        &'life0 self,
        name: &'life1 str,
        namespace_path: &'life2 [String],
    ) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait;
    fn drop_all_tables<'life0, 'life1, 'async_trait>(
        &'life0 self,
        namespace_path: &'life1 [String],
    ) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn as_any(&self) -> &dyn Any;
    fn namespace_client<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Arc<dyn LanceNamespace>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn namespace_client_config<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = (String, HashMap<String, String>)> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
}
```

## Required Methods

- **`uri(&self) -> &str`** — Get the URI of the database.
- **`read_consistency(&self) -> Pin<Box<dyn Future<Output = ReadConsistency> + Send + 'async_trait>>`** — Get the read consistency of the database.
- **`list_namespaces(&self, request: ListNamespacesRequest) -> Pin<Box<dyn Future<Output = ListNamespacesResponse> + Send + 'async_trait>>`** — List immediate child namespace names in the given namespace.
- **`create_namespace(&self, request: CreateNamespaceRequest) -> Pin<Box<dyn Future<Output = CreateNamespaceResponse> + Send + 'async_trait>>`** — Create a new namespace.
- **`drop_namespace(&self, request: DropNamespaceRequest) -> Pin<Box<dyn Future<Output = DropNamespaceResponse> + Send + 'async_trait>>`** — Drop a namespace.
- **`describe_namespace(&self, request: DescribeNamespaceRequest) -> Pin<Box<dyn Future<Output = DescribeNamespaceResponse> + Send + 'async_trait>>`** — Describe a namespace (get its properties).
- **`table_names(&self, request: TableNamesRequest) -> Pin<Box<dyn Future<Output = Vec<String>> + Send + 'async_trait>>`** — *(Deprecated)* List the names of tables in the database. Use `list_tables` instead.
- **`list_tables(&self, request: ListTablesRequest) -> Pin<Box<dyn Future<Output = ListTablesResponse> + Send + 'async_trait>>`** — List tables in the database with pagination support.
- **`create_table(&self, request: CreateTableRequest) -> Pin<Box<dyn Future<Output = Arc<dyn BaseTable>> + Send + 'async_trait>>`** — Create a table in the database.
- **`clone_table(&self, request: CloneTableRequest) -> Pin<Box<dyn Future<Output = Arc<dyn BaseTable>> + Send + 'async_trait>>`** — Clone a table in the database (shallow clone).
- **`open_table(&self, request: OpenTableRequest) -> Pin<Box<dyn Future<Output = Arc<dyn BaseTable>> + Send + 'async_trait>>`** — Open a table in the database.
- **`rename_table(&self, cur_name: &str, new_name: &str, cur_namespace_path: &[String], new_namespace_path: &[String]) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>`** — Rename a table in the database.
- **`drop_table(&self, name: &str, namespace_path: &[String]) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>`** — Drop a table in the database.
- **`drop_all_tables(&self, namespace_path: &[String]) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>`** — Drop all tables in the database.
- **`as_any(&self) -> &dyn Any`** — Cast to `Any`.
- **`namespace_client(&self) -> Pin<Box<dyn Future<Output = Arc<dyn LanceNamespace>> + Send + 'async_trait>>`** — Get the equivalent namespace client of this database.
- **`namespace_client_config(&self) -> Pin<Box<dyn Future<Output = (String, HashMap<String, String>)> + Send + 'async_trait>>`** — Get the configuration for constructing an equivalent namespace client.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). In older versions of Rust, dyn compatibility was called "object safety".

## Implementors

- [`ListingDatabase`](listing/struct.ListingDatabase.html) implements `Database`.
- [`LanceNamespaceDatabase`](namespace/struct.LanceNamespaceDatabase.html) implements `Database`.
