# AccessPolicy in `apple_native_keyring_store::protected`

## `AccessPolicy`

```rust
pub enum AccessPolicy {
    AfterFirstUnlock,
    AfterFirstUnlockThisDeviceOnly,
    WhenUnlocked,
    WhenUnlockedThisDeviceOnly,
    WhenPasscodeSetThisDeviceOnly,
    RequireUserPresence,
}
```

Access policies for protected data items.

These policies are recognized case-insensitively from their camel-cased or snake-cased equivalents, as well as the string `"default"`.

## Variants

### `AfterFirstUnlock`

The item is accessible after the device has been unlocked for the first time after boot.

### `AfterFirstUnlockThisDeviceOnly`

The item is accessible after the device has been unlocked for the first time after boot and is not migrated to another device.

### `WhenUnlocked`

The item is accessible only while the device is unlocked.

### `WhenUnlockedThisDeviceOnly`

The item is accessible only while the device is unlocked and is not migrated to another device.

### `WhenPasscodeSetThisDeviceOnly`

The item is accessible only while a passcode is set and is not migrated to another device.

### `RequireUserPresence`

Access requires user presence authentication.

## Trait Implementations

### `Clone`

```rust
impl Clone for AccessPolicy
```

#### `clone`

```rust
fn clone(&self) -> AccessPolicy
```

Returns a duplicate of the value.

#### `clone_from`

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### `Debug`

```rust
impl Debug for AccessPolicy
```

#### `fmt`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `Default`

```rust
impl Default for AccessPolicy
```

#### `default`

```rust
fn default() -> AccessPolicy
```

Returns the default value for `AccessPolicy`.

### `Eq`

```rust
impl Eq for AccessPolicy
```

### `From<&AccessPolicy>`

```rust
impl From<&AccessPolicy> for ProtectionMode
```

Converts an `AccessPolicy` reference into a `security_framework::access_control::ProtectionMode`.

#### `from`

```rust
fn from(value: &AccessPolicy) -> Self
```

Converts `value` into a `ProtectionMode`.

### `PartialEq`

```rust
impl PartialEq for AccessPolicy
```

#### `eq`

```rust
fn eq(&self, other: &AccessPolicy) -> bool
```

Returns whether the two access policies are equal.

#### `ne`

```rust
fn ne(&self, other: &AccessPolicy) -> bool
```

Returns whether the two access policies are not equal.

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for AccessPolicy
```

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

### `CloneToUninit`

```rust
impl<T: Clone> CloneToUninit for T
```

#### `clone_to_uninit`

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

Performs copy-assignment from `self` to `dest`.

This is a nightly-only experimental API.

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

Calls `U::from(self)`.

### `ToOwned`

```rust
impl<T: Clone> ToOwned for T
```

#### `type Owned`

```rust
type Owned = T
```

The resulting type after obtaining ownership.

#### `to_owned`

```rust
fn to_owned(&self) -> T
```

Creates owned data from borrowed data, usually by cloning.

#### `clone_into`

```rust
fn clone_into(&self, target: &mut T)
```

Uses borrowed data to replace owned data, usually by cloning.

### `TryFrom<U>`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
```

#### `type Error`

```rust
type Error = Infallible
```

The type returned in the event of a conversion error.

#### `try_from`

```rust
fn try_from(value: U) -> Result<T, Infallible>
```

Performs the conversion.

### `TryInto<U>`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
```

#### `type Error`

```rust
type Error = <U as TryFrom<T>>::Error
```

The type returned in the event of a conversion error.

#### `try_into`

```rust
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```

Performs the conversion.
