# `Cred` in `apple_native_keyring_store::protected`

## Crate

- **Crate:** `apple-native-keyring-store` 1.0.2
- **License:** [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- **Published:** 06 August 2026
- **Documentation:** [Docs.rs crate page](/crate/apple-native-keyring-store/1.0.2)
- **Homepage:** [Keyring wiki](https://github.com/open-source-cooperative/keyring-rs/wiki/Keyring)
- **Repository:** [GitHub](https://github.com/open-source-cooperative/apple-native-keyring-store.git)
- **crates.io:** [apple-native-keyring-store](https://crates.io/crates/apple-native-keyring-store)
- **Source:** [Browse source](/crate/apple-native-keyring-store/1.0.2/source/)
- **Owner:** [brotskydotcom](https://crates.io/users/brotskydotcom)
- **Documentation coverage:** [47.06%](/crate/apple-native-keyring-store/1.0.2)

### Dependencies

- [`keyring-core ^1`](/keyring-core/^1/) — normal
- [`log ^0.4`](/log/^0.4/) — normal
- [`security-framework ^3.7`](/security-framework/^3.7/) — optional
- [`env_logger ^0.11`](/env_logger/^0.11/) — development
- [`fastrand ^2`](/fastrand/^2/) — development
- [`linkme ^0.3`](/linkme/^0.3/) — development
- [`sudo ^0.6`](/sudo/^0.6/) — development

### Supported Platforms

- [`aarch64-apple-darwin`](/crate/apple-native-keyring-store/1.0.2/target-redirect/apple_native_keyring_store/protected/struct.Cred.html)
- [`aarch64-apple-ios`](/crate/apple-native-keyring-store/1.0.2/target-redirect/aarch64-apple-ios/apple_native_keyring_store/protected/struct.Cred.html)

## Module

`apple_native_keyring_store::protected`

## Struct `Cred`

**Source:** `src/apple_native_keyring_store/protected.rs`

```rust
pub struct Cred {
    pub service: String,
    pub account: String,
    pub access_policy: AccessPolicy,
    pub access_group: Option<String>,
    pub cloud_synchronize: bool,
}
```

The representation of a generic password credential.

If there is no access group, the credential will be created in a default group as chosen by the operating system according to [Apple's access-group guidelines](https://developer.apple.com/documentation/security/ksecattraccessgroup).

### Fields

- `service: String`
- `account: String`
- `access_policy: AccessPolicy`
- `access_group: Option<String>`
- `cloud_synchronize: bool`

## Associated Functions

### `Cred::build`

```rust
pub fn build(
    service: &str,
    user: &str,
    access_policy: AccessPolicy,
    access_group: Option<String>,
    cloud_synchronize: bool,
) -> keyring_core::error::Result<keyring_core::Entry>
```

Creates an entry representing a protected generic password.

This fails if the `service` or `user` strings are empty because empty attribute values act as wildcards in the Keychain Services API.

## Trait Implementations

### `CredentialApi`

```rust
impl CredentialApi for Cred {
    fn set_secret(&self, secret: &[u8]) -> keyring_core::error::Result<()>;

    fn get_secret(&self) -> keyring_core::error::Result<Vec<u8>>;

    fn delete_credential(&self) -> keyring_core::error::Result<()>;

    fn get_credential(
        &self,
    ) -> keyring_core::error::Result<
        Option<std::sync::Arc<keyring_core::api::Credential>>,
    >;

    fn get_specifiers(&self) -> Option<(String, String)>;

    fn as_any(&self) -> &dyn std::any::Any;

    fn debug_fmt(
        &self,
        f: &mut std::fmt::Formatter<'_>,
    ) -> std::fmt::Result;

    fn set_password(&self, password: &str) -> Result<(), keyring_core::error::Error>;

    fn get_password(&self) -> Result<String, keyring_core::error::Error>;

    fn get_attributes(
        &self,
    ) -> Result<
        std::collections::HashMap<String, String>,
        keyring_core::error::Error,
    >;

    fn update_attributes(
        &self,
        _: &std::collections::HashMap<&str, &str>,
    ) -> Result<(), keyring_core::error::Error>;
}
```

#### `set_secret`

```rust
fn set_secret(&self, secret: &[u8]) -> keyring_core::error::Result<()>
```

Sets the credential's protected data.

#### `get_secret`

```rust
fn get_secret(&self) -> keyring_core::error::Result<Vec<u8>>
```

Retrieves the credential's protected data.

#### `delete_credential`

```rust
fn delete_credential(&self) -> keyring_core::error::Result<()>
```

Deletes the credential.

#### `get_credential`

```rust
fn get_credential(
    &self,
) -> keyring_core::error::Result<
    Option<std::sync::Arc<keyring_core::api::Credential>>,
>
```

Retrieves the credential, if it exists.

There are two cases:

1. If the credential has an access group, it cannot be ambiguous, so the implementation verifies that it exists before returning `None`.
2. If the credential has no access group, the implementation searches for ambiguity and, if none is found, returns a wrapper with the access group attached.

#### `get_specifiers`

```rust
fn get_specifiers(&self) -> Option<(String, String)>
```

Returns the credential's optional service and account specifiers.

#### `as_any`

```rust
fn as_any(&self) -> &dyn std::any::Any
```

Returns the credential as a dynamically typed value.

#### `debug_fmt`

```rust
fn debug_fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result
```

Formats the credential for debugging.

#### `set_password`

```rust
fn set_password(&self, password: &str) -> Result<(), keyring_core::error::Error>
```

Sets the credential's protected data to the given string.

#### `get_password`

```rust
fn get_password(&self) -> Result<String, keyring_core::error::Error>
```

Retrieves the protected data as a UTF-8 string.

#### `get_attributes`

```rust
fn get_attributes(
    &self,
) -> Result<
    std::collections::HashMap<String, String>,
    keyring_core::error::Error,
>
```

Returns store-specific decorations on the credential.

#### `update_attributes`

```rust
fn update_attributes(
    &self,
    _: &std::collections::HashMap<&str, &str>,
) -> Result<(), keyring_core::error::Error>
```

Updates the secure-store attributes on the credential.

### `Clone`

```rust
impl Clone for Cred {
    fn clone(&self) -> Cred;

    fn clone_from(&mut self, source: &Self);
}
```

### `Debug`

```rust
impl Debug for Cred {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result;
}
```

### `Eq`

```rust
impl Eq for Cred {}
```

### `PartialEq`

```rust
impl PartialEq for Cred {
    fn eq(&self, other: &Cred) -> bool;

    fn ne(&self, other: &Cred) -> bool;
}
```

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for Cred {}
```

## Auto Traits

`Cred` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `Any`

```rust
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> std::any::TypeId;
}
```

### `Borrow`

```rust
impl<T: ?Sized> Borrow<T> for T {
    fn borrow(&self) -> &T;
}
```

### `BorrowMut`

```rust
impl<T: ?Sized> BorrowMut<T> for T {
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `CloneToUninit`

```rust
impl<T: Clone> CloneToUninit for T {
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}
```

This is a nightly-only experimental API.

### `From`

```rust
impl<T> From<T> for T {
    fn from(t: T) -> T;
}
```

Returns the argument unchanged.

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

Calls `U::from(self)`.

### `ToOwned`

```rust
impl<T: Clone> ToOwned for T {
    type Owned = T;

    fn to_owned(&self) -> T;

    fn clone_into(&self, target: &mut T);
}
```

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = std::convert::Infallible;

    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```
