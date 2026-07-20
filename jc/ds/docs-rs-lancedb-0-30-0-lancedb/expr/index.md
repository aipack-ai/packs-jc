# lancedb::expr - Rust

Source: [expr.rs](../../src/lancedb/expr.rs.html#4-206)

Expand description

Expression builder API for type-safe query construction

This module provides a fluent API for building expressions that can be used in filters and projections. It wraps DataFusion’s expression system.

## Examples

```rust
use std::ops::Mul;
use lancedb::expr::{col, lit};
let expr = col("age").gt(lit(18));
let expr = col("age").gt(lit(18)).and(col("status").eq(lit("active")));
let expr = col("price") * lit(1.1);
```

## Enums

- [DfExpr](enum.DfExpr.html "enum lancedb::expr::DfExpr") — Represents logical expressions such as `A + 1`, or `CAST(c1 AS int)`.

## Functions

- [col](fn.col.html "fn lancedb::expr::col") — Create a column reference expression, preserving the name exactly as given.
- [contains](fn.contains.html "fn lancedb::expr::contains")
- [expr_cast](fn.expr_cast.html "fn lancedb::expr::expr_cast")
- [expr_to_sql_string](fn.expr_to_sql_string.html "fn lancedb::expr::expr_to_sql_string")
- [func](fn.func.html "fn lancedb::expr::func")
- [lit](fn.lit.html "fn lancedb::expr::lit") — Create a literal expression
- [lower](fn.lower.html "fn lancedb::expr::lower")
- [upper](fn.upper.html "fn lancedb::expr::upper")
