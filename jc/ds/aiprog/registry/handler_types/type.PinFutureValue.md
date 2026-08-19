# PinFutureValue

[aiprog](../index.html):: [registry](../index.html):: [handler_types](index.html)

## Type Alias

- [Source](https://doc.rust-lang.org/1.97.1/core/pin/struct.Pin.html)

```rust
pub type PinFutureValue = 
    Pin<Box<FutureHandlerResult>>;
```

## Description

The pinned future returned by a handler call, resolving to a normalized response (`mlua::Value`) or a normalized `HandlerError`.

## Aliased Type

```rust
pub struct PinFutureValue {
    // private fields
}
```
