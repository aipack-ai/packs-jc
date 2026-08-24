# keyring_core

## Crate Information

- **Version:** 1.0.0
- **Description:** Cross-platform library for managing passwords and other secrets
- **License:** [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- **Release date:** 09 July 2026
- **Documentation coverage:** [78.26%](https://docs.rs/crate/keyring-core/1.0.0)
- **Homepage:** https://github.com/open-source-cooperative/keyring-core
- **Repository:** https://github.com/open-source-cooperative/keyring-core.git
- **crates.io:** https://crates.io/crates/keyring-core
- **Owner:** [brotskydotcom](https://crates.io/users/brotskydotcom)

## Dependencies

### Optional Dependencies

- [chrono ^0.4](https://docs.rs/chrono/^0.4/)
- [dashmap ^6.1](https://docs.rs/dashmap/^6.1/)
- [regex ^1](https://docs.rs/regex/^1/)
- [ron ^0.12](https://docs.rs/ron/^0.12/)
- [serde ^1](https://docs.rs/serde/^1/)
- [uuid ^1](https://docs.rs/uuid/^1/)

### Normal Dependencies

- [log ^0.4](https://docs.rs/log/^0.4/)

### Development Dependencies

- [doc-comment ^0.3](https://docs.rs/doc-comment/^0.3/)
- [env_logger ^0.11](https://docs.rs/env_logger/^0.11/)
- [fastrand ^2](https://docs.rs/fastrand/^2/)

## Platform

- `x86_64-unknown-linux-gnu`

## Feature Flags

See the [available feature flags](https://docs.rs/crate/keyring-core/1.0.0/features).

## Crate Documentation

This crate provides a cross-platform library that supports storage and retrieval of passwords and other secrets in a variety of secure credential stores.

See the [keyring ecosystem overview](https://github.com/open-source-cooperative/keyring-rs/wiki/Keyring) for an introduction and the [keyring-core API guide](https://github.com/open-source-cooperative/keyring-rs/wiki/Keyring-Core) for comprehensive API documentation.

The crate provides two cross-platform credential stores for client testing and as examples for developers building keyring-compatible credential store modules. These stores are explicitly *not* warranted to be secure or robust:

- [Mock credential store](mock/index.html)
- [Sample credential store](sample/index.html)

The `sample` module is only built when the `sample` feature is enabled.

## Thread Safety

While this crate's code is thread-safe and requires credential store objects to implement `Send` and `Sync`, the underlying credential stores may not reliably handle access to a single credential from different threads. See the documentation for each credential store for details.

## Re-exports

- [`Credential`](api/type.Credential.html) — Credential type
- [`CredentialPersistence`](api/enum.CredentialPersistence.html) — Credential persistence options
- [`CredentialStore`](api/type.CredentialStore.html) — Credential store type
- [`Error`](error/enum.Error.html) — Error type
- [`Result`](error/type.Result.html) — Result type

## Modules

- [`api`](api/index.html) — Platform-independent secure storage model
- [`attributes`](attributes/index.html) — Utility functions for attribute maps
- [`error`](error/index.html) — Platform-independent error model
- [`mock`](mock/index.html) — Mock credential store
- [`sample`](sample/index.html) — Sample credential store

## Structs

- [`Entry`](struct.Entry.html) — A named entry in a credential store

## Functions

- [`get_default_store`](fn.get_default_store.html) — Gets the default credential store
- [`set_default_store`](fn.set_default_store.html) — Sets the credential store used by default to create entries
- [`unset_default_store`](fn.unset_default_store.html) — Releases the default credential store

## API Signatures

The supplied crate index content identifies the public API items but does not include their Rust signatures or return types. Refer to the linked Rustdoc pages for the complete signatures:

- [`Entry`](struct.Entry.html)
- [`get_default_store`](fn.get_default_store.html)
- [`set_default_store`](fn.set_default_store.html)
- [`unset_default_store`](fn.unset_default_store.html)
- [`Credential`](api/type.Credential.html)
- [`CredentialPersistence`](api/enum.CredentialPersistence.html)
- [`CredentialStore`](api/type.CredentialStore.html)
- [`Error`](error/enum.Error.html)
- [`Result`](error/type.Result.html)
