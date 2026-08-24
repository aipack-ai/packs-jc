# `Entry` in `keyring_core` 1.0.0

A cross-platform library for managing passwords and secrets.

## Crate information

- License: [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- Release date: 9 July 2026
- Documentation coverage: [78.26%](https://docs.rs/crate/keyring-core/1.0.0)
- Homepage: [github.com/open-source-cooperative/keyring-core](https://github.com/open-source-cooperative/keyring-core)
- Repository: [github.com/open-source-cooperative/keyring-core.git](https://github.com/open-source-cooperative/keyring-core.git)
- Package: [crates.io/crates/keyring-core](https://crates.io/crates/keyring-core)
- Platform: `x86_64-unknown-linux-gnu`
- Owner: [brotskydotcom](https://crates.io/users/brotskydotcom)

## Dependencies

- Optional:
  - `chrono ^0.4`
  - `dashmap ^6.1`
  - `regex ^1`
  - `ron ^0.12`
  - `serde ^1`
  - `uuid ^1`
- Normal:
  - `log ^0.4`
- Development:
  - `doc-comment ^0.3`
  - `env_logger ^0.11`
  - `fastrand ^2`

## Struct `Entry`

```rust
pub struct Entry {
    /* private fields */
}
```

A named entry in a credential store.

## Associated functions

### `Entry::new`

```rust
pub fn new(service: &str, user: &str) -> Result<Entry>
```

Creates an entry for the given `service` and `user`. The default credential builder is used.

#### Errors

- Returns `Error::Invalid` if the `service` or `user` values are not acceptable to the default credential store.
- Returns `Error::NoDefaultStore` if the default credential store has not been set.

### `Entry::new_with_modifiers`

```rust
pub fn new_with_modifiers(
    service: &str,
    user: &str,
    modifiers: &HashMap<&str, &str>,
) -> Result<Entry>
```

Creates an entry for the given `service` and `user`, passing store-specific modifiers. The default credential builder is used.

See the documentation for each credential store to understand which modifiers may be specified.

#### Errors

- Returns `Error::Invalid` if the `service`, `user`, or modifier pairs are not acceptable to the default credential store.
- Returns `Error::NoDefaultStore` if the default credential store has not been set.

### `Entry::new_with_credential`

```rust
pub fn new_with_credential(credential: Arc<Credential>) -> Entry
```

Creates an entry that wraps a pre-existing credential. The credential can be from any credential store.

### `Entry::search`

```rust
pub fn search(spec: &HashMap<&str, &str>) -> Result<Vec<Entry>>
```

Searches for credentials and returns entries that wrap any credentials found.

The default credential store is searched. See the documentation for each credential store for details about how searches are specified.

#### Errors

- Returns `Error::Invalid` if the `spec` value is not acceptable to the default credential store.
- Returns `Error::NoDefaultStore` if the default credential store has not been set.

## Methods

### `Entry::set_password`

```rust
pub fn set_password(&self, password: &str) -> Result<()>
```

Sets the password for this entry.

If a credential for this entry already exists in the store, its password is updated. Otherwise, a new credential is created to store the password.

#### Errors

- If this entry is a specifier and more than one matching credential exists, returns `Error::Ambiguous`.
- If this entry is a wrapper and the underlying credential has been deleted, may return `Error::NoEntry`.
- If a credential cannot store the given password, returns `Error::Invalid`. Not all stores support empty passwords, and some impose length limits.

### `Entry::set_secret`

```rust
pub fn set_secret(&self, secret: &[u8]) -> Result<()>
```

Sets the secret for this entry.

If a credential for this entry already exists in the store, its secret is updated. Otherwise, a new credential is created to store the secret.

#### Errors

- If this entry is a specifier and more than one matching credential exists, returns `Error::Ambiguous`.
- If this entry is a wrapper and the underlying credential has been deleted, may return `Error::NoEntry`.
- If a credential cannot store the given secret, returns `Error::Invalid`. Not all stores support empty secrets, and some impose length limits.

### `Entry::get_password`

```rust
pub fn get_password(&self) -> Result<String>
```

Retrieves the password saved for this entry.

#### Errors

- If this entry is a specifier and no matching credential exists, returns `Error::NoEntry`.
- If this entry is a specifier and more than one matching credential exists, returns `Error::Ambiguous`.
- If this entry is a wrapper, the underlying credential has been deleted, and the store cannot recreate it, returns `Error::NoEntry`.
- If the password is not valid UTF-8, returns `Error::BadEncoding` containing the data as a byte array.

### `Entry::get_secret`

```rust
pub fn get_secret(&self) -> Result<Vec<u8>>
```

Retrieves the secret saved for this entry.

#### Errors

- If this entry is a specifier and no matching credential exists, returns `Error::NoEntry`.
- If this entry is a specifier and more than one matching credential exists, returns `Error::Ambiguous`.
- If this entry is a wrapper and the underlying credential has been deleted, returns `Error::NoEntry`.

### `Entry::get_attributes`

```rust
pub fn get_attributes(&self) -> Result<HashMap<String, String>>
```

Gets the store-specific decorations on this entry's credential.

See the documentation for each credential store for details about supported decorations and how they are returned.

#### Errors

- If this entry is a specifier and no matching credential exists, returns `Error::NoEntry`.
- If this entry is a specifier and more than one matching credential exists, returns `Error::Ambiguous`.
- If this entry is a wrapper and the underlying credential has been deleted, returns `Error::NoEntry`.

### `Entry::update_attributes`

```rust
pub fn update_attributes(
    &self,
    attributes: &HashMap<&str, &str>,
) -> Result<()>
```

Updates the store-specific decorations on this entry's credential.

See the documentation for each credential store for details about which decorations can be updated and how updates are expressed.

#### Errors

- Returns `Error::Invalid` if an attribute is not valid for the underlying store.
- If this entry is a specifier and no matching credential exists, returns `Error::NoEntry`.
- If this entry is a specifier and more than one matching credential exists, returns `Error::Ambiguous`.
- If this entry is a wrapper and the underlying credential has been deleted, returns `Error::NoEntry`.

### `Entry::delete_credential`

```rust
pub fn delete_credential(&self) -> Result<()>
```

Deletes the matching credential for this entry.

This call does not affect the lifetime of the `Entry` structure, only that of the underlying credential.

#### Errors

- If this entry is a specifier and no matching credential exists, returns `Error::NoEntry`.
- If this entry is a specifier and more than one matching credential exists, returns `Error::Ambiguous`.
- If this entry is a wrapper and the underlying credential has been deleted, returns `Error::NoEntry`.

### `Entry::get_credential`

```rust
pub fn get_credential(&self) -> Result<Entry>
```

Gets a wrapper for the currently matching credential.

#### Errors

- If this entry is a specifier and no matching credential exists, returns `Error::NoEntry`.
- If this entry is a specifier and more than one matching credential exists, returns `Error::Ambiguous`.
- If this entry is a wrapper and the underlying credential has been deleted, returns `Error::NoEntry`.

### `Entry::get_specifiers`

```rust
pub fn get_specifiers(&self) -> Option<(String, String)>
```

Gets the service/user specifier pair for this entry, if any.

### `Entry::as_any`

```rust
pub fn as_any(&self) -> &dyn Any
```

Returns a reference to the inner store-specific object in this entry.

The reference is of type `Any`, so it can be downcast to a concrete object for the containing store.

## Trait implementations

### `Debug`

```rust
impl Debug for Entry {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result;
}
```

Formats the value using the given formatter.

## Auto trait implementations

`Entry` implements:

- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

`Entry` does not implement:

- `RefUnwindSafe`
- `UnwindSafe`

## Blanket implementations

### `Any`

```rust
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> TypeId;
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

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

Performs the conversion.

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

Performs the conversion.
