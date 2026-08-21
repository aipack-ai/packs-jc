# Enum `Entry`

`yaml_serde::mapping::Entry` represents an existing key-value pair or a vacant location where a new value can be inserted.

[Source](../../src/yaml_serde/mapping.rs.html#693-698)

```rust
pub enum Entry<'a> {
    Occupied(OccupiedEntry<'a>),
    Vacant(VacantEntry<'a>),
}
```

## Variants

### `Occupied(OccupiedEntry<'a>)`

An existing slot with an equivalent key.

### `Vacant(VacantEntry<'a>)`

A vacant slot with no equivalent key in the map.

## Implementations

### `impl<'a> Entry<'a>`

[Source](../../src/yaml_serde/mapping.rs.html#712-757)

#### `key`

```rust
pub fn key(&self) -> &Value
```

Returns a reference to this entry's key.

#### `or_insert`

```rust
pub fn or_insert(self, default: Value) -> &'a mut Value
```

Ensures that a value is present in the entry by inserting `default` if the entry is vacant, then returns a mutable reference to the value.

#### `or_insert_with`

```rust
pub fn or_insert_with<F>(self, default: F) -> &'a mut Value
where
    F: FnOnce() -> Value,
```

Ensures that a value is present in the entry by inserting the result of the default function if the entry is vacant, then returns a mutable reference to the value.

#### `and_modify`

```rust
pub fn and_modify<F>(self, f: F) -> Self
where
    F: FnOnce(&mut Value),
```

Provides in-place mutable access to an occupied entry before any potential insertion into the map.

## Auto Trait Implementations

- `!UnwindSafe` for `Entry<'a>`
- `Freeze` for `Entry<'a>`
- `RefUnwindSafe` for `Entry<'a>`
- `Send` for `Entry<'a>`
- `Sync` for `Entry<'a>`
- `Unpin` for `Entry<'a>`
- `UnsafeUnpin` for `Entry<'a>`

## Blanket Implementations

### `impl<T: 'static + ?Sized> Any for T`

#### `type_id`

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `impl<T: ?Sized> Borrow<T> for T`

#### `borrow`

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `impl<T: ?Sized> BorrowMut<T> for T`

#### `borrow_mut`

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `impl<T> From<T> for T`

#### `from`

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `impl<T, U> Into<U> for T`

```rust
where
    U: From<T>,
```

#### `into`

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### `impl<T, U> TryFrom<U> for T`

```rust
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

### `impl<T, U> TryInto<U> for T`

```rust
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
