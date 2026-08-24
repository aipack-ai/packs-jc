# `apple_native_keyring_store::keychain` - Rust

## Module: `keychain`

**Crate:** `apple-native-keyring-store` 1.0.2

[In crate `apple_native_keyring_store`](../index.html)

[Source](../../src/apple_native_keyring_store/keychain.rs.html#1-378)

## macOS Keychain credential store

macOS provides file-based secure stores called *keychains*. The OS automatically creates three of them, or four when removable media is being used:

- *User*, also known as the login keychain
- *Common*
- *System*
- *Dynamic*

The `keychain` configuration key specified when instantiating a [`Store`](struct.Store.html "struct apple_native_keyring_store::keychain::Store") determines which keychain the store uses for its credentials. By default, the *User* (login) keychain is used.

For a given service/user pair, this module creates or searches for a generic credential in the store’s keychain. The credential's *account* attribute holds the user, and its *service* attribute holds the service. Because generic credentials are uniquely identified within each keychain by their *account* and *service* attributes, there is no chance of ambiguity.

Because of a quirk in the macOS Keychain Services API, neither the *account* nor the *service* may be an empty string.

In the *Keychain Access* UI on macOS, credentials created by this module appear in the *Passwords* view, with both their *where* and *name* fields showing the credential's *service* attribute. Entries listed under *Note* in Keychain Access are also generic credentials. This module can access existing notes created by third-party applications if the value of their *account* attribute is known. Keychain Access does not display this attribute.

### Attributes

Credentials on macOS have fixed key/value attributes, but this module ignores all of them.

### Search

Credentials in a given store, or keychain, can be searched by `service` and `user`. The search is case-sensitive, and a wrapper around each matching credential is returned.

Specifying neither `service` nor `user` returns wrappers around all credentials in the store.

## Module items

### Structs

#### `Cred`

[View `Cred`](struct.Cred.html "struct apple_native_keyring_store::keychain::Cred")

The representation of a generic Keychain credential.

The source content does not provide the struct's field definitions or implementation details.

#### `Store`

[View `Store`](struct.Store.html "struct apple_native_keyring_store::keychain::Store")

The store for macOS Keychain credentials.

The source content does not provide the struct's field definitions or implementation details.

### Enums

#### `MacKeychainDomain`

[View `MacKeychainDomain`](enum.MacKeychainDomain.html "enum apple_native_keyring_store::keychain::MacKeychainDomain")

The four predefined macOS keychains.

The source content does not provide the enum variants or implementation details.

### Functions

#### `decode_error`

[View `decode_error`](fn.decode_error.html "fn apple_native_keyring_store::keychain::decode_error")

Maps a macOS API error to a crate error with appropriate annotation.

The source content does not provide the function signature or return type.
