# lit in lancedb::expr

## Module
`lancedb::expr`

## Function `lit`

**Source:** [datafusion_expr/literal.rs line 25](https://docs.rs/datafusion-expr/53.1.0/x86_64-unknown-linux-gnu/src/datafusion_expr/literal.rs.html#25)

**Signature:**

```rust
pub fn lit<T: Literal>(n: T) -> Expr
```

**Where:**
- `T: Literal` (trait from `datafusion_expr`)

**Return type:** `Expr` (alias for `lancedb::expr::DfExpr`)

**Description:**

Create a literal expression.
