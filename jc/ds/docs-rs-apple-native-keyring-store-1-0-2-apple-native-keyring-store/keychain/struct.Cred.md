# `Cred` in `apple_native_keyring_store::keychain`

## Module

[`apple_native_keyring_store::keychain`](index.html)

Version: `1.0.2`

## Struct `Cred`

The representation of a generic Keychain credential.

The actual credentials can have many attributes that are not represented here. This module cannot be used to access those additional attributes.

```rust
pub struct Cred {
    pub domain: MacKeychainDomain,
    pub service: String,
    pub account: String,
}
```

### Fields

- `domain: MacKeychainDomain`
- `service: String`
- `account: String`

## Implementations

### `impl Cred`

#### `build`

```rust
pub fn build(
    keychain: MacKeychainDomain,
    service: &str,
    user: &str,
) -> keyring_core::error::Result<keyring_core::Entry>
```

Creates a credential representing a Mac keychain entry.

A keychain string is interpreted as the keychain to use for the entry.

Creating a credential does not put anything into the keychain. The keychain entry is created when [`set_password`](#method.set_password) is called.

This function fails if the service or user strings are empty, because empty attribute values act as wildcards in the Keychain Services API.

## Trait Implementations

### `Clone`

```rust
impl Clone for Cred {
    fn clone(&self) -> Cred;
    fn clone_from(&mut self, source: &Self);
}
```

- `clone` returns a duplicate of the value.
- `clone_from` performs copy assignment from `source`.

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

    fn set_password(&self, password: &str)
        -> Result<(), keyring_core::error::Error>;

    fn get_password(&self)
        -> Result<String, keyring_core::error::Error>;

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

See the `keyring-core` API documentation.

#### `get_secret`

See the `keyring-core` API documentation.

#### `delete_credential`

See the `keyring-core` API documentation.

#### `get_credential`

See the `keyring-core` API documentation.

Since every specifier is also a wrapper, this checks whether the underlying credential exists.

#### `get_specifiers`

See the `keyring-core` API documentation.

#### `as_any`

See the `keyring-core` API documentation.

#### `debug_fmt`

See the `keyring-core` API documentation.

#### `set_password`

Sets the entry's protected data to the given string.

#### `get_password`

Retrieves the protected data as a UTF-8 string from the underlying credential.

#### `get_attributes`

Returns store-specific decorations on the entry's credential.

#### `update_attributes`

Updates the secure-store attributes on the entry's credential.

### `Debug`

```rust
impl Debug for Cred {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result;
}
```

Formats the value using the given formatter.

### `Eq`

```rust
impl Eq for Cred {}
```

### `PartialEq`

```rust
impl PartialEq for Cred {
    fn eq(&self, other: &Cred) -> bool;
    fn ne(&self, other: &Self) -> bool;
}
```

- `eq` implements the equality operator (`==`).
- `ne` implements the inequality operator (`!=`).

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for Cred {}
```

## Auto Trait Implementations

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
