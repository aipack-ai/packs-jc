# Error in `yaml_serde::io`

## `yaml_serde` 0.10.7

## Struct `Error`

```rust
pub struct Error {
    /* private fields */
}
```

The error type for I/O operations of the [`Read`](../../std/io/trait.Read.html), [`Write`](trait.Write.html), [`Seek`](https://doc.rust-lang.org/nightly/core/io/seek/trait.Seek.html), and associated traits.

Errors mostly originate from the underlying operating system, but custom instances of `Error` can be created with crafted error messages and a particular value of [`ErrorKind`](https://doc.rust-lang.org/nightly/core/io/error/enum.ErrorKind.html).

## Implementations

### Associated functions and methods

#### `raw_os_error`

```rust
pub fn raw_os_error(&self) -> Option<i32>
```

Returns the OS error that this error represents, if any.

If this `Error` was constructed via `last_os_error` or `from_raw_os_error`, this function returns `Some`. Otherwise, it returns `None`.

##### Example

```rust
use std::io::{Error, ErrorKind};

fn print_os_error(err: &Error) {
    if let Some(raw_os_err) = err.raw_os_error() {
        println!("raw OS error: {raw_os_err:?}");
    } else {
        println!("Not an OS error");
    }
}

fn main() {
    print_os_error(&Error::last_os_error());
    print_os_error(&Error::new(ErrorKind::Other, "oh no!"));
}
```

#### `get_ref`

```rust
pub fn get_ref(
    &self,
) -> Option<&(dyn std::error::Error + Sync + Send + 'static)>
```

Returns a reference to the inner error wrapped by this error, if any.

If this `Error` was constructed via `new`, this function returns `Some`. Otherwise, it returns `None`.

##### Example

```rust
use std::io::{Error, ErrorKind};

fn print_error(err: &Error) {
    if let Some(inner_err) = err.get_ref() {
        println!("Inner error: {inner_err:?}");
    } else {
        println!("No inner error");
    }
}

fn main() {
    print_error(&Error::last_os_error());
    print_error(&Error::new(ErrorKind::Other, "oh no!"));
}
```

#### `get_mut`

```rust
pub fn get_mut(
    &mut self,
) -> Option<&mut (dyn std::error::Error + Sync + Send + 'static)>
```

Returns a mutable reference to the inner error wrapped by this error, if any.

If this `Error` was constructed via `new`, this function returns `Some`. Otherwise, it returns `None`.

##### Example

```rust
use std::error;
use std::fmt;
use std::io::{Error, ErrorKind};

#[derive(Debug)]
struct MyError {
    v: String,
}

impl MyError {
    fn new() -> MyError {
        MyError {
            v: "oh no!".to_string(),
        }
    }

    fn change_message(&mut self, new_message: &str) {
        self.v = new_message.to_string();
    }
}

impl error::Error for MyError {}

impl fmt::Display for MyError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "MyError: {}", self.v)
    }
}

fn change_error(mut err: Error) -> Error {
    if let Some(inner_err) = err.get_mut() {
        inner_err
            .downcast_mut::<MyError>()
            .unwrap()
            .change_message("I've been changed!");
    }

    err
}

fn print_error(err: &Error) {
    if let Some(inner_err) = err.get_ref() {
        println!("Inner error: {inner_err}");
    } else {
        println!("No inner error");
    }
}

fn main() {
    print_error(&change_error(Error::last_os_error()));
    print_error(&change_error(Error::new(
        ErrorKind::Other,
        MyError::new(),
    )));
}
```

#### `kind`

```rust
pub fn kind(&self) -> ErrorKind
```

Returns the corresponding [`ErrorKind`](https://doc.rust-lang.org/nightly/core/io/error/enum.ErrorKind.html) for this error.

This may be a value set by Rust code constructing custom I/O errors. If the I/O error originated from the operating system, the value is inferred from the system’s error encoding.

##### Example

```rust
use std::io::{Error, ErrorKind};

fn print_error(err: Error) {
    println!("{:?}", err.kind());
}

fn main() {
    print_error(Error::last_os_error());
    print_error(Error::new(ErrorKind::AddrInUse, "oh no!"));
}
```

### Constructors

#### `last_os_error`

```rust
pub fn last_os_error() -> Error
```

Returns an error representing the last OS error that occurred.

This function reads the value of `errno` for the target platform, or `GetLastError` on Windows, and returns a corresponding `Error`.

It should be called immediately after a platform function because other standard-library functions may call platform functions and reset the error value.

##### Example

```rust
use std::io::Error;

let os_error = Error::last_os_error();
println!("last OS error: {os_error:?}");
```

#### `from_raw_os_error`

```rust
pub fn from_raw_os_error(code: i32) -> Error
```

Creates a new `Error` from a particular OS error code.

##### Linux example

```rust
use std::io;

let error = io::Error::from_raw_os_error(22);
assert_eq!(error.kind(), io::ErrorKind::InvalidInput);
```

##### Windows example

```rust
use std::io;

let error = io::Error::from_raw_os_error(10022);
assert_eq!(error.kind(), io::ErrorKind::InvalidInput);
```

#### `new`

```rust
pub fn new<E>(kind: ErrorKind, error: E) -> Error
where
    E: Into<Box<dyn std::error::Error + Sync + Send>>,
```

Creates a new I/O error from a known error kind and an arbitrary error payload.

The payload is contained in the resulting `Error`. This function allocates memory on the heap. If no additional payload is required, use the `From<ErrorKind>` conversion instead.

##### Example

```rust
use std::io::{Error, ErrorKind};

let custom_error = Error::new(ErrorKind::Other, "oh no!");
let custom_error2 = Error::new(ErrorKind::Interrupted, custom_error);
let eof_error = Error::from(ErrorKind::UnexpectedEof);
```

#### `other`

```rust
pub fn other<E>(error: E) -> Error
where
    E: Into<Box<dyn std::error::Error + Sync + Send>>,
```

Creates a new I/O error from an arbitrary error payload.

This is a shortcut for `Error::new(ErrorKind::Other, error)`.

##### Example

```rust
use std::io::Error;

let custom_error = Error::other("oh no!");
let custom_error2 = Error::other(custom_error);
```

#### `into_inner`

```rust
pub fn into_inner(
    self,
) -> Option<Box<dyn std::error::Error + Sync + Send>>
```

Consumes the `Error` and returns its inner error, if any.

If this `Error` was constructed via `new` or `other`, this function returns `Some`. Otherwise, it returns `None`.

##### Example

```rust
use std::io::{Error, ErrorKind};

fn print_error(err: Error) {
    if let Some(inner_err) = err.into_inner() {
        println!("Inner error: {inner_err}");
    } else {
        println!("No inner error");
    }
}

fn main() {
    print_error(Error::last_os_error());
    print_error(Error::new(ErrorKind::Other, "oh no!"));
}
```

#### `downcast`

```rust
pub fn downcast<E>(self) -> Result<E, Error>
where
    E: std::error::Error + Send + Sync + 'static,
```

Attempts to downcast the custom boxed error to `E`.

If this `Error` contains a custom boxed error of type `E`, the method returns `Ok`. Otherwise, it returns `Err`.

This is a convenience method for calling `Box::downcast` on the custom boxed error returned by `Error::into_inner`.

##### Example

```rust
use std::error::Error;
use std::fmt;
use std::io;

#[derive(Debug)]
enum E {
    Io(io::Error),
    SomeOtherVariant,
}

impl fmt::Display for E {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{self:?}")
    }
}

impl Error for E {}

impl From<io::Error> for E {
    fn from(err: io::Error) -> E {
        err.downcast::<E>().unwrap_or_else(E::Io)
    }
}

impl From<E> for io::Error {
    fn from(err: E) -> io::Error {
        match err {
            E::Io(io_error) => io_error,
            e => io::Error::new(io::ErrorKind::Other, e),
        }
    }
}

fn main() {
    let e = E::SomeOtherVariant;

    let io_error = io::Error::from(e);
    let e = E::from(io_error);
    assert!(matches!(e, E::SomeOtherVariant));

    let io_error = io::Error::from(io::ErrorKind::AlreadyExists);
    let e = E::from(io_error);
    let io_error = io::Error::from(e);

    assert_eq!(io_error.kind(), io::ErrorKind::AlreadyExists);
    assert!(io_error.get_ref().is_none());
    assert!(io_error.raw_os_error().is_none());
}
```

## Trait implementations

### `Debug`

```rust
impl Debug for Error
```

```rust
fn fmt(
    &self,
    f: &mut std::fmt::Formatter<'_>,
) -> Result<(), std::fmt::Error>
```

Formats the value using the given formatter.

### `Display`

```rust
impl Display for Error
```

```rust
fn fmt(
    &self,
    fmt: &mut std::fmt::Formatter<'_>,
) -> Result<(), std::fmt::Error>
```

Formats the value using the given formatter.

### `std::error::Error`

```rust
impl std::error::Error for Error
```

```rust
fn cause(&self) -> Option<&dyn std::error::Error>
```

Deprecated since Rust 1.33.0. Use `source`, which supports downcasting.

```rust
fn source(&self) -> Option<&(dyn std::error::Error + 'static)>
```

Returns the lower-level source of this error, if any.

```rust
fn description(&self) -> &str
```

Deprecated since Rust 1.42.0. Use the `Display` implementation or `to_string`.

```rust
fn provide<'a>(
    &'a self,
    request: &mut std::error::Request<'a>,
)
```

Nightly-only experimental API: `error_generic_member_access`.

Provides type-based access to context intended for error reports.

### `From<ErrorKind>`

```rust
impl From<ErrorKind> for Error
```

```rust
fn from(kind: ErrorKind) -> Error
```

Converts an `ErrorKind` into an `Error`.

This conversion creates a new error with a simple representation of the error kind.

##### Example

```rust
use std::io::{Error, ErrorKind};

let not_found = ErrorKind::NotFound;
let error = Error::from(not_found);

assert_eq!("entity not found", format!("{error}"));
```

### `From<IntoInnerError<W>>`

```rust
impl<W> From<std::io::IntoInnerError<W>> for Error
```

```rust
fn from(
    iie: std::io::IntoInnerError<W>,
) -> Error
```

Converts an `IntoInnerError<W>` into an `Error`.

### `From<NulError>`

Available when global allocation, reference counting, and synchronization support are enabled.

```rust
impl From<std::ffi::NulError> for Error
```

```rust
fn from(_: std::ffi::NulError) -> Error
```

Converts a `NulError` into an `Error`.

### `From<TryLockError>`

```rust
impl From<std::fs::TryLockError> for Error
```

```rust
fn from(err: std::fs::TryLockError) -> Error
```

Converts a `TryLockError` into an `Error`.

### `From<TryReserveError>`

```rust
impl From<std::collections::TryReserveError> for Error
```

```rust
fn from(_: std::collections::TryReserveError) -> Error
```

Converts a `TryReserveError` into an error with `ErrorKind::OutOfMemory`.

`TryReserveError` is not available as the error source, although this may change in the future.

## Auto trait implementations

- `!RefUnwindSafe`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket implementations

### `Any`

```rust
impl<T> Any for T
where
    T: 'static + ?Sized,
```

```rust
fn type_id(&self) -> std::any::TypeId
```

Gets the `TypeId` of `self`.

### `Borrow<T>`

```rust
impl<T, U> Borrow<T> for U
where
    T: ?Sized,
```

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

```rust
impl<T, U> BorrowMut<T> for U
where
    T: ?Sized,
```

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `From<T> for T`

```rust
impl<T> From<T> for T
```

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into<U>`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
```

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### `ToString`

```rust
impl<T> ToString for T
where
    T: Display + ?Sized,
```

```rust
fn to_string(&self) -> String
```

Converts the given value to a `String`.

### `TryFrom<U>`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
```

```rust
type Error = std::convert::Infallible;
```

The type returned in the event of a conversion error.

```rust
fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto<U>`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
```

```rust
type Error = <U as TryFrom<T>>::Error;
```

The type returned in the event of a conversion error.

```rust
fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
