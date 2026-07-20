# create_plan in lancedb::table::query

The function `create_plan` in module `lancedb::table::query` creates a query execution plan for a vector database query.

## Function signature

```rs
pub async fn create_plan(
    table: &NativeTable,
    query: &AnyQuery,
    options: QueryExecutionOptions,
) -> Result<Arc<ExecutionPlan>>
```

- `table`: A reference to a `NativeTable` instance.
- `query`: A reference to an `AnyQuery` enum representing the query.
- `options`: A `QueryExecutionOptions` struct with execution settings.
- Returns: `Result<Arc<ExecutionPlan>>` – an `Arc`-wrapped `ExecutionPlan` or an error.
