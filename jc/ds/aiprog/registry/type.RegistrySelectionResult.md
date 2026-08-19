# RegistrySelectionResult

[aiprog](../index.html) :: [registry](index.html)

## Type Alias

[Source](../../src/aiprog/registry/registry_types.rs.html#119)

```rust
pub type RegistrySelectionResult = Result<T, RegistrySelectionError>;
```

## Aliased Type

```rust
pub enum RegistrySelectionResult {
    Ok(T),
    Err(RegistrySelectionError),
}
```

## Variants

- `Ok(T)`: Contains the success value.
- `Err(RegistrySelectionError)`: Contains the error value.
