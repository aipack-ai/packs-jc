# Struct `Location`

Crate: [`yaml_serde`](../yaml_serde/index.html) 0.10.7

[Source](../src/yaml_serde/error.rs.html#51-55)

```rust
pub struct Location {
    /* private fields */
}
```

The input location where an error occurred.

## Inherent Methods

### `index`

```rust
pub fn index(&self) -> usize
```

Returns the byte index of the error.

### `line`

```rust
pub fn line(&self) -> usize
```

Returns the line of the error.

### `column`

```rust
pub fn column(&self) -> usize
```

Returns the column of the error.

## Trait Implementations

### `Debug`

```rust
impl Debug for Location {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result
}
```

Formats the value using the given formatter.

## Auto Trait Implementations

`Location` implements the following auto traits:

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
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> TypeId
}
```

Gets the `TypeId` of `self`.

### `Borrow`

```rust
impl<T: ?Sized> Borrow<T> for T {
    fn borrow(&self) -> &T
}
```

Immutably borrows from an owned value.

### `BorrowMut`

```rust
impl<T: ?Sized> BorrowMut<T> for T {
    fn borrow_mut(&mut self) -> &mut T
}
```

Mutably borrows from an owned value.

### `From`

```rust
impl<T> From<T> for T {
    fn from(t: T) -> T
}
```

Returns the argument unchanged.

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U
}
```

Calls `U::from(self)`.

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Infallible>
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

    fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
}
```

Performs the conversion.
