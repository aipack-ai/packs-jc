# NaNVectorBehavior in lancedb::table

[Source](../../src/lancedb/table/add_data.rs.html#42-48)

## Enum Definition

```rust
pub enum NaNVectorBehavior {
    Error,
    Keep,
}
```

## Variants

- **Error** – Reject any vectors containing NaN values (the default)
- **Keep** – Allow NaN values to be added, but they will not be indexed for search

## Trait Implementations

### `impl Clone for NaNVectorBehavior`

```rust
fn clone(&self) -> NaNVectorBehavior
```

### `impl Copy for NaNVectorBehavior`

### `impl Debug for NaNVectorBehavior`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Default for NaNVectorBehavior`

```rust
fn default() -> NaNVectorBehavior
```
