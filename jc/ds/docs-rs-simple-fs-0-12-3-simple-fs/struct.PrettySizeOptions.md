# PrettySizeOptions

`simple_fs` version 0.12.3

## Definition

Source: [`simple_fs/common/pretty.rs`](../src/simple_fs/common/pretty.rs.html#6-9)

```text
pub struct PrettySizeOptions {
    /* private fields */
}
```

## Trait Implementations

### `Clone`

Source: [`simple_fs/common/pretty.rs`](../src/simple_fs/common/pretty.rs.html#5)

```text
impl Clone for PrettySizeOptions
```

#### `clone`

```text
fn clone(&self) -> PrettySizeOptions
```

Returns a duplicate of the value.

#### `clone_from`

```text
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### `Debug`

Source: [`simple_fs/common/pretty.rs`](../src/simple_fs/common/pretty.rs.html#5)

```text
impl Debug for PrettySizeOptions
```

#### `fmt`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `Default`

Source: [`simple_fs/common/pretty.rs`](../src/simple_fs/common/pretty.rs.html#5)

```text
impl Default for PrettySizeOptions
```

#### `default`

```text
fn default() -> PrettySizeOptions
```

Returns the default value for the type.

### `From<&String>`

Source: [`simple_fs/common/pretty.rs`](../src/simple_fs/common/pretty.rs.html#17-21)

```text
impl From<&String> for PrettySizeOptions
```

#### `from`

```text
fn from(val: &String) -> Self
```

Converts a `String` reference into `PrettySizeOptions`.

### `From<&str>`

Source: [`simple_fs/common/pretty.rs`](../src/simple_fs/common/pretty.rs.html#11-15)

```text
impl From<&str> for PrettySizeOptions
```

#### `from`

```text
fn from(val: &str) -> Self
```

Converts a string slice into `PrettySizeOptions`.

### `From<SizeUnit>`

Source: [`simple_fs/common/pretty.rs`](../src/simple_fs/common/pretty.rs.html#5)

```text
impl From<SizeUnit> for PrettySizeOptions
```

#### `from`

```text
fn from(value: SizeUnit) -> Self
```

Converts a [`SizeUnit`](enum.SizeUnit.html) into `PrettySizeOptions`.

### `From<String>`

Source: [`simple_fs/common/pretty.rs`](../src/simple_fs/common/pretty.rs.html#23-27)

```text
impl From<String> for PrettySizeOptions
```

#### `from`

```text
fn from(val: String) -> Self
```

Converts an owned `String` into `PrettySizeOptions`.

## Auto Trait Implementations

`PrettySizeOptions` implements the following auto traits:

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

### `Borrow<T>`

```text
impl<T: ?Sized> Borrow<T> for T
```

#### `borrow`

```text
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

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

### `From<T>`

```text
impl<T> From<T> for T
```

#### `from`

```text
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into<U>`

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

#### `type Owned`

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

### `TryFrom<U>`

```text
impl<T, U: Into<T>> TryFrom<U> for T
```

#### `type Error`

```text
type Error = Infallible
```

The type returned in the event of a conversion error.

#### `try_from`

```text
fn try_from(value: U) -> Result<T, Infallible>
```

Performs the conversion.

### `TryInto<U>`

```text
impl<T, U: TryFrom<T>> TryInto<U> for T
```

#### `type Error`

```text
type Error = <U as TryFrom<T>>::Error
```

The type returned in the event of a conversion error.

#### `try_into`

```text
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```

Performs the conversion.
