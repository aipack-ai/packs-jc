# `MacKeychainDomain` in `apple_native_keyring_store::keychain`

## Crate

- Crate: `apple-native-keyring-store` 1.0.2
- License: [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- Documentation coverage: 47.06%
- Homepage: [Keyring wiki](https://github.com/open-source-cooperative/keyring-rs/wiki/Keyring)
- Repository: [apple-native-keyring-store](https://github.com/open-source-cooperative/apple-native-keyring-store.git)
- crates.io: [apple-native-keyring-store](https://crates.io/crates/apple-native-keyring-store)
- Source: [`keychain.rs`](../../src/apple_native_keyring_store/keychain.rs.html#311-316)

## Platform

- `aarch64-apple-darwin`
- `aarch64-apple-ios`

## Module Path

```text
apple_native_keyring_store::keychain::MacKeychainDomain
```

## Enum Definition

The four pre-defined Mac keychains.

```rust
pub enum MacKeychainDomain {
    User,
    System,
    Common,
    Dynamic,
}
```

## Variants

### `User`

The user keychain domain.

### `System`

The system keychain domain.

### `Common`

The common keychain domain.

### `Dynamic`

The dynamically selected keychain domain.

## Trait Implementations

### `Clone`

```rust
impl Clone for MacKeychainDomain {
    fn clone(&self) -> MacKeychainDomain;

    fn clone_from(&mut self, source: &Self);
}
```

- `clone` returns a duplicate of the value.
- `clone_from` performs copy assignment from `source`.

### `Debug`

```rust
impl Debug for MacKeychainDomain {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

### `Display`

```rust
impl Display for MacKeychainDomain {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

### `Eq`

```rust
impl Eq for MacKeychainDomain {}
```

### `FromStr`

```rust
impl FromStr for MacKeychainDomain {
    type Err = keyring_core::error::Error;

    fn from_str(s: &str) -> keyring_core::error::Result<MacKeychainDomain>;
}
```

Converts a keychain specification string to a keychain domain.

The string is matched case-insensitively, but it must correspond to a known keychain domain name.

### `PartialEq`

```rust
impl PartialEq for MacKeychainDomain {
    fn eq(&self, other: &MacKeychainDomain) -> bool;

    fn ne(&self, other: &MacKeychainDomain) -> bool;
}
```

- `eq` implements the equality operator (`==`).
- `ne` implements the inequality operator (`!=`).

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for MacKeychainDomain {}
```

## Auto Trait Implementations

`MacKeychainDomain` implements the following auto traits:

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
impl<T> Any for T
where
    T: 'static + ?Sized,
{
    fn type_id(&self) -> TypeId;
}
```

Gets the `TypeId` of `self`.

### `Borrow`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
{
    fn borrow(&self) -> &T;
}
```

Immutably borrows from an owned value.

### `BorrowMut`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
{
    fn borrow_mut(&mut self) -> &mut T;
}
```

Mutably borrows from an owned value.

### `CloneToUninit`

```rust
impl<T> CloneToUninit for T
where
    T: Clone,
{
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}
```

Performs copy assignment from `self` to `dest`.

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
impl<T> ToOwned for T
where
    T: Clone,
{
    type Owned = T;

    fn to_owned(&self) -> T;

    fn clone_into(&self, target: &mut T);
}
```

- `to_owned` creates owned data, usually by cloning.
- `clone_into` uses borrowed data to replace owned data, usually by cloning.

### `ToString`

```rust
impl<T> ToString for T
where
    T: Display + ?Sized,
{
    fn to_string(&self) -> String;
}
```

Converts the value to a `String`.

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
