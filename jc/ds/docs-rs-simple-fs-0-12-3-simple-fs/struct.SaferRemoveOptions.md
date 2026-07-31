# SaferRemoveOptions in `simple_fs`

Version 0.12.3 of the `simple_fs` crate.

## Struct Definition

Source: [safer_remove_options.rs](../src/simple_fs/safer/safer_remove_options.rs.html#2-6)

```text
pub struct SaferRemoveOptions<'a> {
    pub must_contain_any: Option<&'a [&'a str]>,
    pub must_contain_all: Option<&'a [&'a str]>,
    pub restrict_to_current_dir: bool,
}
```

## Fields

- `must_contain_any: Option<&'a [&'a str]>`
  - Optional patterns where at least one pattern must be present.
- `must_contain_all: Option<&'a [&'a str]>`
  - Optional patterns where all patterns must be present.
- `restrict_to_current_dir: bool`
  - Whether removal operations are restricted to the current directory.

## Methods

### `with_must_contain_any`

```text
pub fn with_must_contain_any(
    self,
    patterns: &'a [&'a str],
) -> Self
```

Sets the patterns for which at least one match must be present.

### `with_must_contain_all`

```text
pub fn with_must_contain_all(
    self,
    patterns: &'a [&'a str],
) -> Self
```

Sets the patterns for which all matches must be present.

### `with_restrict_to_current_dir`

```text
pub fn with_restrict_to_current_dir(
    self,
    val: bool,
) -> Self
```

Sets whether removal is restricted to the current directory.

## Trait Implementations

### `Clone`

```text
impl<'a> Clone for SaferRemoveOptions<'a> {
    fn clone(&self) -> SaferRemoveOptions<'a>;
    fn clone_from(&mut self, source: &Self) -> ();
}
```

### `Debug`

```text
impl<'a> Debug for SaferRemoveOptions<'a> {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

### `Default`

```text
impl Default for SaferRemoveOptions<'_> {
    fn default() -> Self;
}
```

### `From<&'a [&'a str]>`

```text
impl<'a> From<&'a [&'a str]> for SaferRemoveOptions<'a> {
    fn from(patterns: &'a [&'a str]) -> Self;
}
```

### `From<()>`

```text
impl From<()> for SaferRemoveOptions<'_> {
    fn from(_: ()) -> Self;
}
```

## Auto Trait Implementations

`SaferRemoveOptions<'a>` automatically implements:

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
impl<T> Any for T
where
    T: 'static + ?Sized,
{
    fn type_id(&self) -> TypeId;
}
```

### `Borrow<T>`

```text
impl<T> Borrow<T> for T
where
    T: ?Sized,
{
    fn borrow(&self) -> &T;
}
```

### `BorrowMut<T>`

```text
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
{
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `CloneToUninit`

```text
impl<T> CloneToUninit for T
where
    T: Clone,
{
    unsafe fn clone_to_uninit(
        &self,
        dest: *mut u8,
    ) -> ();
}
```

This is a nightly-only experimental API.

### `From<T>`

```text
impl<T> From<T> for T {
    fn from(t: T) -> T;
}
```

### `Into<U>`

```text
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

### `ToOwned`

```text
impl<T> ToOwned for T
where
    T: Clone,
{
    type Owned = T;

    fn to_owned(&self) -> T;
    fn clone_into(&self, target: &mut T) -> ();
}
```

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
