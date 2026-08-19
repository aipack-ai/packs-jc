# Result

[Source](https://github.com/)

```rust
pub type Result = Result<T, Error>;
```

## Aliased Type

```rust
pub enum Result {
    Ok(T),
    Err(Error),
}
```

## Variants

- `Ok(T)`: Contains the success value.
- `Err(Error)`: Contains the error value.
