# TakeQuery

[Source](../../src/lancedb/query.rs.html#1366-1369)

```text
pub struct TakeQuery { /* private fields */ }
```

A builder for LanceDB take queries.

See [`crate::Table::query`](../table/struct.Table.html#method.query) for more details on queries. A `TakeQuery` is a query that is used to select a subset of rows from a table using dataset offsets or row ids.

See [`ExecutableQuery`](trait.ExecutableQuery.html) for methods that can be used to execute the query and retrieve results.

This query object can be reused to issue the same query multiple times.

## Implementations

### `pub fn from_offsets(parent: Arc<BaseTable>, offsets: Vec<u64>) -> Self`

[Source](../../src/lancedb/query.rs.html#1375-1391)

Create a new `TakeQuery` that will return rows at the given offsets.

See [`crate::Table::take_offsets`](../table/struct.Table.html#method.take_offsets) for more details.

### `pub fn from_row_ids(parent: Arc<BaseTable>, row_ids: Vec<u64>) -> Self`

[Source](../../src/lancedb/query.rs.html#1396-1412)

Create a new `TakeQuery` that will return rows with the given row ids.

See [`crate::Table::take_row_ids`](../table/struct.Table.html#method.take_row_ids) for more details.

### `pub fn into_request(self) -> QueryRequest`

[Source](../../src/lancedb/query.rs.html#1415-1417)

Convert the `TakeQuery` into a `QueryRequest`.

### `pub fn current_request(&self) -> &QueryRequest`

[Source](../../src/lancedb/query.rs.html#1420-1422)

Return the current `QueryRequest` for the `TakeQuery`.

### `pub fn select(self, selection: Select) -> Self`

[Source](../../src/lancedb/query.rs.html#1446-1449)

Return only the specified columns. By default a query will return all columns from the table. However, this can have a very significant impact on latency. LanceDb stores data in a columnar fashion. This means we can finely tune our I/O to select exactly the columns we need. As a best practice you should always limit queries to the columns that you need. You can also use this method to create new "dynamic" columns based on your existing columns. For example, you may not care about "a" or "b" but instead simply want "a + b". This is often seen in the SELECT clause of an SQL query (e.g. `SELECT a+b FROM my_table`). To create dynamic columns use [`Select::Dynamic`](enum.Select.html#variant.Dynamic) (it might be easier to create this with the helper method [`Select::dynamic`](enum.Select.html#method.dynamic)). A column will be returned for each tuple provided. The first value in that tuple provides the name of the column. The second value in the tuple is an SQL string used to specify how the column is calculated. For example, an SQL query might state `SELECT a + b AS combined, c`. The equivalent input to [`Select::dynamic`](enum.Select.html#method.dynamic) would be `&[("combined", "a + b"), ("c", "c")]`. Columns will always be returned in the order given, even if that order is different than the order used when adding the data.

### `pub fn with_row_id(self) -> Self`

[Source](../../src/lancedb/query.rs.html#1452-1455)

Return the `_rowid` meta column from the Table.

## Trait Implementations

### `impl Clone for TakeQuery`

[Source](../../src/lancedb/query.rs.html#1365)

#### `fn clone(&self) -> TakeQuery`

Returns a duplicate of the value. (See [Clone documentation](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#tymethod.clone))

#### `fn clone_from(&mut self, source: &Self)`

Performs copy-assignment from `source`.

### `impl Debug for TakeQuery`

[Source](../../src/lancedb/query.rs.html#1365)

#### `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

Formats the value using the given formatter. (See [Debug documentation](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt))

### `impl ExecutableQuery for TakeQuery`

[Source](../../src/lancedb/query.rs.html#1464-1489)

#### `async fn create_plan(&self, options: QueryExecutionOptions) -> Result<Arc<ExecutionPlan>>`

Return the Datafusion `ExecutionPlan`. (See [ExecutableQuery::create_plan](trait.ExecutableQuery.html#tymethod.create_plan))

#### `async fn execute_with_options(&self, options: QueryExecutionOptions) -> Result<SendableRecordBatchStream>`

Execute the query and return results. (See [ExecutableQuery::execute_with_options](trait.ExecutableQuery.html#tymethod.execute_with_options))

#### `async fn explain_plan(&self, verbose: bool) -> Result<String>`

Explain the plan for a query. (See [ExecutableQuery::explain_plan](trait.ExecutableQuery.html#tymethod.explain_plan))

#### `async fn analyze_plan_with_options(&self, options: QueryExecutionOptions) -> Result<String>`

Execute the query and display the runtime metrics. (See [ExecutableQuery::analyze_plan_with_options](trait.ExecutableQuery.html#tymethod.analyze_plan_with_options))

#### `fn execute(&self) -> impl Future<Result<SendableRecordBatchStream>> + Send`

Execute the query with default options and return results. (See [ExecutableQuery::execute](trait.ExecutableQuery.html#method.execute))

#### `fn analyze_plan(&self) -> impl Future<Result<String>> + Send`

Execute the query and display the runtime metrics. (See [ExecutableQuery::analyze_plan](trait.ExecutableQuery.html#method.analyze_plan))

#### `fn output_schema(&self) -> impl Future<Result<SchemaRef>> + Send`

Return the output schema for data returned by the query without actually executing the query. (See [ExecutableQuery::output_schema](trait.ExecutableQuery.html#method.output_schema))

### `impl HasQuery for TakeQuery`

[Source](../../src/lancedb/query.rs.html#1458-1462)

#### `fn mut_query(&mut self) -> &mut QueryRequest`

## Auto Trait Implementations

- `impl Freeze for TakeQuery`
- `impl !RefUnwindSafe for TakeQuery`
- `impl Send for TakeQuery`
- `impl Sync for TakeQuery`
- `impl Unpin for TakeQuery`
- `impl UnsafeUnpin for TakeQuery`
- `impl !UnwindSafe for TakeQuery`

## Blanket Implementations

- `impl Any for T` (where T: 'static + ?Sized)
- `impl ArchivePointee for T`
- `impl Borrow<T> for T` (where T: ?Sized)
- `impl BorrowMut<T> for T` (where T: ?Sized)
- `impl CloneToUninit for T` (where T: Clone)
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T` (where T: Clone)
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl FromRef<T> for T` (where T: Clone)
- `impl HasTypeWitness<W> for T`
- `impl Identity for T`
- `impl Instrument for T`
- `impl Into<U> for T` (where U: From<T>)
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared` (where Shared: FromUnshared)
- `impl LayoutRaw for T`
- `impl Niching<NichedOption<T, N1>> for N2`
- `impl Pipe for T`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T` (where T: ?Sized)
- `impl QueryBase for T` (where T: HasQuery)
- `impl Same for T`
- `impl Tap for T`
- `impl ToOwned for T` (where T: Clone)
- `impl TryConv for T`
- `impl TryFrom<U> for T` (where U: Into<T>)
- `impl TryInto<U> for T` (where U: TryFrom<T>)
- `impl TryInto<U> for T` (async convert)
- `impl VZip<V> for T` (where V: MultiLane)
- `impl WithSubscriber for T`
- `impl ErasedDestructor for T` (where T: 'static)
- `impl MaybeSend for T` (where T: Send) (two occurrences)
- `impl ResultError for E` (where E: Send + Debug + Sync)
- `impl ResultType for T` (where T: Send + Clone + Sync + Debug)
