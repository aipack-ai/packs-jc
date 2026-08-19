# Module aiprog::registry::handler_types

[Source](../../../src/aiprog/registry/handler_types.rs.html#1-48)

The `handler_types` module defines core marker types, traits, and type aliases for handling execution modes within the registry.

## Module Items

- [Structs](#structs)
- [Traits](#traits)
- [Type Aliases](#type-aliases)

## Structs

- [AsyncMarker](struct.AsyncMarker.html) - Marker type for asynchronous handler implementations.
- [SyncMarker](struct.SyncMarker.html) - Marker type for synchronous handler implementations.

### Struct Definitions

```rust
pub struct AsyncMarker;
```

```rust
pub struct SyncMarker;
```

## Traits

- [Handler](trait.Handler.html) - The generic, Lua-agnostic handler trait, modeled on `rpc-router::Handler`.

### Trait Signatures

```rust
pub trait Handler {
    // Trait methods and associated types
}
```

## Type Aliases

- [PinFutureValue](type.PinFutureValue.html) - The pinned future returned by a handler call, resolving to a normalized response (`mlua::Value`) or a normalized `HandlerError`.

### Type Alias Signatures

```rust
pub type PinFutureValue<'a> = Pin<Box<dyn Future<Output = Result<mlua::Value, HandlerError>> + 'a>>;
```
