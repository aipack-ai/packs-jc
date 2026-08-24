# `keyring_core::api` - Rust

**Crate:** `keyring-core` 1.0.0  
**Module:** `keyring_core::api`  
**Source:** [api.rs](../../src/keyring_core/api.rs.html#1-258)

## Platform-independent secure storage model

This module defines a plug-and-play model for credential stores. The model comprises two traits:

- [`CredentialStoreApi`](trait.CredentialStoreApi.html): Defines store-level operations.
- [`CredentialApi`](trait.CredentialApi.html): Defines entry-level operations.

These traits must be implemented in a thread-safe way. Thread-safe wrapper types are provided through:

- [`CredentialStore`](type.CredentialStore.html)
- [`Credential`](type.Credential.html)

This module page does not directly declare any free functions. Operations are defined as methods on the traits listed below.

## Enums

### [`CredentialPersistence`](enum.CredentialPersistence.html)

A descriptor for the lifetime of stored credentials, returned from [`CredentialStoreApi::persistence`](trait.CredentialStoreApi.html#method.persistence).

## Traits

### [`CredentialApi`](trait.CredentialApi.html)

The API implemented by [`Credential`](type.Credential.html) values for credential-level operations.

### [`CredentialStoreApi`](trait.CredentialStoreApi.html)

The API implemented by [`CredentialStore`](type.CredentialStore.html) values for credential-store-level operations.

## Type aliases

### [`Credential`](type.Credential.html)

A thread-safe implementation of the [`CredentialApi`](trait.CredentialApi.html) trait.

### [`CredentialStore`](type.CredentialStore.html)

A thread-safe implementation of the [`CredentialStoreApi`](trait.CredentialStoreApi.html) trait.
