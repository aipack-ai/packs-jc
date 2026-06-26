# named_params in turso - Rust

## Macro `named_params`

Source: [../src/turso/params.rs.html#299-307](../src/turso/params.rs.html#299-307)

```text
macro_rules! named_params {
    () => { ... };
    ($($param_name:literal: $value:expr),* $(,)?) => { ... };
}
```

### Expand description

Construct named params from a heterogeneous set of params types.
