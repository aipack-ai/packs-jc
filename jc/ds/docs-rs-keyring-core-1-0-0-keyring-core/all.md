# List of all items in this crate

## `keyring-core` 1.0.0

Cross-platform library for managing passwords and secrets.

- [Docs.rs crate page](/crate/keyring-core/1.0.0)
- License: [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- Released: 09 July 2026
- [Homepage](https://github.com/open-source-cooperative/keyring-core)
- [Repository](https://github.com/open-source-cooperative/keyring-core.git)
- [crates.io](https://crates.io/crates/keyring-core)
- [Source](/crate/keyring-core/1.0.0/source/)
- Owner: [brotskydotcom](https://crates.io/users/brotskydotcom)
- [78.26% of the crate is documented](/crate/keyring-core/1.0.0)

### Dependencies

- [chrono ^0.4](https://docs.rs/chrono/^0.4/) — normal, optional
- [dashmap ^6.1](https://docs.rs/dashmap/^6.1/) — normal, optional
- [log ^0.4](https://docs.rs/log/^0.4/) — normal
- [regex ^1](https://docs.rs/regex/^1/) — normal, optional
- [ron ^0.12](https://docs.rs/ron/^0.12/) — normal, optional
- [serde ^1](https://docs.rs/serde/^1/) — normal, optional
- [uuid ^1](https://docs.rs/uuid/^1/) — normal, optional
- [doc-comment ^0.3](https://docs.rs/doc-comment/^0.3/) — development
- [env_logger ^0.11](https://docs.rs/env_logger/^0.11/) — development
- [fastrand ^2](https://docs.rs/fastrand/^2/) — development

### Platform

- [x86_64-unknown-linux-gnu](/crate/keyring-core/1.0.0/target-redirect/keyring_core/all.html)

### Feature flags

- [Browse available feature flags](/crate/keyring-core/1.0.0/features)

## Crate items

### Structs

- [`Entry`](struct.Entry.html)
- [`mock::Cred`](mock/struct.Cred.html)
- [`mock::CredData`](mock/struct.CredData.html)
- [`mock::Store`](mock/struct.Store.html)
- [`sample::credential::CredId`](sample/credential/struct.CredId.html)
- [`sample::credential::CredKey`](sample/credential/struct.CredKey.html)
- [`sample::store::CredValue`](sample/store/struct.CredValue.html)
- [`sample::store::SelfRef`](sample/store/struct.SelfRef.html)
- [`sample::store::Store`](sample/store/struct.Store.html)

### Enums

- [`api::CredentialPersistence`](api/enum.CredentialPersistence.html)
- [`error::Error`](error/enum.Error.html)

### Traits

- [`api::CredentialApi`](api/trait.CredentialApi.html)
- [`api::CredentialStoreApi`](api/trait.CredentialStoreApi.html)

### Functions

- [`attributes::externalize_attributes`](attributes/fn.externalize_attributes.html)
- [`attributes::parse_attributes`](attributes/fn.parse_attributes.html)
- [`error::decode_password`](error/fn.decode_password.html)
- [`get_default_store`](fn.get_default_store.html)
- [`sample::credential::get_attrs`](sample/credential/fn.get_attrs.html)
- [`sample::credential::update_attrs`](sample/credential/fn.update_attrs.html)
- [`set_default_store`](fn.set_default_store.html)
- [`unset_default_store`](fn.unset_default_store.html)

### Type aliases

- [`api::Credential`](api/type.Credential.html)
- [`api::CredentialStore`](api/type.CredentialStore.html)
- [`error::PlatformError`](error/type.PlatformError.html)
- [`error::Result`](error/type.Result.html)
- [`sample::store::CredMap`](sample/store/type.CredMap.html)
