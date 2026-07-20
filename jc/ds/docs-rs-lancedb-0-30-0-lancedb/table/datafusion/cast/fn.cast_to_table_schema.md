# cast_to_table_schema

**Module:** `lancedb::table::datafusion::cast`  
**Source:** [View source](https://docs.rs/lancedb/0.30.0/lancedb/table/datafusion/cast/fn.cast_to_table_schema.html)

## Function Signature

```text
pub fn cast_to_table_schema(
    input: Arc<ExecutionPlan>,
    table_schema: &Schema,
) -> Result<Arc<ExecutionPlan>>
```

## Parameters

- `input`: `Arc<ExecutionPlan>` - The input execution plan.
- `table_schema`: `&Schema` - The target table schema.

## Return Type

`Result<Arc<ExecutionPlan>>`
