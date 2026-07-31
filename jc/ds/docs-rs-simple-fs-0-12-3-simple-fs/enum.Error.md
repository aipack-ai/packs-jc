# Error

**Crate:** [`simple_fs`](../simple_fs/index.html) 0.12.3

## Definition

```text
pub enum Error {
    PathNotUtf8(String),
    HomeDirNotFound,
    PathHasNoFileName(String),
    StripPrefix {
        prefix: String,
        path: String,
    },
    FileNotFound(String),
    FileCantOpen(PathAndCause),
    FileCantRead(PathAndCause),
    FileCantWrite(PathAndCause),
    FileCantCreate(PathAndCause),
    FileHasNoParent(String),
    FileNotSafeToRemove(PathAndCause),
    DirNotSafeToRemove(PathAndCause),
    FileNotSafeToTrash(PathAndCause),
    DirNotSafeToTrash(PathAndCause),
    CantTrash(PathAndCause),
    SortByGlobs {
        cause: String,
    },
    CantGetMetadata(PathAndCause),
    CantGetMetadataModified(PathAndCause),
    CantGetDurationSystemTimeError(SystemTimeError),
    DirCantCreateAll(PathAndCause),
    PathNotValidForPath(PathAndCause),
    GlobCantNew {
        glob: String,
        cause: globset::Error,
    },
    GlobSetCantBuild {
        globs: Vec<String>,
        cause: globset::Error,
    },
    FailToWatch {
        path: String,
        cause: String,
    },
    CantWatchPathNotFound(String),
    SpanInvalidStartAfterEnd,
    SpanOutOfBounds,
    SpanInvalidUtf8,
    CannotDiff {
        path: String,
        base: String,
    },
    CannotCanonicalize(PathAndCause),
}
```

## Variants

- `PathNotUtf8(String)`
- `HomeDirNotFound`
- `PathHasNoFileName(String)`
- `StripPrefix`
  - `prefix: String`
  - `path: String`
- `FileNotFound(String)`
- `FileCantOpen(PathAndCause)`
- `FileCantRead(PathAndCause)`
- `FileCantWrite(PathAndCause)`
- `FileCantCreate(PathAndCause)`
- `FileHasNoParent(String)`
- `FileNotSafeToRemove(PathAndCause)`
- `DirNotSafeToRemove(PathAndCause)`
- `FileNotSafeToTrash(PathAndCause)`
- `DirNotSafeToTrash(PathAndCause)`
- `CantTrash(PathAndCause)`
- `SortByGlobs`
  - `cause: String`
- `CantGetMetadata(PathAndCause)`
- `CantGetMetadataModified(PathAndCause)`
- `CantGetDurationSystemTimeError(SystemTimeError)`
- `DirCantCreateAll(PathAndCause)`
- `PathNotValidForPath(PathAndCause)`
- `GlobCantNew`
  - `glob: String`
  - `cause: globset::Error`
- `GlobSetCantBuild`
  - `globs: Vec<String>`
  - `cause: globset::Error`
- `FailToWatch`
  - `path: String`
  - `cause: String`
- `CantWatchPathNotFound(String)`
- `SpanInvalidStartAfterEnd`
- `SpanOutOfBounds`
- `SpanInvalidUtf8`
- `CannotDiff`
  - `path: String`
  - `base: String`
- `CannotCanonicalize(PathAndCause)`

## Associated Functions

### `sort_by_globs`

```text
pub fn sort_by_globs(
    cause: impl Display,
) -> Error
```

Creates an `Error::SortByGlobs` value from a displayable cause.

## Trait Implementations

### `Debug`

Implements [`Debug`](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for `Error`.

```text
fn fmt(
    &self,
    f: &mut Formatter<'_>,
) -> Result
```

Formats the value using the given formatter.

### `Display`

Implements [`Display`](https://doc.rust-lang.org/nightly/core/fmt/trait.Display.html) for `Error`.

```text
fn fmt(
    &self,
    __derive_more_f: &mut Formatter<'_>,
) -> Result
```

Formats the value using the given formatter.

### `std::error::Error`

Implements [`std::error::Error`](https://doc.rust-lang.org/nightly/core/error/trait.Error.html) for `Error`.

```text
fn source(
    &self,
) -> Option<&(dyn Error + 'static)>
```

Returns the lower-level source of this error, if any.

```text
fn description(&self) -> &str
```

Deprecated since Rust 1.42.0. Use the `Display` implementation or `to_string()` instead.

```text
fn cause(&self) -> Option<&dyn Error>
```

Deprecated since Rust 1.33.0. Use `Error::source`, which supports downcasting.

```text
fn provide<'a>(
    &'a self,
    request: &mut Request<'a>,
)
```

Nightly-only experimental API for providing type-based access to error context.

## Auto Trait Implementations

- `!RefUnwindSafe`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

### `Any`

```text
impl<T> Any for T
where
    T: 'static + ?Sized,
```

```text
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `Borrow<T>`

```text
impl<T> Borrow<T> for T
where
    T: ?Sized,
```

```text
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

```text
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
```

```text
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `From<T>`

```text
impl<T> From<T> for T
```

```text
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into<U>`

```text
impl<T, U> Into<U> for T
where
    U: From<T>,
```

```text
fn into(self) -> U
```

Calls `U::from(self)`.

### `ToString`

```text
impl<T> ToString for T
where
    T: Display + ?Sized,
```

```text
fn to_string(&self) -> String
```

Converts the given value to a `String`.

### `TryFrom<U>`

```text
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
```

Associated type:

```text
type Error = Infallible
```

```text
fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto<U>`

```text
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
```

Associated type:

```text
type Error = <U as TryFrom<T>>::Error
```

```text
fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
