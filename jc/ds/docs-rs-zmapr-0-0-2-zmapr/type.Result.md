# `Result`

In crate `zmapr`.

## Type alias

```rust
pub type Result<T> = core::result::Result<T, Error>;
```

`Result` is the result type returned by fallible crate operations.

## Variants

- `Ok(T)` — contains the success value.
- `Err(Error)` — contains the error value.
