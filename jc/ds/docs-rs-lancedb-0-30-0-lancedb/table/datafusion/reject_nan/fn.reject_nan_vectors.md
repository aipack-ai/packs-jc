# Function `reject_nan_vectors`

[lancedb](../../../index.html) :: [table](../../index.html) :: [datafusion](../index.html) :: [reject\_nan](index.html)

[Source](../../../../src/lancedb/table/datafusion/reject_nan.rs.html#39-71)

```rust
pub fn reject_nan_vectors(
    input: Arc<dyn ExecutionPlan>,
) -> Result<Arc<dyn ExecutionPlan>>
```

**Expand description**

Wraps the input plan with a projection that checks vector columns for NaN values.

Non-vector columns pass through unchanged. Vector columns are wrapped with a UDF that returns the column as-is if no NaNs are present, or errors otherwise.
