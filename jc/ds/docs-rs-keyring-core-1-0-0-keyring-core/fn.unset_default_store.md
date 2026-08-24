# `unset_default_store` in `keyring_core` - Rust

## Function `unset_default_store`

**Crate:** `keyring_core` 1.0.0

[Source](../src/keyring_core/lib.rs.html#89-95)

```rust
pub fn unset_default_store() -> Option<Arc<CredentialStore>>
```

Releases the default credential store.

This returns the old value for the default credential store and forgets what it was. Since the default credential store is kept in a static variable, not releasing it will cause your credential store never to be released, which may have unintended side effects.
