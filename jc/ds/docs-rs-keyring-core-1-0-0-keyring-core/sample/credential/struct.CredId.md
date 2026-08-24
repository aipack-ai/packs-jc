# `CredId` in `keyring_core::sample::credential`

## Definition

**Crate:** `keyring-core` 1.0.0  
**Module:** `keyring_core::sample::credential`  
**Availability:** Available only when the `sample` crate feature is enabled.  
**Source:** [credential.rs](../../../src/keyring_core/sample/credential.rs.html#15-18)

Credentials are specified by a pair of service name and username.

```rust
pub struct CredId {
    pub service: String,
    pub user: String,
}
```

## Fields

- `service: String` — The service name.
- `user: String` — The username.

## Trait Implementations

### `Clone`

```rust
impl Clone for CredId
```

```rust
fn clone(&self) -> CredId
```

Returns a duplicate of the value.

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### `Debug`

```rust
impl Debug for CredId
```

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `Deserialize<'de>`

```rust
impl<'de> Deserialize<'de> for CredId
```

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

Deserializes this value from the given Serde deserializer.

### `Eq`

```rust
impl Eq for CredId
```

### `Hash`

```rust
impl Hash for CredId
```

```rust
fn hash<__H: Hasher>(&self, state: &mut __H)
```

Feeds this value into the given hasher.

```rust
fn hash_slice<H>(data: &[Self], state: &mut H)
where
    H: Hasher,
    Self: Sized;
```

Feeds a slice of this type into the given hasher.

### `PartialEq`

```rust
impl PartialEq for CredId
```

```rust
fn eq(&self, other: &CredId) -> bool
```

Tests whether `self` and `other` are equal.

```rust
fn ne(&self, other: &Rhs) -> bool
```

Tests whether `self` and `other` are not equal.

### `Serialize`

```rust
impl Serialize for CredId
```

```rust
fn serialize<__S>(&self, serializer: __S) -> Result<__S::Ok, __S::Error>
where
    __S: Serializer;
```

Serializes this value into the given Serde serializer.

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for CredId
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

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `Borrow<T>`

```rust
impl<T: ?Sized> Borrow<T> for T
```

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

```rust
impl<T: ?Sized> BorrowMut<T> for T
```

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `CloneToUninit`

```rust
impl<T> CloneToUninit for T
where
    T: Clone;
```

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

Performs copy-assignment from `self` to `dest`.

### `DeserializeOwned`

```rust
impl<T> DeserializeOwned for T
where
    T: for<'de> Deserialize<'de>;
```

### `Equivalent<K>`

```rust
impl<Q, K> Equivalent<K> for Q
where
    Q: Eq + ?Sized,
    K: Borrow<Q> + ?Sized;
```

```rust
fn equivalent(&self, key: &K) -> bool
```

Checks whether this value is equivalent to the given key.

### `From<T>`

```rust
impl<T> From<T> for T
```

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into<U>`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>;
```

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### `ToOwned`

```rust
impl<T> ToOwned for T
where
    T: Clone;
```

```rust
type Owned = T;
```

The resulting type after obtaining ownership.

```rust
fn to_owned(&self) -> T
```

Creates owned data from borrowed data, usually by cloning.

```rust
fn clone_into(&self, target: &mut T)
```

Uses borrowed data to replace owned data, usually by cloning.

### `TryFrom<U>`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>;
```

```rust
type Error = Infallible;
```

The type returned in the event of a conversion error.

```rust
fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto<U>`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>;
```

```rust
type Error = <U as TryFrom<T>>::Error;
```

The type returned in the event of a conversion error.

```rust
fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
