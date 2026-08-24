# `set_default_store` in `keyring_core` - Rust

## Function `set_default_store`

**Crate:** `keyring_core` 1.0.0

[Source](../src/keyring_core/lib.rs.html#65-71)

```rust
pub fn set_default_store(
    new: std::sync::Arc<keyring_core::api::CredentialStore>,
)
```

**Return type:** `()`

Sets the credential store used by default to create entries.

This function is intended for clients that use one credential store. If you are using multiple credential stores and need precise control over which credential is associated with each store, you may prefer to have your store build entries directly.

The function blocks while waiting for all other threads currently creating entries to complete. It is intended to be called during application startup, before creating any entries.
