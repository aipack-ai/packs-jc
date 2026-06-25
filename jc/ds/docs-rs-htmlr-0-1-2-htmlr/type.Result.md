# Result in htmlr - Rust

## Type Alias Result

[Source](../src/htmlr/error.rs.html#5)

```rust
pub type Result = Result<Error>;
```

## Aliased Type

```rust
pub enum Result {
    Ok(T),
    Err(Error),
}
```

## Variants

- Ok(T): Contains the success value.
- Err(Error): Contains the error value.
