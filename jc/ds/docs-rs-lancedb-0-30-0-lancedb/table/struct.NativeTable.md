# NativeTable in lancedb::table - Rust

[Source](../../src/lancedb/table.rs.html#1633-1648)

A table in a LanceDB database.

## Implementations

### impl NativeTable

#### pub async fn open(uri: &str) -> Result

Opens an existing Table.

**Arguments:**
- `uri` - The uri to a NativeTable.
- `name` - The table name.

**Returns:** A NativeTable object.

```text
pub async fn open(uri: &str) -> Result
```

---

#### pub async fn open_with_params(uri: &str, name: &str, namespace: Vec<String>, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<ReadParams>, read_consistency_interval: Option<Duration>, namespace_client: Option<Arc<LanceNamespace>>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>, managed_versioning: Option<bool>) -> Result

Opens an existing Table with additional parameters.

**Arguments:**
- `base_path` - The base path where the table is located.
- `name` - The table name.
- `params` - The ReadParams to use when opening the table.
- `namespace_client` - Optional namespace client for namespace operations.
- `pushdown_operations` - Operations to push down to the namespace server.
- `managed_versioning` - Whether managed versioning is enabled.

**Returns:** A NativeTable object.

```text
pub async fn open_with_params(uri: &str, name: &str, namespace: Vec<String>, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<ReadParams>, read_consistency_interval: Option<Duration>, namespace_client: Option<Arc<LanceNamespace>>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>, managed_versioning: Option<bool>) -> Result
```

---

#### pub fn with_namespace_client(self, namespace_client: Arc<LanceNamespace>) -> Self

Set the namespace client for server-side query execution.

```text
pub fn with_namespace_client(self, namespace_client: Arc<LanceNamespace>) -> Self
```

---

#### pub async fn open_from_namespace(namespace_client: Arc<LanceNamespace>, name: &str, namespace: Vec<String>, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<ReadParams>, read_consistency_interval: Option<Duration>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>, session: Option<Arc<Session>>) -> Result

Opens an existing Table using a namespace client.

```text
pub async fn open_from_namespace(namespace_client: Arc<LanceNamespace>, name: &str, namespace: Vec<String>, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<ReadParams>, read_consistency_interval: Option<Duration>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>, session: Option<Arc<Session>>) -> Result
```

---

#### pub async fn create(uri: &str, name: &str, namespace: Vec<String>, batches: impl StreamingWriteSource, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<WriteParams>, read_consistency_interval: Option<Duration>, namespace_client: Option<Arc<LanceNamespace>>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>) -> Result

Creates a new Table.

```text
pub async fn create(uri: &str, name: &str, namespace: Vec<String>, batches: impl StreamingWriteSource, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<WriteParams>, read_consistency_interval: Option<Duration>, namespace_client: Option<Arc<LanceNamespace>>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>) -> Result
```

---

#### pub async fn create_empty(uri: &str, name: &str, namespace: Vec<String>, schema: SchemaRef, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<WriteParams>, read_consistency_interval: Option<Duration>, namespace_client: Option<Arc<LanceNamespace>>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>) -> Result

Creates a new empty Table.

```text
pub async fn create_empty(uri: &str, name: &str, namespace: Vec<String>, schema: SchemaRef, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<WriteParams>, read_consistency_interval: Option<Duration>, namespace_client: Option<Arc<LanceNamespace>>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>) -> Result
```

---

#### pub async fn create_from_namespace(namespace_client: Arc<LanceNamespace>, uri: &str, name: &str, namespace: Vec<String>, batches: impl StreamingWriteSource, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<WriteParams>, read_consistency_interval: Option<Duration>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>, session: Option<Arc<Session>>) -> Result

Creates a new Table using a namespace client for storage options.

```text
pub async fn create_from_namespace(namespace_client: Arc<LanceNamespace>, uri: &str, name: &str, namespace: Vec<String>, batches: impl StreamingWriteSource, write_store_wrapper: Option<Arc<WrappingObjectStore>>, params: Option<WriteParams>, read_consistency_interval: Option<Duration>, pushdown_operations: HashSet<NamespaceClientPushdownOperation>, session: Option<Arc<Session>>) -> Result
```

---

#### pub async fn merge(&mut self, batches: impl RecordBatchReader + Send + 'static, left_on: &str, right_on: &str) -> Result<()>

Merge new data into this table.

```text
pub async fn merge(&mut self, batches: impl RecordBatchReader + Send + 'static, left_on: &str, right_on: &str) -> Result<()>
```

---

#### pub async fn count_fragments(&self) -> Result<usize>

```text
pub async fn count_fragments(&self) -> Result<usize>
```

---

#### pub async fn count_deleted_rows(&self) -> Result<usize>

```text
pub async fn count_deleted_rows(&self) -> Result<usize>
```

---

#### pub async fn num_small_files(&self, max_rows_per_group: usize) -> Result<usize>

```text
pub async fn num_small_files(&self, max_rows_per_group: usize) -> Result<usize>
```

---

#### pub async fn load_indices(&self) -> Result<Vec<VectorIndex>>

```text
pub async fn load_indices(&self) -> Result<Vec<VectorIndex>>
```

---

#### pub async fn uses_v2_manifest_paths(&self) -> Result<bool>

Check whether the table uses V2 manifest paths.

```text
pub async fn uses_v2_manifest_paths(&self) -> Result<bool>
```

---

#### pub async fn migrate_manifest_paths_v2(&self) -> Result<()>

Migrate the table to use the new manifest path scheme.

```text
pub async fn migrate_manifest_paths_v2(&self) -> Result<()>
```

---

#### pub async fn manifest(&self) -> Result<Manifest>

Get the table manifest.

```text
pub async fn manifest(&self) -> Result<Manifest>
```

---

#### pub async fn update_config(&self, upsert_values: impl IntoIterator<Item=(String, String)>) -> Result<()>

Update key-value pairs in config.

```text
pub async fn update_config(&self, upsert_values: impl IntoIterator<Item=(String, String)>) -> Result<()>
```

---

#### pub async fn delete_config_keys(&self, delete_keys: &[&str]) -> Result<()>

Delete keys from the config.

```text
pub async fn delete_config_keys(&self, delete_keys: &[&str]) -> Result<()>
```

---

#### pub async fn replace_schema_metadata(&self, upsert_values: impl IntoIterator<Item=(String, String)>) -> Result<()>

Update schema metadata.

```text
pub async fn replace_schema_metadata(&self, upsert_values: impl IntoIterator<Item=(String, String)>) -> Result<()>
```

---

#### pub async fn replace_field_metadata(&self, new_values: impl IntoIterator<Item=(u32, HashMap<String, String>)>) -> Result<()>

Update field metadata.

**Arguments:**
- `new_values` - An iterator of tuples where the first element is the field id and the second element is a hashmap of metadata key-value pairs.

```text
pub async fn replace_field_metadata(&self, new_values: impl IntoIterator<Item=(u32, HashMap<String, String>)>) -> Result<()>
```

## Trait Implementations

### impl BaseTable for NativeTable

#### fn delete<'life0, 'life1, 'async_trait>(&'life0 self, predicate: Predicate<'life1>) -> Pin<Box<dyn Future<Output = Result<DeleteResult>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Delete rows from the table.

```text
fn delete<'life0, 'life1, 'async_trait>(&'life0 self, predicate: Predicate<'life1>) -> Pin<Box<dyn Future<Output = Result<DeleteResult>> + Send + 'async_trait>>
```

#### fn wait_for_index<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, index_names: &'life1 [&'life2 str], timeout: Duration) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait

Poll until the columns are fully indexed. Will return Error::Timeout if not.

```text
fn wait_for_index<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, index_names: &'life1 [&'life2 str], timeout: Duration) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn as_any(&self) -> &dyn Any

Get a reference to std::any::Any.

```text
fn as_any(&self) -> &dyn Any
```

#### fn name(&self) -> &str

Get the name of the table.

```text
fn name(&self) -> &str
```

#### fn namespace(&self) -> &[String]

Get the namespace of the table.

```text
fn namespace(&self) -> &[String]
```

#### fn id(&self) -> &str

Get the id of the table.

```text
fn id(&self) -> &str
```

#### fn version<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<u64>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Get the version of the table.

```text
fn version<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<u64>> + Send + 'async_trait>>
```

#### fn checkout<'life0, 'async_trait>(&'life0 self, version: u64) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Checkout a specific version of the table.

```text
fn checkout<'life0, 'async_trait>(&'life0 self, version: u64) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn checkout_tag<'life0, 'life1, 'async_trait>(&'life0 self, tag: &'life1 str) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Checkout a table version referenced by a tag.

```text
fn checkout_tag<'life0, 'life1, 'async_trait>(&'life0 self, tag: &'life1 str) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn checkout_latest<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Checkout the latest version of the table.

```text
fn checkout_latest<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn list_versions<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Vec<Version>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

List the versions of the table.

```text
fn list_versions<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Vec<Version>>> + Send + 'async_trait>>
```

#### fn restore<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Restore the table to the currently checked out version.

```text
fn restore<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn schema<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<SchemaRef>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Get the arrow Schema of the table.

```text
fn schema<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<SchemaRef>> + Send + 'async_trait>>
```

#### fn table_definition<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<TableDefinition>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Get the table definition.

```text
fn table_definition<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<TableDefinition>> + Send + 'async_trait>>
```

#### fn count_rows<'life0, 'async_trait>(&'life0 self, filter: Option<Filter>) -> Pin<Box<dyn Future<Output = Result<usize>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Count the number of rows in this table.

```text
fn count_rows<'life0, 'async_trait>(&'life0 self, filter: Option<Filter>) -> Pin<Box<dyn Future<Output = Result<usize>> + Send + 'async_trait>>
```

#### fn add<'life0, 'async_trait>(&'life0 self, add: AddDataBuilder) -> Pin<Box<dyn Future<Output = Result<AddResult>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Add new records to the table.

```text
fn add<'life0, 'async_trait>(&'life0 self, add: AddDataBuilder) -> Pin<Box<dyn Future<Output = Result<AddResult>> + Send + 'async_trait>>
```

#### fn create_index<'life0, 'async_trait>(&'life0 self, opts: IndexBuilder) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Create an index on the provided column(s).

```text
fn create_index<'life0, 'async_trait>(&'life0 self, opts: IndexBuilder) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn drop_index<'life0, 'life1, 'async_trait>(&'life0 self, index_name: &'life1 str) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Drop an index from the table.

```text
fn drop_index<'life0, 'life1, 'async_trait>(&'life0 self, index_name: &'life1 str) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn prewarm_index<'life0, 'life1, 'async_trait>(&'life0 self, index_name: &'life1 str) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Prewarm an index in the table.

```text
fn prewarm_index<'life0, 'life1, 'async_trait>(&'life0 self, index_name: &'life1 str) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn prewarm_data<'life0, 'async_trait>(&'life0 self, _columns: Option<Vec<String>>) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Prewarm data for the table.

```text
fn prewarm_data<'life0, 'async_trait>(&'life0 self, _columns: Option<Vec<String>>) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn update<'life0, 'async_trait>(&'life0 self, update: UpdateBuilder) -> Pin<Box<dyn Future<Output = Result<UpdateResult>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Update rows in the table.

```text
fn update<'life0, 'async_trait>(&'life0 self, update: UpdateBuilder) -> Pin<Box<dyn Future<Output = Result<UpdateResult>> + Send + 'async_trait>>
```

#### fn create_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = Result<Arc<dyn ExecutionPlan>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Create a physical plan for the query.

```text
fn create_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = Result<Arc<dyn ExecutionPlan>>> + Send + 'async_trait>>
```

#### fn query<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = Result<DatasetRecordBatchStream>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Execute a query and return the results as a stream of RecordBatches.

```text
fn query<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = Result<DatasetRecordBatchStream>> + Send + 'async_trait>>
```

#### fn analyze_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = Result<String>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

```text
fn analyze_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = Result<String>> + Send + 'async_trait>>
```

#### fn merge_insert<'life0, 'async_trait>(&'life0 self, params: MergeInsertBuilder, new_data: Box<dyn RecordBatchReader + Send>) -> Pin<Box<dyn Future<Output = Result<MergeResult>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Merge insert new records into the table.

```text
fn merge_insert<'life0, 'async_trait>(&'life0 self, params: MergeInsertBuilder, new_data: Box<dyn RecordBatchReader + Send>) -> Pin<Box<dyn Future<Output = Result<MergeResult>> + Send + 'async_trait>>
```

#### fn set_unenforced_primary_key<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, columns: &'life1 [&'life2 str]) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait

Set the unenforced primary key for the table.

```text
fn set_unenforced_primary_key<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, columns: &'life1 [&'life2 str]) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn set_lsm_write_spec<'life0, 'async_trait>(&'life0 self, spec: LsmWriteSpec) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Install an LsmWriteSpec on this table.

```text
fn set_lsm_write_spec<'life0, 'async_trait>(&'life0 self, spec: LsmWriteSpec) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn unset_lsm_write_spec<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Remove the LsmWriteSpec from this table.

```text
fn unset_lsm_write_spec<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>>
```

#### fn tags<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Box<dyn Tags>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Gets the table tag manager.

```text
fn tags<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Box<dyn Tags>>> + Send + 'async_trait>>
```

#### fn optimize<'life0, 'async_trait>(&'life0 self, action: OptimizeAction) -> Pin<Box<dyn Future<Output = Result<OptimizeStats>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Optimize the dataset.

```text
fn optimize<'life0, 'async_trait>(&'life0 self, action: OptimizeAction) -> Pin<Box<dyn Future<Output = Result<OptimizeStats>> + Send + 'async_trait>>
```

#### fn add_columns<'life0, 'async_trait>(&'life0 self, transforms: NewColumnTransform, read_columns: Option<Vec<String>>) -> Pin<Box<dyn Future<Output = Result<AddColumnsResult>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Add columns to the table.

```text
fn add_columns<'life0, 'async_trait>(&'life0 self, transforms: NewColumnTransform, read_columns: Option<Vec<String>>) -> Pin<Box<dyn Future<Output = Result<AddColumnsResult>> + Send + 'async_trait>>
```

#### fn alter_columns<'life0, 'life1, 'async_trait>(&'life0 self, alterations: &'life1 [ColumnAlteration]) -> Pin<Box<dyn Future<Output = Result<AlterColumnsResult>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Alter columns in the table.

```text
fn alter_columns<'life0, 'life1, 'async_trait>(&'life0 self, alterations: &'life1 [ColumnAlteration]) -> Pin<Box<dyn Future<Output = Result<AlterColumnsResult>> + Send + 'async_trait>>
```

#### fn drop_columns<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, columns: &'life1 [&'life2 str]) -> Pin<Box<dyn Future<Output = Result<DropColumnsResult>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait

Drop columns from the table.

```text
fn drop_columns<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, columns: &'life1 [&'life2 str]) -> Pin<Box<dyn Future<Output = Result<DropColumnsResult>> + Send + 'async_trait>>
```

#### fn list_indices<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Vec<IndexConfig>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

List the indices on the table.

```text
fn list_indices<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Vec<IndexConfig>>> + Send + 'async_trait>>
```

#### fn uri<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<String>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Get the table URI (storage location).

```text
fn uri<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<String>> + Send + 'async_trait>>
```

#### fn storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Option<HashMap<String, String>>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

👎Deprecated since 0.25.0: Use initial_storage_options() instead.

```text
fn storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Option<HashMap<String, String>>>> + Send + 'async_trait>>
```

#### fn initial_storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Option<HashMap<String, String>>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Get the initial storage options that were passed in when opening this table.

```text
fn initial_storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Option<HashMap<String, String>>>> + Send + 'async_trait>>
```

#### fn latest_storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Option<HashMap<String, String>>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Get the latest storage options, refreshing from provider if configured.

```text
fn latest_storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Option<HashMap<String, String>>>> + Send + 'async_trait>>
```

#### fn index_stats<'life0, 'life1, 'async_trait>(&'life0 self, index_name: &'life1 str) -> Pin<Box<dyn Future<Output = Result<Option<IndexStatistics>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Get statistics about the index.

```text
fn index_stats<'life0, 'life1, 'async_trait>(&'life0 self, index_name: &'life1 str) -> Pin<Box<dyn Future<Output = Result<Option<IndexStatistics>>> + Send + 'async_trait>>
```

#### fn stats<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<TableStatistics>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Get statistics on the table.

```text
fn stats<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<TableStatistics>> + Send + 'async_trait>>
```

#### fn create_insert_exec<'life0, 'async_trait>(&'life0 self, input: Arc<dyn ExecutionPlan>, write_params: WriteParams) -> Pin<Box<dyn Future<Output = Result<Arc<dyn ExecutionPlan>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait

Create an ExecutionPlan for inserting data into the table.

```text
fn create_insert_exec<'life0, 'async_trait>(&'life0 self, input: Arc<dyn ExecutionPlan>, write_params: WriteParams) -> Pin<Box<dyn Future<Output = Result<Arc<dyn ExecutionPlan>>> + Send + 'async_trait>>
```

#### fn explain_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, verbose: bool) -> Pin<Box<dyn Future<Output = Result<String>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait

Explain the plan for a query.

```text
fn explain_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, verbose: bool) -> Pin<Box<dyn Future<Output = Result<String>> + Send + 'async_trait>>
```

### impl Clone for NativeTable

#### fn clone(&self) -> NativeTable

Returns a duplicate of the value.

```text
fn clone(&self) -> NativeTable
```

#### fn clone_from(&mut self, source: &Self)

Performs copy-assignment from `source`.

```text
fn clone_from(&mut self, source: &Self)
```

### impl Debug for NativeTable

#### fn fmt(&self, f: &mut Formatter<'_>) -> Result

Formats the value using the given formatter.

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### impl Display for NativeTable

#### fn fmt(&self, f: &mut Formatter<'_>) -> Result

Formats the value using the given formatter.

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

## Auto Trait Implementations

- Freeze for NativeTable
- !RefUnwindSafe for NativeTable
- Send for NativeTable
- Sync for NativeTable
- Unpin for NativeTable
- UnsafeUnpin for NativeTable
- !UnwindSafe for NativeTable

## Blanket Implementations

- Any for T
- ArchivePointee for T
- Borrow<T> for T
- BorrowMut<T> for T
- CloneToUninit for T
- Conv for T
- DropFlavorWrapper<T> for T
- DynClone for T
- ErasedDestructor for T
- FmtForward for T
- From<T> for T
- FromRef<T> for T
- HasTypeWitness<W> for T
- Identity for T
- Instrument for T
- Into<U> for T
- IntoEither for T
- IntoShared<Shared> for Unshared
- LayoutRaw for T
- MaybeSend for T (2 implementations)
- Niching<NichedOption<T, N1>> for N2
- Pipe for T
- Pointable for T
- Pointee for T
- PolicyExt for T
- ResultError for E
- ResultType for T
- Same for T
- Tap for T
- ToOwned for T
- ToString for T
- TryConv for T
- TryFrom<U> for T
- TryInto<U> for T (2 implementations)
- VZip<V> for T
- WithSubscriber for T
