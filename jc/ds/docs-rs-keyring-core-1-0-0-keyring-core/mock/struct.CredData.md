# `CredData` in `keyring_core::mock`

## Module

[`keyring_core`](../../keyring_core/index.html) 1.0.0  
`keyring_core::mock`

## Struct `CredData`

**Source:** [`keyring_core/mock.rs`](../../src/keyring_core/mock.rs.html#66-69)

```rust
pub struct CredData {
    pub secret: Option<Vec<u8>>,
    pub error: Option<Error>,
}
```

The in-memory persisted data for a mock credential.

A password is stored along with an intended error to return on the next call. Everything in this structure is public for transparency; most credential store implementations hide their internals.

## Fields

- `secret: Option<Vec<u8>>` — The persisted credential secret.
- `error: Option<Error>` — An optional error intended to be returned on the next call.

## Trait Implementations

### `Debug`

**Source:** [`keyring_core/mock.rs`](../../src/keyring_core/mock.rs.html#65)

Implements [`Debug`](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for [`CredData`](struct.CredData.html).

```rust
fn fmt(
    &self,
    f: &mut Formatter<'_>,
) -> Result
```

Formats the value using the given formatter.

### `Default`

**Source:** [`keyring_core/mock.rs`](../../src/keyring_core/mock.rs.html#65)

Implements [`Default`](https://doc.rust-lang.org/nightly/core/default/trait.Default.html) for [`CredData`](struct.CredData.html).

```rust
fn default() -> CredData
```

Returns the default value for `CredData`.

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
impl<T: 'static + ?Sized> Any for T
```

```rust
fn type_id(&self) -> TypeId
```

Gets the [`TypeId`](https://doc.rust-lang.org/nightly/core/any/struct.TypeId.html) of `self`.

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
    U: From<T>,
```

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

Associated type:

```rust
type Error = Infallible
```

The type returned in the event of a conversion error.

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

Associated type:

```rust
type Error = <U as TryFrom<T>>::Error
```

The type returned in the event of a conversion error.

```rust
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```

Performs the conversion.
