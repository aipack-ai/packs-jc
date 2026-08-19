# HandlerFactory

[aiprog](../../index.html) :: [registry](../index.html) :: [registry_internal](index.html)

## Type Alias

- `HandlerFactory` [Source](../../../src/aiprog/registry/registry_internal.rs.html#15)

```rust
pub type HandlerFactory = Box<
    dyn Fn(HandlerCallContext) -> AipHandlerClosure
    + Send
    + Sync
>;
```

## Aliased Type

```rust
pub struct HandlerFactory(/* private fields */);
```
