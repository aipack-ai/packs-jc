# Table in lancedb::table - Rust

## Struct Definition

```rust
pub struct Table { /* private fields */ }
```

## Description

A Table is a collection of strongly typed Rows.  
The type of each row is defined in Apache Arrow [Schema](https://docs.rs/arrow-schema/58.3.0/x86_64-unknown-linux-gnu/arrow_schema/schema/struct.Schema.html).

## Associated Functions

### `pub fn new(inner: Arc<dyn BaseTable>, database: Arc<dyn Database>) -> Self`

Creates a new Table instance.

---

## Methods

### `pub fn base_table(&self) -> &Arc<dyn BaseTable>`

Returns a reference to the underlying `BaseTable`.

### `pub fn database(&self) -> &Arc<dyn Database>`

Returns a reference to the associated `Database`.

### `pub fn embedding_registry(&self) -> &Arc<dyn EmbeddingRegistry>`

Returns a reference to the embedding registry.

### `pub fn as_native(&self) -> Option<&NativeTable>`

Cast as `NativeTable`, or return `None` if it is not a `NativeTable`.  
**Warning:** This function will be removed soon; features exclusive to `NativeTable` will be added to `Table`.

### `pub fn name(&self) -> &str`

Get the name of the table.

### `pub fn namespace(&self) -> &[String]`

Get the namespace of the table.

### `pub fn id(&self) -> &str`

Get the ID of the table (namespace + name joined by ‘$’).

### `pub fn dataset(&self) -> Option<&DatasetConsistencyWrapper>`

Get the dataset of the table if it is a native table. Returns `None` otherwise.

### `pub async fn schema(&self) -> Result<SchemaRef>`

Get the arrow Schema of the table.

### `pub async fn count_rows(&self, filter: Option<String>) -> Result<usize>`

Count the number of rows in this dataset.  
**Arguments:**  
- `filter` – if present, only count rows matching the filter.

### `pub fn add<T: Into< Scannable + 'static>>(&self, data: T) -> AddDataBuilder`

Insert new records into this Table.  
**Arguments:**  
- `data` – data to be added to the Table.

### `pub fn update(&self) -> UpdateBuilder`

Update existing records in the Table. Use the returned builder to specify columns and conditions.

### `pub async fn delete(&self, predicate: impl Into<Predicate<'_>>) -> Result<DeleteResult>`

Delete rows that match the predicate.  
**Arguments:**  
- `predicate` – a SQL string (`&str`) or DataFusion expression (`&Expr`).  

**Example:**

```rust
use datafusion_expr::{col, lit};
let tmpdir = tempfile::tempdir().unwrap();
let db = lancedb::connect(tmpdir.path().to_str().unwrap())
    .execute()
    .await
    .unwrap();
let schema = Arc::new(Schema::new(vec![
    Field::new("id", DataType::Int32, false),
    Field::new("vector", DataType::FixedSizeList(
        Arc::new(Field::new("item", DataType::Float32, true)), 128), true),
]));
let data = RecordBatch::try_new(
    schema.clone(),
    vec![
        Arc::new(Int32Array::from_iter_values(0..10)),
        Arc::new(
            FixedSizeListArray::from_iter_primitive::_, _>(
                (0..10).map(|_| Some(vec![Some(1.0); 128])),
                128,
            ),
        ),
    ],
).unwrap();
let tbl = db.create_table("delete_test", data).execute().await.unwrap();
// Using a SQL string:
tbl.delete("id > 5").await.unwrap();
// Using a DataFusion expression:
let expr = col("id").lt(lit(4));
tbl.delete(&expr).await.unwrap();
```

### `pub fn create_index(&self, columns: &[impl AsRef<str>], index: Index) -> IndexBuilder`

Create an index on the provided column(s).  
See [`Index`](../index/enum.Index.html) for available index types.

**Examples:**

```rust
use lancedb::index::Index;
let tmpdir = tempfile::tempdir().unwrap();
let db = lancedb::connect(tmpdir.path().to_str().unwrap())
    .execute()
    .await
    .unwrap();
tbl.create_index(&["vector"], Index::Auto).execute().await.unwrap();
tbl.create_index(&["id"], Index::Auto).execute().await.unwrap();
tbl.create_index(&["tags"], Index::LabelList(Default::default())).execute().await.unwrap();
```

### `pub fn create_index_with_timeout(&self, columns: &[impl AsRef<str>], index: Index, wait_timeout: Option<Duration>) -> IndexBuilder`

See `create_index`. For remote tables, allows an optional `wait_timeout` to poll until asynchronous indexing is complete.

### `pub fn merge_insert(&self, on: &[&str]) -> MergeInsertBuilder`

Create a builder for a merge insert operation (upsert).  
**Arguments:**  
- `on` – one or more columns to join on (typically a key or id column).

**Example:**

```rust
let tmpdir = tempfile::tempdir().unwrap();
let db = lancedb::connect(tmpdir.path().to_str().unwrap())
    .execute()
    .await
    .unwrap();
let new_data = RecordBatchIterator::new(
    vec![RecordBatch::try_new(
        schema.clone(),
        vec![
            Arc::new(Int32Array::from_iter_values(0..10)),
            Arc::new(
                FixedSizeListArray::from_iter_primitive::_, _>(
                    (0..10).map(|_| Some(vec![Some(1.0); 128])),
                    128,
                ),
            ),
        ],
    ).unwrap()].into_iter().map(Ok),
    schema.clone(),
);
let mut merge_insert = tbl.merge_insert(&["id"]);
merge_insert.when_matched_update_all(None).when_not_matched_insert_all();
merge_insert.execute(Box::new(new_data)).await.unwrap();
```

### `pub fn query(&self) -> Query`

Create a `Query` builder for searching data.

**Examples:**

- **Vector search:**

```rust
use crate::lancedb::query::ExecutableQuery;
let stream = tbl
    .query()
    .nearest_to(&[1.0, 2.0, 3.0]).unwrap()
    .refine_factor(5)
    .nprobes(10)
    .execute().await.unwrap();
let batches: Vec<_> = stream.try_collect().await.unwrap();
```

- **SQL-style filter:**

```rust
use crate::lancedb::query::{ExecutableQuery, QueryBase};
let stream = tbl
    .query()
    .only_if("id > 5")
    .limit(1000)
    .execute().await.unwrap();
let batches: Vec<_> = stream.try_collect().await.unwrap();
```

- **Full scan:**

```rust
use crate::lancedb::query::ExecutableQuery;
let stream = tbl.query().execute().await.unwrap();
let batches: Vec<_> = stream.try_collect().await.unwrap();
```

### `pub fn take_offsets(&self, offsets: Vec<u64>) -> TakeQuery`

Extract rows from the dataset using dataset offsets.  
**Parameters:** `offsets` – list of offsets to take.

### `pub fn take_row_ids(&self, row_ids: Vec<u64>) -> TakeQuery`

Extract rows from the dataset using row ids.  
**Parameters:** `row_ids` – list of row ids to take.

### `pub fn vector_search(&self, query: impl IntoQueryVector) -> Result<VectorQuery>`

Search the table with a given query vector. Convenience method for `query().nearest_to(...)`.

### `pub async fn optimize(&self, action: OptimizeAction) -> Result<OptimizeStats>`

Optimize on-disk data and indices (compaction, prune, index optimization).

### `pub async fn add_columns(&self, transforms: NewColumnTransform, read_columns: Option<Vec<String>>) -> Result<AddColumnsResult>`

Add new columns to the table, providing values to fill in.

### `pub async fn alter_columns(&self, alterations: &[ColumnAlteration]) -> Result<AlterColumnsResult>`

Change a column’s name or nullability.

### `pub async fn drop_columns(&self, columns: &[&str]) -> Result<DropColumnsResult>`

Remove columns from the table.

### `pub async fn set_unenforced_primary_key<I, S>(&self, columns: I) -> Result<()> where I: IntoIterator<Item = S>, S: Into<String>`

Set an unenforced primary key (single column). The key cannot be changed once set.

### `pub async fn set_lsm_write_spec(&self, spec: LsmWriteSpec) -> Result<()>`

Install an `LsmWriteSpec` for future `merge_insert` calls.

### `pub async fn unset_lsm_write_spec(&self) -> Result<()>`

Remove the `LsmWriteSpec`; errors if no spec is set.

### `pub async fn version(&self) -> Result<u64>`

Retrieve the version of the table.

### `pub async fn checkout(&self, version: u64) -> Result<()>`

Check out a specific version (read-only). Must call `checkout_latest` or `restore` to revert.

### `pub async fn checkout_tag(&self, tag: &str) -> Result<()>`

Check out a version referenced by a tag.

### `pub async fn checkout_latest(&self) -> Result<()>`

Point the table to the latest version.

### `pub async fn restore(&self) -> Result<()>`

Restore the table to the currently checked out version.

### `pub async fn list_versions(&self) -> Result<Vec<Version>>`

List all versions of the table.

### `pub async fn list_indices(&self) -> Result<Vec<IndexConfig>>`

List all indices.

### `pub async fn uri(&self) -> Result<String>`

Get the table URI (storage location).

### `pub async fn storage_options(&self) -> Option<HashMap<String, String>>`

**Deprecated since 0.25.0:** Use `initial_storage_options()` instead.  
Returns the initial storage options.

### `pub async fn initial_storage_options(&self) -> Option<HashMap<String, String>>`

Get the storage options used when opening this table.

### `pub async fn latest_storage_options(&self) -> Result<Option<HashMap<String, String>>>`

Get the latest storage options, refreshing from provider if configured.

### `pub async fn index_stats(&self, index_name: impl AsRef<str>) -> Result<Option<IndexStatistics>>`

Get statistics about an index.

### `pub async fn drop_index(&self, name: &str) -> Result<()>`

Drop an index from the table.

### `pub async fn prewarm_index(&self, name: &str) -> Result<()>`

Prewarm an index (hint to load into memory).

### `pub async fn prewarm_data(&self, columns: Option<Vec<String>>) -> Result<()>`

Prewarm data for the given columns or all columns if `None`.

### `pub async fn wait_for_index(&self, index_names: &[&str], timeout: Duration) -> Result<()>`

Poll until indices are fully indexed; returns `Error::Timeout` if not finished within timeout.

### `pub async fn tags(&self) -> Result<Box<dyn Tags + '_>>`

Get the tags manager.

### `pub async fn stats(&self) -> Result<TableStatistics>`

Retrieve table statistics.

---

## Trait Implementations

### `impl Clone for Table`

- `fn clone(&self) -> Table`

### `impl Debug for Table`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Display for Table`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl From<Arc<dyn BaseTable>> for Table`

- `fn from(inner: Arc<dyn BaseTable>) -> Self`

---

## Auto Trait Implementations

- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!RefUnwindSafe`
- `!UnwindSafe`

---

## Blanket Implementations

Standard blanket implementations (e.g., `From<T>`, `Into<U>`, `Borrow`, `ToString`, etc.) are provided for all types. See [Rust documentation](https://doc.rust-lang.org/std) for details.
