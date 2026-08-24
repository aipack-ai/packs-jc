# SelfRef in `keyring_core::sample::store`

## Struct `SelfRef`

[Source](../../../src/keyring_core/sample/store.rs.html#57-59)

```rust
pub struct SelfRef {
    /* private fields */
}
```

Available on **crate feature `sample`** only.

A store’s mutable weak reference to itself.

Because credentials contain an `Arc` to their store, the store needs to keep a `Weak` reference to itself that can be upgraded to create the credential. Because the store must be created and wrapped in an `Arc` before that `Arc` can be downgraded and stored inside the store, the self-reference must be mutable.

## Auto Trait Implementations

### `!RefUnwindSafe`

```rust
impl !RefUnwindSafe for SelfRef
```

### `!UnwindSafe`

```rust
impl !UnwindSafe for SelfRef
```

### `Freeze`

```rust
impl Freeze for SelfRef
```

### `Send`

```rust
impl Send for SelfRef
```

### `Sync`

```rust
impl Sync for SelfRef
```

### `Unpin`

```rust
impl Unpin for SelfRef
```

### `UnsafeUnpin`

```rust
impl UnsafeUnpin for SelfRef
```

## Blanket Implementations

### `Any`

```rust
impl<T> Any for T
where
    T: 'static + ?Sized,
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

Calls `U::from(self)`.

This conversion is determined by the implementation of `From<T>` for `U`.

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
fn try_from(value: U) -> Result<T, Infallible>
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
fn try_into(self) -> Result<U, U::Error>
```

Performs the conversion.
