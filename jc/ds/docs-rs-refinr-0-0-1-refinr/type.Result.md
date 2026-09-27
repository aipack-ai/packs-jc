# Result

In crate [`refinr`](index.html), version 0.0.1.

## Type Alias

```rust
pub type Result<T> = std::result::Result<T, Error>;
```

The result type returned by fallible crate operations.

### Variants

- `Ok(T)` — Contains the success value.
- `Err(Error)` — Contains the error value.
