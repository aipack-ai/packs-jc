# `keyring_core::error` Module

[`keyring_core`](../../keyring_core/index.html) 1.0.0

## Description

Platform-independent error model.

There is an escape hatch here for surfacing platform-specific error information returned by the platform-specific storage provider, but the concrete objects returned must be `Send` so they can be moved from one thread to another. Since most platform errors are integer error codes, this requirement is not much of a burden on platform-specific store providers.

[Source](../../src/keyring_core/error.rs.html#1-148)

## Module Items

### Enums

- [`Error`](enum.Error.html) — Each variant of the `Error` enum provides a summary of the error. More details, if relevant, are contained in the associated value, which may be platform-specific.

### Functions

- [`decode_password`](fn.decode_password.html) — Tries to interpret a byte vector as a password string.

### Type Aliases

- [`PlatformError`](type.PlatformError.html)
- [`Result`](type.Result.html)
