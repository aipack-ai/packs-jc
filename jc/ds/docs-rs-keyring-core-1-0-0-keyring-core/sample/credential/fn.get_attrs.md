# `get_attrs` in `keyring_core::sample::credential`

## Function `get_attrs`

```rust
pub fn get_attrs(
    uuid: &str,
    cred: &CredValue,
) -> HashMap<String, String>
```

Available on **crate feature `sample`** only.

### Description

Gets the attributes on a credential.

This is a helper function used by `get_attributes`.
