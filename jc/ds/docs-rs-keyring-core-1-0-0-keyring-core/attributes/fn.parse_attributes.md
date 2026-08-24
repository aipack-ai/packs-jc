# `parse_attributes` in `keyring_core::attributes` - Rust

## `keyring_core` 1.0.0

## In `keyring_core::attributes`

## Function `parse_attributes`

[Source](../../src/keyring_core/attributes.rs.html#20-59)

```rust
pub fn parse_attributes(
    keys: &[&str],
    attrs: Option<&HashMap<&str, &str>>,
) -> Result<HashMap<String, String>>
```

### Description

Parse an optional key-value `&str` map for allowed keys, returning a map of owned strings.

If a key is prefixed with a `*`, it is required to have a boolean value, and the `*` is stripped from the key name when parsing and returning the map.

If a key is prefixed with a `+`, it is required to have a non-empty value, and the `+` is stripped from the key name when parsing and returning the map.

Returns an [`Invalid`](../error/enum.Error.html#variant.Invalid) error if not all keys are allowed, or if one of the keys marked as boolean has a value other than `true` or `false`.
