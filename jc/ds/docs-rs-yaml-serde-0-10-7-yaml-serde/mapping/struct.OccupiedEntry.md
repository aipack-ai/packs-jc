# OccupiedEntry

## `yaml_serde` 0.10.7

## `yaml_serde::mapping`

```rust
pub struct OccupiedEntry<'a> {
    /* private fields */
}
```

A view into an occupied entry in a [`Mapping`](../struct.Mapping.html). It is part of the [`Entry`](enum.Entry.html) enum.

## Implementations

### `impl<'a> OccupiedEntry<'a>`

#### `key`

```rust
pub fn key(&self) -> &Value
```

Gets a reference to the key in the entry.

#### `get`

```rust
pub fn get(&self) -> &Value
```

Gets a reference to the value in the entry.

#### `get_mut`

```rust
pub fn get_mut(&mut self) -> &mut Value
```

Gets a mutable reference to the value in the entry.

#### `into_mut`

```rust
pub fn into_mut(self) -> &'a mut Value
```

Converts the entry into a mutable reference to its value.

#### `insert`

```rust
pub fn insert(&mut self, value: Value) -> Value
```

Sets the value of the entry with the `OccupiedEntry`'s key and returns the entry's old value.

#### `remove`

```rust
pub fn remove(self) -> Value
```

Takes the value of the entry out of the map and returns it.

#### `remove_entry`

```rust
pub fn remove_entry(self) -> (Value, Value)
```

Removes and returns the key-value pair stored in the map for this entry.

## Auto Trait Implementations

### `impl<'a> !UnwindSafe for OccupiedEntry<'a>`

`OccupiedEntry<'a>` does not implement [`UnwindSafe`](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.UnwindSafe.html).

### `impl<'a> Freeze for OccupiedEntry<'a>`

`OccupiedEntry<'a>` implements [`Freeze`](https://doc.rust-lang.org/nightly/core/marker/trait.Freeze.html).

### `impl<'a> RefUnwindSafe for OccupiedEntry<'a>`

`OccupiedEntry<'a>` implements [`RefUnwindSafe`](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.RefUnwindSafe.html).

### `impl<'a> Send for OccupiedEntry<'a>`

`OccupiedEntry<'a>` implements [`Send`](https://doc.rust-lang.org/nightly/core/marker/trait.Send.html).

### `impl<'a> Sync for OccupiedEntry<'a>`

`OccupiedEntry<'a>` implements [`Sync`](https://doc.rust-lang.org/nightly/core/marker/trait.Sync.html).

### `impl<'a> Unpin for OccupiedEntry<'a>`

`OccupiedEntry<'a>` implements [`Unpin`](https://doc.rust-lang.org/nightly/core/marker/trait.Unpin.html).

### `impl<'a> UnsafeUnpin for OccupiedEntry<'a>`

`OccupiedEntry<'a>` implements [`UnsafeUnpin`](https://doc.rust-lang.org/nightly/core/marker/trait.UnsafeUnpin.html).

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

where `U: From<T>`

#### `into`

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

This conversion is whatever the implementation of [`From`](https://doc.rust-lang.org/nightly/core/convert/trait.From.html) for `U` chooses to do.

### `impl<T, U> TryFrom<U> for T`

where `U: Into<T>`

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

### `impl<T, U> TryInto<U> for T`

where `U: TryFrom<T>`

#### Associated type `Error`

```rust
type Error = <U as TryFrom<T>>::Error
```

The type returned in the event of a conversion error.

#### `try_into`

```rust
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```

Performs the conversion.
