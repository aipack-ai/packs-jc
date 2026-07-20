# func in lancedb::expr

## Function Signature

[Source](../../src/lancedb/expr.rs.html#75-90)

```text
pub fn func(name: impl AsRef<str>, args: Vec<Expr>) -> Result<Expr>
```

## Description

This function creates an expression by combining a function name and a list of arguments. It is part of the `lancedb::expr` module.
