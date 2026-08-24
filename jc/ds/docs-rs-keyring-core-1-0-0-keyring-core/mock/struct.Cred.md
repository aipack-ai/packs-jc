# `Cred` in `keyring_core::mock`

**Crate:** `keyring-core` 1.0.0  
**Module:** [`keyring_core::mock`](../../keyring_core/index.html)  
**Source:** [`keyring_core/mock.rs`](../../src/keyring_core/mock.rs.html#53-56)

## Overview

The concrete mock credential.

Mocks use an internal mutability pattern because entries are read-only. The mutex ensures that these credentials are `Sync`.

## Struct Definition

```rust
pub struct Cred {
    pub specifiers: (String, String),
    pub inner: Mutex<RefCell<CredData>>,
}
```

## Fields

- `specifiers: (String, String)` — The credential’s identifying specifiers.
- `inner: Mutex<RefCell<CredData>>` — Internal mutable state protected by a mutex.

## Inherent Implementations

### `impl Cred`

#### `set_error`

```rust
pub fn set_error(&self, err: Error)
```

Sets an error to be returned from this mock credential.

Error returns always take precedence over the normal behavior of the mock. Once an error has been returned, it is removed, so the mock works normally thereafter.

## Trait Implementations

### `CredentialApi`

```rust
impl CredentialApi for Cred
```

#### `set_secret`

```rust
fn set_secret(&self, secret: &[u8]) -> Result<()>
```

Sets the secret.

If there is an error in the mock, it is returned and the secret is not set. The error is cleared, so calling the method again sets the secret.

#### `get_secret`

```rust
fn get_secret(&self) -> Result<Vec<u8>>
```

Gets the secret.

If an error is set in the mock, it is returned instead of the secret. The existing secret does not change.

#### `delete_credential`

```rust
fn delete_credential(&self) -> Result<()>
```

Deletes the credential.

If there is an error, it is returned and cleared. Calling the method again deletes the credential.

#### `get_credential`

```rust
fn get_credential(&self) -> Result<Option<Arc<Credential>>>
```

Gets the credential.

If there is an error in the mock, it is returned and cleared. Calling the method again retries the operation.

#### `get_specifiers`

```rust
fn get_specifiers(&self) -> Option<(String, String)>
```

Returns the credential’s specifiers.

#### `as_any`

```rust
fn as_any(&self) -> &dyn Any
```

Returns this concrete mock credential wrapped in the [`Any`](https://doc.rust-lang.org/nightly/core/any/trait.Any.html) trait so it can be downcast.

#### `debug_fmt`

```rust
fn debug_fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result
```

Exposes the concrete debug formatter for use through the [`Credential`](../api/type.Credential.html) trait.

#### `set_password`

```rust
fn set_password(&self, password: &str) -> Result<()>
```

Sets the entry’s protected data to the given string.

#### `get_password`

```rust
fn get_password(&self) -> Result<String>
```

Retrieves the protected data as a UTF-8 string from the underlying credential.

#### `get_attributes`

```rust
fn get_attributes(&self) -> Result<HashMap<String, String>>
```

Returns store-specific decorations on this entry’s credential.

#### `update_attributes`

```rust
fn update_attributes(
    &self,
    _: &HashMap<&str, &str>,
) -> Result<()>
```

Updates the secure-store attributes on this entry’s credential.

### `Debug`

```rust
impl Debug for Cred
```

#### `fmt`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result
```

Formats the value using the given formatter.

## Auto Trait Implementations

`Cred` implements or contains the following auto traits:

- `!Freeze`
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

Gets the `TypeId` of the value.

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

### `From<T> for T`

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

Calls `U::from(self)`.

### `TryFrom<U>`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
```

#### Associated type

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

#### Associated type

```rust
type Error = <U as TryFrom<T>>::Error
```

The type returned in the event of a conversion error.

#### `try_into`

```rust
fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
