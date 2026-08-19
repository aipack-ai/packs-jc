# Type Alias Result

[Source](../src/markex/error.rs.html#5)

```rust
pub type Result<T> = std::result::Result<T, Error>;
```

## Aliased Type

```rust
pub enum Result<T> {
    Ok(T),
    Err(Error),
}
```

## Variants

- `Ok(T)` - Contains the success value.
- `Err(Error)` - Contains the error value.
