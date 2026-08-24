# `CredValue` in `keyring_core::sample::store`

Available on **crate feature `sample`** only.

Source: [`keyring_core/sample/store.rs`](../../../src/keyring_core/sample/store.rs.html#22-26)

The stored data for a credential.

## Definition

```rust
pub struct CredValue {
    pub secret: Vec<u8>,
    pub comment: Option<String>,
    pub creation_date: Option<String>,
}
```

## Fields

- `secret: Vec<u8>` - The credential secret.
- `comment: Option<String>` - An optional comment associated with the credential.
- `creation_date: Option<String>` - An optional creation date for the credential.

## Implementations

### `CredValue`

Source: [`keyring_core/sample/store.rs`](../../../src/keyring_core/sample/store.rs.html#28-44)

```rust
impl CredValue {
    pub fn new(secret: &[u8]) -> Self;

    pub fn new_ambiguous(comment: &str) -> CredValue;
}
```

#### `new`

```rust
pub fn new(secret: &[u8]) -> Self
```

Creates a credential value from a secret.

#### `new_ambiguous`

```rust
pub fn new_ambiguous(comment: &str) -> CredValue
```

Creates an ambiguous credential value with the given comment.

## Trait Implementations

### `Debug`

```rust
impl Debug for CredValue {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

### `Deserialize<'de>`

```rust
impl<'de> Deserialize<'de> for CredValue {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: Deserializer<'de>;
}
```

Deserializes this value from the given Serde deserializer.

### `Serialize`

```rust
impl Serialize for CredValue {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer;
}
```

Serializes this value into the given Serde serializer.

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
impl<T> Any for T
where
    T: 'static + ?Sized,
{
    fn type_id(&self) -> TypeId;
}
```

Gets the `TypeId` of `self`.

### `Borrow<T>`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
{
    fn borrow(&self) -> &T;
}
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
{
    fn borrow_mut(&mut self) -> &mut T;
}
```

Mutably borrows from an owned value.

### `DeserializeOwned`

```rust
impl<T> DeserializeOwned for T
where
    T: for<'de> Deserialize<'de>;
```

### `From<T> for T`

```rust
impl<T> From<T> for T {
    fn from(t: T) -> T;
}
```

Returns the argument unchanged.

### `Into<U>`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

Calls `U::from(self)`.

### `TryFrom<U>`

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

### `TryInto<U>`

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
