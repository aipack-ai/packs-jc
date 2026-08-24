# `Store` in `apple_native_keyring_store::keychain`

Crate version: `apple-native-keyring-store 1.0.2`

The store for Mac keychain credentials.

## Struct definition

```rust
pub struct Store {
    /* private fields */
}
```

## Associated functions

### `new`

```rust
pub fn new() -> keyring_core::error::Result<std::sync::Arc<Self>>
```

Creates a default store that uses the User (also known as the login) keychain.

### `new_with_configuration`

```rust
pub fn new_with_configuration(
    configuration: &std::collections::HashMap<&str, &str>,
) -> keyring_core::error::Result<std::sync::Arc<Self>>
```

Creates a store configured to use a specific keychain.

The keychain used can be overridden by a modifier on a specific entry.

## Trait implementations

### `CredentialStoreApi`

```rust
impl keyring_core::api::CredentialStoreApi for Store
```

#### `vendor`

```rust
fn vendor(&self) -> String
```

See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html).

#### `id`

```rust
fn id(&self) -> String
```

See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html).

#### `build`

```rust
fn build(
    &self,
    service: &str,
    user: &str,
    modifiers: Option<&std::collections::HashMap<&str, &str>>,
) -> keyring_core::error::Result<keyring_core::Entry>
```

See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html).

The only option that can be specified is `keychain`. Its value must name a keychain—`User`, `System`, `Common`, or `Dynamic`—to use for storing the credential when it is created. The default is the User (also known as the login) keychain.

#### `search`

```rust
fn search(
    &self,
    spec: &std::collections::HashMap<&str, &str>,
) -> keyring_core::error::Result<Vec<keyring_core::Entry>>
```

See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html).

The optional search specification keys are `service` and `user`. They are matched case-sensitively against the service and account attributes of generic passwords in the store’s configured keychain. A wrapper is returned for each matching credential. If neither `service` nor `user` is specified, all credentials in the store’s configured keychain are returned.

#### `as_any`

```rust
fn as_any(&self) -> &dyn std::any::Any
```

Returns the underlying builder object as `Any`, allowing it to be downcast to [`Store`](#struct-definition) for platform-specific processing.

#### `persistence`

```rust
fn persistence(&self) -> keyring_core::api::CredentialPersistence
```

Returns the lifetime of credentials produced by this builder.

See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html).

#### `debug_fmt`

```rust
fn debug_fmt(
    &self,
    f: &mut std::fmt::Formatter<'_>,
) -> std::fmt::Result
```

See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html).

### `Debug`

```rust
impl std::fmt::Debug for Store
```

#### `fmt`

```rust
fn fmt(
    &self,
    f: &mut std::fmt::Formatter<'_>,
) -> std::fmt::Result
```

Formats the value using the given formatter.

## Auto trait implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

### `Any`

```rust
impl<T: 'static + ?Sized> std::any::Any for T
```

#### `type_id`

```rust
fn type_id(&self) -> std::any::TypeId
```

Gets the `TypeId` of `self`.

### `Borrow`

```rust
impl<T: ?Sized> std::borrow::Borrow<T> for T
```

#### `borrow`

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut`

```rust
impl<T: ?Sized> std::borrow::BorrowMut<T> for T
```

#### `borrow_mut`

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `From`

```rust
impl<T> std::convert::From<T> for T
```

#### `from`

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into`

```rust
impl<T, U> std::convert::Into<U> for T
where
    U: std::convert::From<T>,
```

#### `into`

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### `TryFrom`

```rust
impl<T, U> std::convert::TryFrom<U> for T
where
    U: std::convert::Into<T>,
```

#### Associated type

```rust
type Error = std::convert::Infallible;
```

The type returned in the event of a conversion error.

#### `try_from`

```rust
fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto`

```rust
impl<T, U> std::convert::TryInto<U> for T
where
    U: std::convert::TryFrom<T>,
```

#### Associated type

```rust
type Error = <U as std::convert::TryFrom<T>>::Error;
```

The type returned in the event of a conversion error.

#### `try_into`

```rust
fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
