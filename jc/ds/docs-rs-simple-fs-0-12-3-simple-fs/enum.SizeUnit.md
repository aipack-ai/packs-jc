# SizeUnit in `simple_fs` - Rust

## Enum `SizeUnit`

```text
pub enum SizeUnit {
    B,
    KB,
    MB,
    GB,
    TB,
}
```

## Variants

- `B`
- `KB`
- `MB`
- `GB`
- `TB`

## Implementations

### `impl SizeUnit`

#### `pub fn new(val: &str) -> Self`

Creates a `SizeUnit` from a string value.

#### `pub fn idx(&self) -> usize`

Returns the index of the unit in the `UNITS` array used by [`pretty_size_with_options`](fn.pretty_size_with_options.html).

## Trait Implementations

### `Clone`

#### `fn clone(&self) -> SizeUnit`

Returns a duplicate of the value.

#### `fn clone_from(&mut self, source: &Self)`

Performs copy-assignment from `source`.

### `Debug`

#### `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

Formats the value using the given formatter.

### `Default`

#### `fn default() -> SizeUnit`

Returns the default value for `SizeUnit`.

### `From<&String>`

#### `fn from(val: &String) -> Self`

Converts a `String` reference into a `SizeUnit`.

### `From<&str>`

#### `fn from(val: &str) -> Self`

Converts a string slice into a `SizeUnit`.

### `From<SizeUnit> for PrettySizeOptions`

#### `fn from(value: SizeUnit) -> Self`

Converts a `SizeUnit` into `PrettySizeOptions`.

### `From<String>`

#### `fn from(val: String) -> Self`

Converts an owned `String` into a `SizeUnit`.

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

Implemented for `T` where `T: 'static + ?Sized`.

#### `fn type_id(&self) -> TypeId`

Gets the `TypeId` of `self`.

### `Borrow<T>`

Implemented for `T` where `T: ?Sized`.

#### `fn borrow(&self) -> &T`

Immutably borrows from an owned value.

### `BorrowMut<T>`

Implemented for `T` where `T: ?Sized`.

#### `fn borrow_mut(&mut self) -> &mut T`

Mutably borrows from an owned value.

### `CloneToUninit`

Implemented for `T` where `T: Clone`.

#### `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

Performs copy-assignment from `self` to `dest`.

This is a nightly-only experimental API.

### `From<T> for T`

#### `fn from(t: T) -> T`

Returns the argument unchanged.

### `Into<U>`

Implemented for `T` where `U: From<T>`.

#### `fn into(self) -> U`

Calls `U::from(self)`.

### `ToOwned`

Implemented for `T` where `T: Clone`.

#### `type Owned = T`

The resulting type after obtaining ownership.

#### `fn to_owned(&self) -> T`

Creates owned data from borrowed data, usually by cloning.

#### `fn clone_into(&self, target: &mut T)`

Uses borrowed data to replace owned data, usually by cloning.

### `TryFrom<U> for T`

Implemented for `T` where `U: Into<T>`.

#### `type Error = Infallible`

The type returned in the event of a conversion error.

#### `fn try_from(value: U) -> Result<T, Infallible>`

Performs the conversion.

### `TryInto<U>`

Implemented for `T` where `U: TryFrom<T>`.

#### `type Error = <U as TryFrom<T>>::Error`

The type returned in the event of a conversion error.

#### `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`

Performs the conversion.
