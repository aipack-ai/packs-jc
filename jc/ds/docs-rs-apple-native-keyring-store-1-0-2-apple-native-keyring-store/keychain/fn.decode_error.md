# `decode_error` in `apple_native_keyring_store::keychain`

## `apple_native_keyring_store` 1.0.2

## Module: `apple_native_keyring_store::keychain`

## Function `decode_error`

[Source](../../src/apple_native_keyring_store/keychain.rs.html#367-378)

```rust
pub fn decode_error(
    err: security_framework::base::Error,
) -> keyring_core::error::Error
```

Maps a macOS API error to a crate error with appropriate annotation.

The macOS error code values used here are from [this reference](https://opensource.apple.com/source/libsecurity_keychain/libsecurity_keychain-78/lib/SecBase.h.auto.html).
