# `Result`

The `markex` crate’s result type, representing either a successful value or a [`markex::Error`](enum.Error.html).

## Type alias

[Source](../src/markex/error.rs.html#5)

```rust
pub type Result<T> = std::result::Result<T, Error>;
```

## Aliased type

```rust
pub enum Result<T> {
    Ok(T),
    Err(Error),
}
```

## Variants

### `Ok(T)`

Contains the success value.

### `Err(Error)`

Contains the error value.
