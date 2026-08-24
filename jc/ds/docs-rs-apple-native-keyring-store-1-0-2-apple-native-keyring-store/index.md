# apple_native_keyring_store - Rust

## Crate `apple_native_keyring_store`

Version 1.0.2

[Source](../src/apple_native_keyring_store/lib.rs.html#1-53)

## Apple native credential store

This is a [keyring credential store provider](https://github.com/open-source-cooperative/keyring-rs/wiki/Keyring) that stores credentials in the native macOS and iOS secure stores.

On iOS there is just one secure store: the “protected data” store. Its *items* are stored in “access groups” associated with specific applications.

On macOS there are two secure stores: the “legacy keychain” store and the “protected data” store.

- The “legacy keychain” store is available to all applications, and its credentials are stored in *keychain entries* in encrypted files.
- The “protected data” store is available to sandboxed applications in macOS 10.15 (*Catalina*, 2019) or later. Some of its features are only available to applications with provisioning profiles.

Because the two native stores are different, this crate provides two different modules, one for each store. Choose the one that best suits your needs, or use both. See the module documentation for details about each store.

## Features

Each module has a feature that enables it. At least one relevant feature must be enabled, and both can be enabled.

- `keychain`: Provides access to the “legacy keychain” store. Ignored on iOS.
- `protected`: Provides access to the “protected data” store. Requires macOS 10.15 or later.

This crate has no default features.

## Modules

### `keychain`

macOS Keychain credential store

### `protected`

Protected Data credential store
