# get_default_store in keyring_core - Rust

## Function `get_default_store`

**Crate:** `keyring_core` 1.0.0

[Source](../src/keyring_core/lib.rs.html#74-80)

```rust
pub fn get_default_store() -> Option<Arc<CredentialStore>>
```

### Description

Gets the default credential store.

### Return type

- `Option<Arc<CredentialStore>>`
  - `Option` containing an atomically reference-counted `CredentialStore`, or `None` if no default store is available.
