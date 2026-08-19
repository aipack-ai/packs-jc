# Macro impl_lua_serde_traits

## Overview

Generates `FromLua` and `ToLua` implementations for a type that implements `serde::Serialize` and `serde::de::DeserializeOwned`, piggy‑backing on the existing `serde_json::Value` ↔ `mlua::Value` conversion.

## Signature

```rust
macro_rules! impl_lua_serde_traits {
    ($ty:path) => { ... };
}
```
