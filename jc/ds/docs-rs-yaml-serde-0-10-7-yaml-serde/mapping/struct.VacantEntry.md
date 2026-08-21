# `VacantEntry` in `yaml_serde::mapping`

## Crate

[`yaml_serde`](../../yaml_serde/index.html) 0.10.7

## Struct `VacantEntry`

```rust
pub struct VacantEntry<'a> {
    /* private fields */
}
```

A view into a vacant entry in a [`Mapping`](../struct.Mapping.html). It is part of the [`Entry`](enum.Entry.html) enum.

## Implementations

### `impl<'a> VacantEntry<'a>`

#### `key`

```rust
pub fn key(&self) -> &Value
```

Gets a reference to the key that would be used when inserting a value through the `VacantEntry`.

#### `into_key`

```rust
pub fn into_key(self) -> Value
```

Takes ownership of the key, leaving the entry vacant.

#### `insert`

```rust
pub fn insert(self, value: Value) -> &'a mut Value
```

Sets the value of the entry with the `VacantEntry`'s key and returns a mutable reference to it.

## Auto Trait Implementations

- `impl<'a> !UnwindSafe for VacantEntry<'a>`
- `impl<'a> Freeze for VacantEntry<'a>`
- `impl<'a> RefUnwindSafe for VacantEntry<'a>`
- `impl<'a> Send for VacantEntry<'a>`
- `impl<'a> Sync for VacantEntry<'a>`
- `impl<'a> Unpin for VacantEntry<'a>`
- `impl<'a> UnsafeUnpin for VacantEntry<'a>`

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

### `Borrow`

```rust
impl<T, U> Borrow<U> for T
where
    T: ?Sized,
```

#### `borrow`

```rust
fn borrow(&self) -> &U
```

Immutably borrows from an owned value.

### `BorrowMut`

```rust
impl<T, U> BorrowMut<U> for T
where
    T: ?Sized,
```

#### `borrow_mut`

```rust
fn borrow_mut(&mut self) -> &mut U
```

Mutably borrows from an owned value.

### `From`

```rust
impl<T> From<T> for T
```

#### `from`

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

#### `into`

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

This conversion is whatever the implementation of [`From`] for `U` chooses to do.

### `TryFrom`

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

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
```

#### Associated type `Error`

```rust
type Error = <U as TryFrom<T>>::Error
```

The type returned in the event of a conversion error.

#### `try_into`

```rust
fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
