# Result in `simple_fs` - Rust

## `simple_fs` 0.12.3

### Type Alias: `Result`

[Source](../src/simple_fs/error.rs.html#7)

```text
pub type Result<T> = std::result::Result<T, Error>;
```

`Result<T>` is an alias for [`std::result::Result<T, Error>`](https://doc.rust-lang.org/nightly/core/result/enum.Result.html), using [`simple_fs::Error`](enum.Error.html) as its error type.

## Underlying Type

```text
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
