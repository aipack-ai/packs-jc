# PlatformError in `keyring_core::error` - Rust

## `keyring_core` 1.0.0

## `PlatformError`

### In `keyring_core::error`

[Source](../../src/keyring_core/error.rs.html#15)

## Type Alias

```rust
pub type PlatformError = Box<dyn Error + Send + Sync>;
```

`PlatformError` is a boxed error type that can be transferred across threads and accessed safely from multiple threads.

### Aliased Type

```rust
pub struct PlatformError(/* private fields */);
```
