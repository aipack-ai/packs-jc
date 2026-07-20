# `analyze_query_plan`

**Module:** [`lancedb::table::query`](index.html)  
**Source:** [`../../../src/lancedb/table/query.rs.html#55-62`](../../../src/lancedb/table/query.rs.html#55-62)

## Signature

```text
pub async fn analyze_query_plan(
    table: &NativeTable,
    query: &AnyQuery,
    options: QueryExecutionOptions,
) -> Result<String>
```

## Parameters

- `table` – `&lancedb::table::NativeTable`
- `query` – `&lancedb::table::query::AnyQuery`
- `options` – `lancedb::query::QueryExecutionOptions`

## Return

- `Result<String>` – A string representation of the query plan.
