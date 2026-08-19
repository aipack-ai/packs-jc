# LuaSyncClosure

## Module

- [aiprog](../../index.html):: [registry](../index.html):: [registry_internal](index.html)

## Type Alias

```rust
pub type LuaSyncClosure = 
    Box<Fn(&Lua, Value) -> Result + Send + Sync>;
```

## Aliased Type

```rust
pub struct LuaSyncClosure(/* private fields */);
```
