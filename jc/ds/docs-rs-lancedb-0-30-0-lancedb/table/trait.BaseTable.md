# BaseTable

## Trait Definition

```rust
pub trait BaseTable:
    Display + Debug + Send + Sync
{
    // Required methods
    fn as_any(&self) -> &dyn Any;
    fn name(&self) -> &str;
    fn namespace(&self) -> &[String];
    fn id(&self) -> &str;
    fn schema<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = SchemaRef> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn count_rows<'life0, 'async_trait>(&'life0 self, filter: Option<Filter>) -> Pin<Box<dyn Future<Output = usize> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn create_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = Arc<dyn ExecutionPlan>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn query<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = DatasetRecordBatchStream> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn analyze_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, options: QueryExecutionOptions) -> Pin<Box<dyn Future<Output = String> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn add<'life0, 'async_trait>(&'life0 self, add: AddDataBuilder) -> Pin<Box<dyn Future<Output = AddResult> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn delete<'life0, 'life1, 'async_trait>(&'life0 self, predicate: Predicate<'life1>) -> Pin<Box<dyn Future<Output = DeleteResult> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn update<'life0, 'async_trait>(&'life0 self, update: UpdateBuilder) -> Pin<Box<dyn Future<Output = UpdateResult> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn create_index<'life0, 'async_trait>(&'life0 self, index: IndexBuilder) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn list_indices<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Vec<IndexConfig>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn drop_index<'life0, 'life1, 'async_trait>(&'life0 self, name: &'life1 str) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn prewarm_index<'life0, 'life1, 'async_trait>(&'life0 self, name: &'life1 str) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn prewarm_data<'life0, 'async_trait>(&'life0 self, columns: Option<Vec<String>>) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn index_stats<'life0, 'life1, 'async_trait>(&'life0 self, index_name: &'life1 str) -> Pin<Box<dyn Future<Output = Option<IndexStatistics>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn merge_insert<'life0, 'async_trait>(&'life0 self, params: MergeInsertBuilder, new_data: Box<dyn RecordBatchReader + Send>) -> Pin<Box<dyn Future<Output = MergeResult> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn tags<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Box<dyn Tags + '_>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn optimize<'life0, 'async_trait>(&'life0 self, action: OptimizeAction) -> Pin<Box<dyn Future<Output = OptimizeStats> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn add_columns<'life0, 'async_trait>(&'life0 self, transforms: NewColumnTransform, read_columns: Option<Vec<String>>) -> Pin<Box<dyn Future<Output = AddColumnsResult> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn alter_columns<'life0, 'life1, 'async_trait>(&'life0 self, alterations: &'life1 [ColumnAlteration]) -> Pin<Box<dyn Future<Output = AlterColumnsResult> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn drop_columns<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, columns: &'life1 [&'life2 str]) -> Pin<Box<dyn Future<Output = DropColumnsResult> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait;
    fn version<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = u64> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn checkout<'life0, 'async_trait>(&'life0 self, version: u64) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn checkout_tag<'life0, 'life1, 'async_trait>(&'life0 self, tag: &'life1 str) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
    fn checkout_latest<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn restore<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn list_versions<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Vec<Version>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn table_definition<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = TableDefinition> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn uri<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = String> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Option<HashMap<String, String>>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn initial_storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Option<HashMap<String, String>>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn latest_storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Option<HashMap<String, String>>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;
    fn wait_for_index<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, index_names: &'life1 [&'life2 str], timeout: Duration) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait;
    fn stats<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = TableStatistics> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;

    // Provided methods
    fn explain_plan<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 AnyQuery, verbose: bool) -> Pin<Box<dyn Future<Output = String> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait { ... }
    fn set_unenforced_primary_key<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, _columns: &'life1 [&'life2 str]) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait { ... }
    fn set_lsm_write_spec<'life0, 'async_trait>(&'life0 self, _spec: LsmWriteSpec) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait { ... }
    fn unset_lsm_write_spec<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait { ... }
    fn create_insert_exec<'life0, 'async_trait>(&'life0 self, _input: Arc<dyn ExecutionPlan>, _write_params: WriteParams) -> Pin<Box<dyn Future<Output = Arc<dyn ExecutionPlan>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait { ... }
}
```

## Description

A trait for anything “table-like”. This is used for both native tables (which target Lance datasets) and remote tables (which target LanceDB cloud). This trait is still EXPERIMENTAL and subject to change in the future.

## Required Methods

### `as_any`

```rust
fn as_any(&self) -> &dyn Any;
```
Get a reference to `std::any::Any`.

### `name`

```rust
fn name(&self) -> &str;
```
Get the name of the table.

### `namespace`

```rust
fn namespace(&self) -> &[String];
```
Get the namespace of the table.

### `id`

```rust
fn id(&self) -> &str;
```
Get the id of the table. This is the namespace of the table concatenated with the name separated by `$`.

### `schema`

```rust
fn schema<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = SchemaRef> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Get the arrow Schema of the table.

### `count_rows`

```rust
fn count_rows<'life0, 'async_trait>(&'life0 self, filter: Option<Filter>) -> Pin<Box<dyn Future<Output = usize> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Count the number of rows in this table.

### `create_plan`

```rust
fn create_plan<'life0, 'life1, 'async_trait>(
    &'life0 self,
    query: &'life1 AnyQuery,
    options: QueryExecutionOptions,
) -> Pin<Box<dyn Future<Output = Arc<dyn ExecutionPlan>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Create a physical plan for the query.

### `query`

```rust
fn query<'life0, 'life1, 'async_trait>(
    &'life0 self,
    query: &'life1 AnyQuery,
    options: QueryExecutionOptions,
) -> Pin<Box<dyn Future<Output = DatasetRecordBatchStream> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Execute a query and return the results as a stream of RecordBatches.

### `analyze_plan`

```rust
fn analyze_plan<'life0, 'life1, 'async_trait>(
    &'life0 self,
    query: &'life1 AnyQuery,
    options: QueryExecutionOptions,
) -> Pin<Box<dyn Future<Output = String> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
*No description provided in original.*

### `add`

```rust
fn add<'life0, 'async_trait>(&'life0 self, add: AddDataBuilder) -> Pin<Box<dyn Future<Output = AddResult> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Add new records to the table.

### `delete`

```rust
fn delete<'life0, 'life1, 'async_trait>(
    &'life0 self,
    predicate: Predicate<'life1>,
) -> Pin<Box<dyn Future<Output = DeleteResult> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Delete rows from the table matching the given `Predicate`.

### `update`

```rust
fn update<'life0, 'async_trait>(&'life0 self, update: UpdateBuilder) -> Pin<Box<dyn Future<Output = UpdateResult> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Update rows in the table.

### `create_index`

```rust
fn create_index<'life0, 'async_trait>(&'life0 self, index: IndexBuilder) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Create an index on the provided column(s).

### `list_indices`

```rust
fn list_indices<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Vec<IndexConfig>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
List the indices on the table.

### `drop_index`

```rust
fn drop_index<'life0, 'life1, 'async_trait>(
    &'life0 self,
    name: &'life1 str,
) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Drop an index from the table.

### `prewarm_index`

```rust
fn prewarm_index<'life0, 'life1, 'async_trait>(
    &'life0 self,
    name: &'life1 str,
) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Prewarm an index in the table.

### `prewarm_data`

```rust
fn prewarm_data<'life0, 'async_trait>(
    &'life0 self,
    columns: Option<Vec<String>>,
) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Prewarm data for the table. Currently only supported on remote tables. If `columns` is `None`, all columns are prewarmed.

### `index_stats`

```rust
fn index_stats<'life0, 'life1, 'async_trait>(
    &'life0 self,
    index_name: &'life1 str,
) -> Pin<Box<dyn Future<Output = Option<IndexStatistics>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Get statistics about the index.

### `merge_insert`

```rust
fn merge_insert<'life0, 'async_trait>(
    &'life0 self,
    params: MergeInsertBuilder,
    new_data: Box<dyn RecordBatchReader + Send>,
) -> Pin<Box<dyn Future<Output = MergeResult> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Merge insert new records into the table.

### `tags`

```rust
fn tags<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Box<dyn Tags + '_>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Gets the table tag manager.

### `optimize`

```rust
fn optimize<'life0, 'async_trait>(&'life0 self, action: OptimizeAction) -> Pin<Box<dyn Future<Output = OptimizeStats> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Optimize the dataset.

### `add_columns`

```rust
fn add_columns<'life0, 'async_trait>(
    &'life0 self,
    transforms: NewColumnTransform,
    read_columns: Option<Vec<String>>,
) -> Pin<Box<dyn Future<Output = AddColumnsResult> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Add columns to the table.

### `alter_columns`

```rust
fn alter_columns<'life0, 'life1, 'async_trait>(
    &'life0 self,
    alterations: &'life1 [ColumnAlteration],
) -> Pin<Box<dyn Future<Output = AlterColumnsResult> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Alter columns in the table.

### `drop_columns`

```rust
fn drop_columns<'life0, 'life1, 'life2, 'async_trait>(
    &'life0 self,
    columns: &'life1 [&'life2 str],
) -> Pin<Box<dyn Future<Output = DropColumnsResult> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait,
    'life2: 'async_trait;
```
Drop columns from the table.

### `version`

```rust
fn version<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = u64> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Get the version of the table.

### `checkout`

```rust
fn checkout<'life0, 'async_trait>(&'life0 self, version: u64) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Checkout a specific version of the table.

### `checkout_tag`

```rust
fn checkout_tag<'life0, 'life1, 'async_trait>(
    &'life0 self,
    tag: &'life1 str,
) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Checkout a table version referenced by a tag. Tags provide a human-readable way to reference specific versions of the table.

### `checkout_latest`

```rust
fn checkout_latest<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Checkout the latest version of the table.

### `restore`

```rust
fn restore<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Restore the table to the currently checked out version.

### `list_versions`

```rust
fn list_versions<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Vec<Version>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
List the versions of the table.

### `table_definition`

```rust
fn table_definition<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = TableDefinition> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Get the table definition.

### `uri`

```rust
fn uri<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = String> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Get the table URI (storage location).

### `storage_options`

```rust
fn storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Option<HashMap<String, String>>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
**Deprecated since 0.25.0:** Use `initial_storage_options()` instead. Get the storage options used when opening this table, if any.

### `initial_storage_options`

```rust
fn initial_storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Option<HashMap<String, String>>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Get the initial storage options that were passed in when opening this table. For dynamically refreshed options (e.g., credential vending), use `Self::latest_storage_options`.

### `latest_storage_options`

```rust
fn latest_storage_options<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Option<HashMap<String, String>>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Get the latest storage options, refreshing from provider if configured. Returns `Ok(Some(options))` if storage options are available (static or refreshed), `Ok(None)` if no storage options were configured, or `Err(...)` if refresh failed.

### `wait_for_index`

```rust
fn wait_for_index<'life0, 'life1, 'life2, 'async_trait>(
    &'life0 self,
    index_names: &'life1 [&'life2 str],
    timeout: Duration,
) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait,
    'life2: 'async_trait;
```
Poll until the columns are fully indexed. Will return `Error::Timeout` if the columns are not fully indexed within the timeout.

### `stats`

```rust
fn stats<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = TableStatistics> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Get statistics on the table.

## Provided Methods

### `explain_plan`

```rust
fn explain_plan<'life0, 'life1, 'async_trait>(
    &'life0 self,
    query: &'life1 AnyQuery,
    verbose: bool,
) -> Pin<Box<dyn Future<Output = String> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait;
```
Explain the plan for a query.

### `set_unenforced_primary_key`

```rust
fn set_unenforced_primary_key<'life0, 'life1, 'life2, 'async_trait>(
    &'life0 self,
    _columns: &'life1 [&'life2 str],
) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait,
    'life2: 'async_trait;
```
Set the unenforced primary key for the table to a single column. “Unenforced” means LanceDB does not check uniqueness on writes; the column is recorded in the schema as the primary key for use by features such as `merge_insert`. Only single-column primary keys are supported, and the key cannot be changed once set. The default implementation returns `NotSupported`; table types backed by a Lance dataset override it.

### `set_lsm_write_spec`

```rust
fn set_lsm_write_spec<'life0, 'async_trait>(&'life0 self, _spec: LsmWriteSpec) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Install an `LsmWriteSpec` on this table. The spec selects Lance’s MemWAL LSM-style write path for future `merge_insert` calls. The default implementation returns `NotSupported`. Implementations that support the MemWAL LSM write path must override this.

### `unset_lsm_write_spec`

```rust
fn unset_lsm_write_spec<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Remove the `LsmWriteSpec` from this table. This is a no-op if no spec is currently set. The default implementation returns `NotSupported`. Implementations that support the MemWAL LSM write path must override this.

### `create_insert_exec`

```rust
fn create_insert_exec<'life0, 'async_trait>(
    &'life0 self,
    _input: Arc<dyn ExecutionPlan>,
    _write_params: WriteParams,
) -> Pin<Box<dyn Future<Output = Arc<dyn ExecutionPlan>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait;
```
Create an ExecutionPlan for inserting data into the table. This is used by the DataFusion TableProvider implementation to support `INSERT INTO` statements.

## Dyn Compatibility

This trait **is** dyn compatible. (In older versions of Rust, dyn compatibility was called "object safety".)

## Implementors

- `impl BaseTable for NativeTable` (defined in `lancedb::table::NativeTable`)
