# col in lancedb::expr

Source: [../../src/lancedb/expr.rs.html#37-40](../../src/lancedb/expr.rs.html#37-40)

## Function Signature

```text
pub fn col(name: impl Into<String>) -> DfExpr
```

## Description

Create a column reference expression, preserving the name exactly as given.

Unlike DataFusion’s built-in [`col`](https://docs.rs/datafusion-expr/53.1.0/x86_64-unknown-linux-gnu/datafusion_expr/expr_fn/fn.col.html), this function does **not** normalise the identifier to lower-case, so `col("firstName")` correctly references a field named `firstName`.
