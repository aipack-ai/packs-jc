# IntoValue

**Crate:** `turso` 0.6.1  
**Source:** [lib.rs lines 558-560](../src/turso/lib.rs.html#558-560)

## Trait Definition

```rust
pub trait IntoValue {
    // Required method
    fn into_value(self) -> Result<Value>;
}
```

## Required Methods

- `fn into_value(self) -> Result<Value>` — Converts the value into a `turso::Value`. See the [source](../src/turso/lib.rs.html#559) for details.

## Implementors

*None listed in this snippet.*
