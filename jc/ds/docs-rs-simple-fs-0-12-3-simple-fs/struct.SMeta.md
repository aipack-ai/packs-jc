# `SMeta`

Crate: [`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/common/smeta.rs.html#4-20)

A simplified file metadata structure with common, normalized fields. All fields are guaranteed to be present.

## Definition

```text
pub struct SMeta {
    pub created_epoch_us: i64,
    pub modified_epoch_us: i64,
    pub size: u64,
    pub is_file: bool,
    pub is_dir: bool,
}
```

## Fields

### `created_epoch_us: i64`

Creation time since the Unix epoch in microseconds. If unavailable, this may fall back to the modification time.

### `modified_epoch_us: i64`

Last modification time since the Unix epoch in microseconds.

### `size: u64`

File size in bytes. Will be `0` for directories or when unavailable.

### `is_file: bool`

Whether the path is a regular file.

### `is_dir: bool`

Whether the path is a directory.

## Trait Implementations

### `Clone`

`SMeta` implements [`Clone`](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html).

#### `clone`

```text
fn clone(&self) -> SMeta
```

Returns a duplicate of the value.

#### `clone_from`

```text
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### `Debug`

`SMeta` implements [`Debug`](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html).

#### `fmt`

```text
fn fmt(
    &self,
    f: &mut std::fmt::Formatter<'_>,
) -> std::fmt::Result
```

Formats the value using the given formatter.

## Auto Trait Implementations

`SMeta` implements the following auto traits:

- [`Freeze`](https://doc.rust-lang.org/nightly/core/marker/trait.Freeze.html)
- [`RefUnwindSafe`](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.RefUnwindSafe.html)
- [`Send`](https://doc.rust-lang.org/nightly/core/marker/trait.Send.html)
- [`Sync`](https://doc.rust-lang.org/nightly/core/marker/trait.Sync.html)
- [`Unpin`](https://doc.rust-lang.org/nightly/core/marker/trait.Unpin.html)
- [`UnsafeUnpin`](https://doc.rust-lang.org/nightly/core/marker/trait.UnsafeUnpin.html)
- [`UnwindSafe`](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.UnwindSafe.html)

## Blanket Implementations

### `Any`

```text
impl<T: 'static + ?Sized> Any for T
```

#### `type_id`

```text
fn type_id(&self) -> std::any::TypeId
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
type Error = std::convert::Infallible
```

The type returned in the event of a conversion error.

#### `try_from`

```text
fn try_from(value: U) -> Result<T, std::convert::Infallible>
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
