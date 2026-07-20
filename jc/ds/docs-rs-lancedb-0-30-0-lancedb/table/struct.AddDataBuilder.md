# AddDataBuilder

**In lancedb::table** ([index.html]())

**Source:** [../../src/lancedb/table/add_data.rs.html#51-60]()

```text
pub struct AddDataBuilder { /* private fields */ }
```

**Expand description**

A builder for configuring a [`crate::table::Table::add`](struct.Table.html#method.add) operation.

## Implementations

### `impl AddDataBuilder`

#### `pub fn mode(self, mode: AddDataMode) -> Self`

#### `pub fn write_options(self, options: WriteOptions) -> Self`

#### `pub fn on_nan_vectors(self, behavior: NaNVectorBehavior) -> Self`

Configure how to handle NaN values in vector columns.

By default, any vectors containing NaN values will be rejected with an error, since NaNs cannot be indexed for search. Setting this to `Keep` will allow NaN values to be added to the table, but they will not be indexed and will not be searchable.

#### `pub fn progress(self, callback: impl FnMut(&WriteProgress) + Send + 'static) -> Self`

Set a callback to receive progress updates during the add operation.

The callback is invoked once per batch written, and once more with [`WriteProgress::done`](write_progress/struct.WriteProgress.html#method.done) set to `true` when the write completes.

```text
let batch = arrow_array::record_batch!(("id", Int32, [1, 2, 3])).unwrap();
table.add(batch)
    .progress(|p| println!("{}/{:?} rows", p.output_rows(), p.total_rows()))
    .execute()
    .await?;
```

#### `pub fn write_parallelism(self, parallelism: usize) -> Self`

Set the number of parallel write streams.

By default, the number of streams is estimated from the data size. Setting this to `1` disables parallel writes.

#### `pub async fn execute(self) -> Result<AddResult>`

## Trait Implementations

### `impl Debug for AddDataBuilder`

#### `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

Formats the value using the given formatter.

## Auto Trait Implementations

- `impl Freeze for AddDataBuilder`
- `impl !RefUnwindSafe for AddDataBuilder`
- `impl Send for AddDataBuilder`
- `impl !Sync for AddDataBuilder`
- `impl Unpin for AddDataBuilder`
- `impl UnsafeUnpin for AddDataBuilder`
- `impl !UnwindSafe for AddDataBuilder`
