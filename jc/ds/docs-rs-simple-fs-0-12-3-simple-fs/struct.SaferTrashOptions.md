# `SaferTrashOptions` in `simple_fs`

## Crate

- **Crate:** `simple-fs`
- **Version:** `0.12.3`
- **License:** [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- **Released:** 07 July 2026
- **Repository:** [github.com/jeremychone/rust-simple-fs](https://github.com/jeremychone/rust-simple-fs)
- **Owner:** [jeremychone](https://crates.io/users/jeremychone)
- **Documentation coverage:** 28.57%

## Struct

`SaferTrashOptions` configures safety restrictions for trash operations.

```text
pub struct SaferTrashOptions<'a> {
    pub must_contain_any: Option<&'a [&'a str]>,
    pub must_contain_all: Option<&'a [&'a str]>,
    pub restrict_to_current_dir: bool,
}
```

## Fields

### `must_contain_any`

```text
pub must_contain_any: Option<&'a [&'a str]>
```

Optional patterns where at least one pattern must be present.

### `must_contain_all`

```text
pub must_contain_all: Option<&'a [&'a str]>
```

Optional patterns where all patterns must be present.

### `restrict_to_current_dir`

```text
pub restrict_to_current_dir: bool
```

Whether the operation must be restricted to the current directory.

## Methods

### `with_must_contain_any`

```text
pub fn with_must_contain_any(
    self,
    patterns: &'a [&'a str],
) -> Self
```

Sets the patterns of which at least one must be present.

### `with_must_contain_all`

```text
pub fn with_must_contain_all(
    self,
    patterns: &'a [&'a str],
) -> Self
```

Sets the patterns of which all must be present.

### `with_restrict_to_current_dir`

```text
pub fn with_restrict_to_current_dir(
    self,
    val: bool,
) -> Self
```

Sets whether the operation is restricted to the current directory.

## Trait Implementations

### `Clone`

```text
impl<'a> Clone for SaferTrashOptions<'a>
```

Methods:

```text
fn clone(&self) -> SaferTrashOptions<'a>
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```text
impl<'a> Debug for SaferTrashOptions<'a>
```

Method:

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `Default`

```text
impl Default for SaferTrashOptions<'_>
```

Method:

```text
fn default() -> Self
```

### `From<&'a [&'a str]>`

```text
impl<'a> From<&'a [&'a str]> for SaferTrashOptions<'a>
```

Method:

```text
fn from(patterns: &'a [&'a str]) -> Self
```

### `From<()>`

```text
impl From<()> for SaferTrashOptions<'_>
```

Method:

```text
fn from(_: ()) -> Self
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

Each auto trait is implemented for `SaferTrashOptions<'a>`.

## Blanket Implementations

### `Any`

```text
impl<T> Any for T
where
    T: 'static + ?Sized
```

Method:

```text
fn type_id(&self) -> TypeId
```

### `Borrow`

```text
impl<T> Borrow<T> for T
where
    T: ?Sized
```

Method:

```text
fn borrow(&self) -> &T
```

### `BorrowMut`

```text
impl<T> BorrowMut<T> for T
where
    T: ?Sized
```

Method:

```text
fn borrow_mut(&mut self) -> &mut T
```

### `CloneToUninit`

```text
impl<T> CloneToUninit for T
where
    T: Clone
```

Method:

```text
unsafe fn clone_to_uninit(
    &self,
    dest: *mut u8,
)
```

### `From<T>`

```text
impl<T> From<T> for T
```

Method:

```text
fn from(t: T) -> T
```

### `Into<U>`

```text
impl<T, U> Into<U> for T
where
    U: From<T>
```

Method:

```text
fn into(self) -> U
```

### `ToOwned`

```text
impl<T> ToOwned for T
where
    T: Clone
```

Associated type:

```text
type Owned = T
```

Methods:

```text
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### `TryFrom<U>`

```text
impl<T, U> TryFrom<U> for T
where
    U: Into<T>
```

Associated type:

```text
type Error = Infallible
```

Method:

```text
fn try_from(value: U) -> Result<T, Infallible>
```

### `TryInto<U>`

```text
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>
```

Associated type:

```text
type Error = <U as TryFrom<T>>::Error
```

Method:

```text
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```
