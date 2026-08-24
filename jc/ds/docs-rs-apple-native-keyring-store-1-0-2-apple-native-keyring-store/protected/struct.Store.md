# `Store` in `apple_native_keyring_store::protected`

Version 1.0.2 of the `apple-native-keyring-store` crate.

## Struct

```rust
pub struct Store {
    /* private fields */
}
```

The builder for iOS keychain credentials.

## Implementations

### `Store`

#### `Store::new`

```rust
pub fn new() -> Result<Arc<dyn CredentialStoreApi>>
```

Creates a default store that does not synchronize with the cloud.

#### `Store::new_with_configuration`

```rust
pub fn new_with_configuration(
    config: &HashMap<&str, &str>,
) -> Result<Arc<dyn CredentialStoreApi>>
```

Creates a configured store.

The following configuration keys are supported:

- `cloud-sync`: `true` or `false`; defaults to `false`. When set to `true`, all items in the store are synchronized with iCloud.
- `access-group`: If non-empty, stores all items in the specified access group. If empty or unspecified, items are stored in the app's default access group.

### `CredentialStoreApi`

```rust
impl CredentialStoreApi for Store
```

#### `CredentialStoreApi::vendor`

```rust
fn vendor(&self) -> String
```

Returns the store vendor identifier. See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html#tymethod.vendor).

#### `CredentialStoreApi::id`

```rust
fn id(&self) -> String
```

Returns the store identifier. See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html#tymethod.id).

#### `CredentialStoreApi::build`

```rust
fn build(
    &self,
    service: &str,
    user: &str,
    modifiers: Option<&HashMap<&str, &str>>,
) -> Result<Entry>
```

Builds a keychain credential entry.

The only supported modifier is `access-policy`. Values are case-insensitive and are ordered from least to most restrictive:

- `AfterFirstUnlock` or `after-first-unlock`
- `AfterFirstUnlockThisDeviceOnly` or `after-first-unlock-this-device-only`
- `WhenUnlocked` or `when-unlocked`; the default
- `WhenUnlockedThisDeviceOnly` or `when-unlocked-this-device-only`
- `WhenPasscodeSetThisDeviceOnly` or `when-passcode-set-this-device-only`
- `RequireUserPresence` or `require-user-presence`

These correspond to similarly named values of the `kSecAttrAccessible` attribute, as described in the [Apple documentation](https://developer.apple.com/documentation/security/restricting-keychain-item-accessibility). `RequireUserPresence` behaves like `WhenUnlocked` but additionally requires biometric authentication whenever the credential is accessed.

An access policy cannot be specified for a cloud-synchronized store because the operating system controls this setting to manage synchronization.

#### `CredentialStoreApi::search`

```rust
fn search(
    &self,
    spec: &HashMap<&str, &str>,
) -> Result<Vec<Entry>>
```

Searches for keychain credential entries.

The primary specification keys are:

- `service`
- `account`
- `access-group`

These keys restrict the search to items matching the specified values. Matching is case-sensitive. Without restrictions, every generic password item in the store is returned.

The `show-authentication-ui` key accepts `true` or `false` and defaults to `false`. It can be used to prevent the default behavior of skipping items whose access policy requires user interaction.

Because the operating system hides access-policy information for existing items, every wrapper returned by a search has a default access policy that may not match the underlying item. This default policy has no effect unless the underlying item is deleted and recreated from the wrapper by setting its password.

#### `CredentialStoreApi::as_any`

```rust
fn as_any(&self) -> &dyn Any
```

Returns the store as a dynamically typed `Any` value. See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html#tymethod.as_any).

#### `CredentialStoreApi::persistence`

```rust
fn persistence(&self) -> CredentialPersistence
```

Returns the lifetime of credentials produced by this builder. See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html#method.persistence).

#### `CredentialStoreApi::debug_fmt`

```rust
fn debug_fmt(&self, f: &mut Formatter<'_>) -> fmt::Result
```

Formats the store for debugging. See the [keyring-core API documentation](https://docs.rs/keyring-core/1.0.0/aarch64-apple-darwin/keyring_core/api/trait.CredentialStoreApi.html#method.debug_fmt).

### `Debug`

```rust
impl Debug for Store
```

#### `Debug::fmt`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result
```

Formats the value using the provided formatter. See the [Rust documentation](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt).

## Auto trait implementations

`Store` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

The following blanket implementations apply to `Store`:

### `Any`

```rust
impl<T> Any for T
where
    T: 'static + ?Sized,
```

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of the value.

### `Borrow`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
```

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
```

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `From`

```rust
impl<T> From<T> for T
```

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
```

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
```

Associated type:

```rust
type Error = Infallible
```

```rust
fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
```

Associated type:

```rust
type Error = <U as TryFrom<T>>::Error
```

```rust
fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
