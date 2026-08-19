# Trait AipOutput

[Source](%5B_SOURCE_URL_%5D)

```rust
pub trait AipOutput:
    AipIntoLua
    + JsonSchema
    + Send
    + Sync
    + 'static { }
```

Unified trait for handler output types.

Any type used as a handler output must be serializable to a Lua value, have a JSON schema, and be thread-safe. The blanket implementation ensures any type satisfying the component bounds automatically qualifies.

## Dyn Compatibility

This trait is not dyn compatible.

- In older versions of Rust, dyn compatibility was called "object safety", so this trait is not object safe.

## Implementors
