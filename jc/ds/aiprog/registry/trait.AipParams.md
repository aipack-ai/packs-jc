# Trait AipParams

[Source](../../src/aiprog/registry/handler_traits.rs.html#11)

```rust
pub trait AipParams:
    AipFromLua
    + JsonSchema
    + Send
    + Sync
    + 'static { }
```

Unified trait for handler params types.

Any type used as handler params must be deserializable from a Lua value, have a JSON schema, and be thread-safe. The blanket implementation ensures any type satisfying the component bounds automatically qualifies.

## Dyn Compatibility

This trait is **not** [dyn compatible](https://doc.rust-lang.org/1.97.1/reference/items/traits.html#dyn-compatibility).

- In older versions of Rust, dyn compatibility was called "object safety", so this trait is not object safe.

## Implementors
