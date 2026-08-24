# CredentialStore in `keyring_core::api` - Rust

## `keyring_core` 1.0.0

## `CredentialStore`

### In `keyring_core::api`

[`keyring_core`](../index.html) :: [`api`](index.html)

## Type Alias: `CredentialStore`

[Source](../../src/keyring_core/api.rs.html#258)

```rust
pub type CredentialStore =
    dyn CredentialStoreApi + Send + Sync;
```

A thread-safe implementation of the [CredentialBuilder API](trait.CredentialStoreApi.html).

### Trait Implementations

#### `Debug` for `CredentialStore`

[Source](../../src/keyring_core/api.rs.html#251-255)

##### `fn fmt`

[Source](../../src/keyring_core/api.rs.html#252-254)

```rust
fn fmt(
    &self,
    f: &mut Formatter<'_>,
) -> Result
```

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)
