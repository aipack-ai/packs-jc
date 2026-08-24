# `decode_password` in `keyring_core::error`

## `keyring_core` 1.0.0

## In `keyring_core::error`

[Source](../../src/keyring_core/error.rs.html#128-130)

```rust
pub fn decode_password(bytes: Vec<u8>) -> Result<String>
```

Try to interpret a byte vector as a password string.
