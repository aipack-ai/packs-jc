# `NoMatchPosition` Enum

Crate: [`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/list/sort.rs.html#14-18)

```text
pub enum NoMatchPosition {
    Start,
    End,
}
```

## Variants

- [`Start`](#start)
- [`End`](#end)

### `Start`

Indicates that items without a match should be placed at the start.

### `End`

Indicates that items without a match should be placed at the end.

## Trait Implementations

### `Clone`

[Source](../src/simple_fs/list/sort.rs.html#13)

```text
impl Clone for NoMatchPosition
```

#### `clone`

```text
fn clone(&self) -> NoMatchPosition
```

Returns a duplicate of the value.

#### `clone_from`

```text
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### `Copy`

[Source](../src/simple_fs/list/sort.rs.html#13)

```text
impl Copy for NoMatchPosition
```

### `Debug`

[Source](../src/simple_fs/list/sort.rs.html#13)

```text
impl Debug for NoMatchPosition
```

#### `fmt`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `Default`

[Source](../src/simple_fs/list/sort.rs.html#13)

```text
impl Default for NoMatchPosition
```

#### `default`

```text
fn default() -> NoMatchPosition
```

Returns the default value for the type.

### `Eq`

[Source](../src/simple_fs/list/sort.rs.html#13)

```text
impl Eq for NoMatchPosition
```

### `PartialEq`

[Source](../src/simple_fs/list/sort.rs.html#13)

```text
impl PartialEq for NoMatchPosition
```

#### `eq`

```text
fn eq(&self, other: &NoMatchPosition) -> bool
```

Tests whether `self` and `other` are equal.

#### `ne`

```text
fn ne(&self, other: &Rhs) -> bool
```

Tests whether two values are not equal.

### `StructuralPartialEq`

[Source](../src/simple_fs/list/sort.rs.html#13)

```text
impl StructuralPartialEq for NoMatchPosition
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

```text
impl<T: 'static + ?Sized> Any for T
```

#### `type_id`

```text
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `Borrow`

```text
impl<T: ?Sized> Borrow<T> for T
```

#### `borrow`

```text
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut`

```text
impl<T: ?Sized> BorrowMut<T> for T
```

#### `borrow_mut`

```text
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `CloneToUninit`

```text
impl<T: Clone> CloneToUninit for T
```

#### `clone_to_uninit`

```text
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

Performs copy-assignment from `self` to `dest`.

This is a nightly-only experimental API.

### `From`

```text
impl<T> From<T> for T
```

#### `from`

```text
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into`

```text
impl<T, U: From<T>> Into<U> for T
```

#### `into`

```text
fn into(self) -> U
```

Calls `U::from(self)`.

### `ToOwned`

```text
impl<T: Clone> ToOwned for T
```

#### Associated type

```text
type Owned = T
```

The resulting type after obtaining ownership.

#### `to_owned`

```text
fn to_owned(&self) -> T
```

Creates owned data from borrowed data, usually by cloning.

#### `clone_into`

```text
fn clone_into(&self, target: &mut T)
```

Uses borrowed data to replace owned data, usually by cloning.

### `TryFrom`

```text
impl<T, U: Into<T>> TryFrom<U> for T
```

#### Associated type

```text
type Error = Infallible
```

The type returned in the event of a conversion error.

#### `try_from`

```text
fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto`

```text
impl<T, U: TryFrom<T>> TryInto<U> for T
```

#### Associated type

```text
type Error = <U as TryFrom<T>>::Error
```

The type returned in the event of a conversion error.

#### `try_into`

```text
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```

Performs the conversion.
