# execute_query in lancedb::table::query - Rust

## Function `execute_query`

**Source:** [View source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/table/query.rs#L39-L53)

```text
pub async fn execute_query(
    table: &NativeTable,
    query: &AnyQuery,
    options: QueryExecutionOptions,
) -> Result<DatasetRecordBatchStream>
```

### Parameters

- `table` — Reference to a `NativeTable` instance.
- `query` — Reference to an `AnyQuery` enum representing the query to execute.
- `options` — A `QueryExecutionOptions` struct with execution configuration.

### Return Type

- `Result<DatasetRecordBatchStream>` — An asynchronous result yielding a stream of record batches.
