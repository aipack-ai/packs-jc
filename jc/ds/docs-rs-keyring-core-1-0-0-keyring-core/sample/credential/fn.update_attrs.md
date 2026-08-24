# `update_attrs` in `keyring_core::sample::credential`

## Module

- **Crate:** [`keyring_core`](../../../keyring_core/index.html) 1.0.0
- **Module:** [`keyring_core::sample::credential`](index.html)
- **Feature:** Available only when the `sample` crate feature is enabled.

## Function

### `update_attrs`

[Source](../../../src/keyring_core/sample/credential.rs.html#240-244)

```rust
pub fn update_attrs(
    cred: &mut CredValue,
    attrs: &HashMap<&str, &str>,
)
```

Updates the attributes on a credential.

This is a helper function used by `update_attributes`.

## Parameters

- `cred: &mut CredValue` — The credential whose attributes are updated.
- `attrs: &HashMap<&str, &str>` — The attributes to apply to the credential.

## Return Value

Returns `()`.
