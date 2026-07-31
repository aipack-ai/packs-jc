# `ListOptions` in `simple_fs`

## Struct

```text
pub struct ListOptions<'a> {
    pub exclude_globs: Option<Vec<&'a str>>,
    pub relative_glob: bool,
    pub depth: Option<usize>,
}
```

`ListOptions` contains options for file and directory listing operations.

> Note: In the future, the lifetime might be removed, and `iter_files` will take `Option<&ListOptions>`.

## Fields

### `exclude_globs`

```text
pub exclude_globs: Option<Vec<&'a str>>
```

Glob patterns used to exclude files or directories from listing results.

### `relative_glob`

```text
pub relative_glob: bool
```

When `true`, the glob is relative to the directory of the list rather than including it.

The default value is `false`.

### `depth`

```text
pub depth: Option<usize>
```

The maximum listing depth. For now, this is only used in directory listings.

## Associated Functions

### `new`

```text
pub fn new(globs: Option<&'a [&'a str]>) -> Self
```

Creates a new `ListOptions` value with the specified glob patterns.

### `from_relative_glob`

```text
pub fn from_relative_glob(val: bool) -> Self
```

Creates a new `ListOptions` value with the `relative_glob` option set to `val`.

## Methods

### `with_exclude_globs`

```text
pub fn with_exclude_globs(
    self,
    globs: &'a [&'a str],
) -> Self
```

Sets the excluded glob patterns and returns the updated options.

### `with_relative_glob`

```text
pub fn with_relative_glob(self) -> Self
```

Enables relative glob matching and returns the updated options.

### `exclude_globs`

```text
pub fn exclude_globs(&'a self) -> Option<&'a [&'a str]>
```

Returns the configured excluded glob patterns.

## Trait Implementations

### `Default`

```text
impl<'a> Default for ListOptions<'a> {
    fn default() -> ListOptions<'a>;
}
```

Returns the default `ListOptions` value.

### `From<&'a [&'a str]>`

```text
impl<'a> From<&'a [&'a str]> for ListOptions<'a> {
    fn from(globs: &'a [&'a str]) -> Self;
}
```

Creates `ListOptions` from a slice of glob patterns.

### `From<Option<&'a [&'a str]>>`

```text
impl<'a> From<Option<&'a [&'a str]>> for ListOptions<'a> {
    fn from(globs: Option<&'a [&'a str]>) -> Self;
}
```

Creates `ListOptions` from an optional slice of glob patterns.

### `From<Vec<&'a str>>`

```text
impl<'a> From<Vec<&'a str>> for ListOptions<'a> {
    fn from(globs: Vec<&'a str>) -> Self;
}
```

Creates `ListOptions` from a vector of glob patterns.

## Auto Trait Implementations

`ListOptions<'a>` implements the following auto traits:

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
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> TypeId;
}
```

Returns the `TypeId` of the value.

### `Borrow<T>`

```text
impl<T: ?Sized> Borrow<T> for T {
    fn borrow(&self) -> &T;
}
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

```text
impl<T: ?Sized> BorrowMut<T> for T {
    fn borrow_mut(&mut self) -> &mut T;
}
```

Mutably borrows from an owned value.

### `From<T> for T`

```text
impl<T> From<T> for T {
    fn from(t: T) -> T;
}
```

Returns the argument unchanged.

### `Into<U>`

```text
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

Converts `self` by calling `U::from(self)`.

### `TryFrom<U>`

```text
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

Performs an infallible conversion.

### `TryInto<U>`

```text
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```

Performs a fallible conversion using `U::try_from(self)`.
