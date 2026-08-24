# Credential in `keyring_core::api` - Rust

## `keyring_core` 1.0.0

## Credential

### In `keyring_core::api`

[`keyring_core`](../index.html) :: [`api`](index.html)

## Type Alias: `Credential`

[Source](../../src/keyring_core/api.rs.html#146)

```rust
pub type Credential = dyn CredentialApi + Send + Sync;
```

A thread-safe implementation of the [Credential API](trait.CredentialApi.html).

## Trait Implementations

### `Debug` for `Credential`

[Source](../../src/keyring_core/api.rs.html#148-152)

```rust
impl Debug for Credential
```

#### `fmt`

[Source](../../src/keyring_core/api.rs.html#149-151)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt).
