# `externalize_attributes` in `keyring_core::attributes`

## `keyring_core` 1.0.0

## In `keyring_core::attributes`

## Function `externalize_attributes`

```rust
pub fn externalize_attributes(
    attrs: &HashMap<&str, &str>,
) -> HashMap<String, String>
```

Converts a borrowed key-value map of borrowed strings to an owned map of owned strings.
