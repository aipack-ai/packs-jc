# Result in `yaml_serde` - Rust

## `yaml_serde` 0.10.7

# Type Alias: `Result`

```rust
pub type Result<T> = std::result::Result<T, Error>;
```

[Source](../src/yaml_serde/error.rs.html#16)

Alias for a [`Result`](https://doc.rust-lang.org/nightly/core/result/enum.Result.html) with the error type `yaml_serde::Error`.

## Aliased Type

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
