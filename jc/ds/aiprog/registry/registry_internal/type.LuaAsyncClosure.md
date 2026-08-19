# LuaAsyncClosure

## Module

- `aiprog::registry::registry_internal`

## Type Alias

```rust
pub type LuaAsyncClosure = 
    Box<dyn Fn(Lua, Value) -> Pin<Box<dyn Future>> + Send + Sync>;
```

## Aliased Type

```rust
pub struct LuaAsyncClosure(/* private fields */);
```
