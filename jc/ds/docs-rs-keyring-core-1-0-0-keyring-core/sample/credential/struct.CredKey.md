# CredKey in `keyring_core::sample::credential`

Available on **crate feature `sample`** only.

## Struct `CredKey`

```rust
pub struct CredKey {
    pub store: Arc<Store>,
    pub id: CredId,
    pub uuid: Option<String>,
}
```

Each key specifies a specific credential in the store.

For each credential ID, the store maintains a list of all credentials associated with that ID. The first credential in the list, at index `0`, is the credential specified by the ID. It is automatically created if there are no credentials with that ID when a password is set.

Keys with indices higher than `0` are wrappers for specific credentials, but they do not specify a credential.

## Fields

- `store: Arc<Store>`
- `id: CredId`
- `uuid: Option<String>`

## Implementations

### `impl CredKey`

#### `with_unique_pair`

```rust
pub fn with_unique_pair<F, T>(&self, f: F) -> Result<T>
where
    F: FnOnce(&String, &mut CredValue) -> T;
```

Boilerplate for credential-reading and updating calls.

This method ensures that there is exactly one credential and, if so, reads or updates it. If there is no credential, it returns a `NoEntry` error. If there are multiple credentials, it returns an ambiguous error.

It accounts for the difference between specifiers and wrappers.

#### `with_unique_cred`

```rust
pub fn with_unique_cred<F, T>(&self, f: F) -> Result<T>
where
    F: FnOnce(&mut CredValue) -> T;
```

A simpler form of `with_unique_pair` that operates only on the credential's value.

#### `get_uuid`

```rust
pub fn get_uuid(&self) -> Result<String>;
```

Returns the UUID of the sole credential for this credential key.

#### `get_comment`

```rust
pub fn get_comment(&self) -> Result<Option<String>>;
```

Returns the comment of the sole credential for this credential key.

## Trait Implementations

### `Clone`

```rust
impl Clone for CredKey {
    fn clone(&self) -> CredKey;
}
```

Returns a duplicate of the value.

### `CredentialApi`

```rust
impl CredentialApi for CredKey {
    fn set_secret(&self, secret: &[u8]) -> Result<()>;

    fn get_secret(&self) -> Result<Vec<u8>>;

    fn get_attributes(&self) -> Result<HashMap<String, String>>;

    fn update_attributes(
        &self,
        attrs: &HashMap<&str, &str>,
    ) -> Result<()>;

    fn delete_credential(&self) -> Result<()>;

    fn get_credential(&self) -> Result<Option<Arc<Credential>>>;

    fn get_specifiers(&self) -> Option<(String, String)>;

    fn as_any(&self) -> &dyn Any;

    fn debug_fmt(&self, f: &mut Formatter<'_>) -> fmt::Result;

    fn set_password(&self, password: &str) -> Result<()>;

    fn get_password(&self) -> Result<String>;
}
```

#### `get_attributes`

The possible credential attributes in this store are:

- `uuid`
- `comment`
- `creation-date`

#### `update_attributes`

Only the `comment` attribute can be updated.

#### `get_credential`

This always returns a new wrapper, even when the current value is already a wrapper.

#### `set_password`

Sets the entry's protected data to the given string.

#### `get_password`

Retrieves the protected data as a UTF-8 string from the underlying credential.

### `Debug`

```rust
impl Debug for CredKey {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result;
}
```

Formats the value using the given formatter.

## Auto Trait Implementations

- `!RefUnwindSafe`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

### `Any`

```rust
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> TypeId;
}
```

Gets the `TypeId` of the value.

### `Borrow`

```rust
impl<T: ?Sized> Borrow<T> for T {
    fn borrow(&self) -> &T;
}
```

Immutably borrows from an owned value.

### `BorrowMut`

```rust
impl<T: ?Sized> BorrowMut<T> for T {
    fn borrow_mut(&mut self) -> &mut T;
}
```

Mutably borrows from an owned value.

### `CloneToUninit`

```rust
impl<T: Clone> CloneToUninit for T {
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}
```

Performs copy-assignment from `self` to `dest`.

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

Creates owned data from borrowed data, usually by cloning.

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
