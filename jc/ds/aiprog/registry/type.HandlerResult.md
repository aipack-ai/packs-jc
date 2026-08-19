# HandlerResult in aiprog::registry

## Type Alias

[Source](../../src/aiprog/registry/handler_error.rs.html#6)

```rust
pub type HandlerResult<T> = Result<T, HandlerError>;
```

## Aliased Type

```rust
pub enum HandlerResult<T> {
    Ok(T),
    Err(HandlerError),
}
```

## Variants

- [Ok](#variant.Ok)
- [Err](#variant.Err)

### Ok(T)

Contains the success value.

### Err(HandlerError)

Contains the error value.
