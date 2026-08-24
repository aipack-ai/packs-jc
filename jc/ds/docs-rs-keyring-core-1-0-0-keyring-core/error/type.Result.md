# `Result` in `keyring_core::error` - Rust

## `keyring_core` 1.0.0

## Type Alias: `Result`

[Source](../../src/keyring_core/error.rs.html#76)

```rust
pub type Result<T> = core::result::Result<T, Error>;
```

`Result<T>` is an alias for [`core::result::Result<T, Error>`](https://doc.rust-lang.org/nightly/core/result/enum.Result.html), using [`keyring_core::error::Error`](enum.Error.html) as the error type.

## Underlying Type

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
