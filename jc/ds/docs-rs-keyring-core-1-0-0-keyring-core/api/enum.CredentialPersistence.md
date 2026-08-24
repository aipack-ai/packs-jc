# `CredentialPersistence` in `keyring_core::api` - Rust

## `CredentialPersistence`

Module: [`keyring_core::api`](../../keyring_core/index.html)

[Source](../../src/keyring_core/api.rs.html#160-174)

```rust
#[non_exhaustive]
pub enum CredentialPersistence {
    EntryOnly,
    ProcessOnly,
    UntilLogout,
    UntilReboot,
    UntilDelete,
    Unspecified,
}
```

A descriptor for the lifetime of stored credentials, returned from a credential store’s [`persistence`](trait.CredentialStoreApi.html#method.persistence) call.

This enum may change even in minor and patch versions of the library, so it is marked as non-exhaustive.

## Variants

This enum is non-exhaustive. Additional variants may be added in future releases. When matching against its variants, include a wildcard arm to account for future variants.

### `EntryOnly`

Credential storage is in the entry, so storage vanishes when the entry is dropped.

### `ProcessOnly`

Credential storage is in process memory, so storage vanishes when the process terminates.

### `UntilLogout`

Credential storage is in user-space memory, so storage vanishes when the user logs out.

### `UntilReboot`

Credentials are stored in kernel-space memory, so storage vanishes when the machine reboots.

### `UntilDelete`

Credentials are stored on disk, so storage vanishes when the credential is deleted.

### `Unspecified`

Placeholder for cases not yet handled here.

## Auto Trait Implementations

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
impl<T: 'static + ?Sized> Any for T
```

#### `type_id`

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `Borrow<T>`

```rust
impl<T: ?Sized> Borrow<T> for T
```

#### `borrow`

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

```rust
impl<T: ?Sized> BorrowMut<T> for T
```

#### `borrow_mut`

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `From<T>`

```rust
impl<T> From<T> for T
```

#### `from`

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into<U>`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
```

#### `into`

```rust
fn into(self) -> U
```

Calls `U::from(self)`. This conversion is whatever the implementation of `From<T>` for `U` chooses to do.

### `TryFrom<U>`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
```

#### Associated type `Error`

```rust
type Error = Infallible
```

The type returned in the event of a conversion error.

#### `try_from`

```rust
fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto<U>`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
```

#### Associated type `Error`

```rust
type Error = U::Error
```

The type returned in the event of a conversion error.

#### `try_into`

```rust
fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
