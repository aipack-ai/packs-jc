# Error

`zmapr::Error` is the crate’s error enum. Fallible crate operations use [`Result`](type.Result.html), an alias for `core::result::Result`.

`Error` implements `std::error::Error`. Its `Display` output uses the enum’s debug representation. String values convert to `Error::Custom`; dedicated variants and `From` implementations represent errors from external operations.

## Enum definition

```rust
pub enum Error {
    Custom(String),
    InvalidConfiguration(String),
    Unsupported(String),
    MissingTag(String),
    MalformedResponse(String),
    TaskJoin(String),
    InvalidCache(String),
    MalformedState(String),
    Io(std::io::Error),
    SimpleFs(simple_fs::error::Error),
    Reqwest(reqwest::Error),
    InvalidHeaderName(http::header::InvalidHeaderName),
    InvalidHeaderValue(http::header::InvalidHeaderValue),
}
```

## Variants

### Application and workflow errors

- `Custom(String)` — An application-defined error message.
- `InvalidConfiguration(String)` — The process configuration is invalid.
- `Unsupported(String)` — The requested operation or input is unsupported.
- `MissingTag(String)` — A required tag is missing from a response.
- `MalformedResponse(String)` — A response does not match the expected format.
- `TaskJoin(String)` — A background task failed to complete successfully.
- `InvalidCache(String)` — Cache content is invalid or cannot be used.
- `MalformedState(String)` — A state value does not match the expected format.

Use `Error::Custom` for application-defined messages. The `custom` function constructs one from a string-convertible value. The `custom_from_err` function stores another error’s display text; it does not retain the original error type.

### External errors

These variants retain the underlying error value, allowing callers to match on the specific failure category.

- `Io(std::io::Error)` — An I/O operation failed.
- `SimpleFs(simple_fs::error::Error)` — A `simple_fs` operation failed.
- `Reqwest(reqwest::Error)` — An HTTP request failed.
- `InvalidHeaderName(http::header::InvalidHeaderName)` — An HTTP header name is invalid.
- `InvalidHeaderValue(http::header::InvalidHeaderValue)` — An HTTP header value is invalid.

## Associated functions

```rust
pub fn custom(val: impl Into<String>) -> Self
```

Creates a custom error from a value convertible to `String`.

```rust
pub fn custom_from_err(err: impl std::error::Error) -> Self
```

Creates a custom error containing the error’s display text.

## Trait implementations

### `Debug`

`Error` implements `std::fmt::Debug`.

```rust
fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result
```

### `Display`

`Error` implements `std::fmt::Display`.

```rust
fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result
```

The display representation uses the enum’s debug representation.

### `std::error::Error`

`Error` implements `std::error::Error` and provides the standard trait methods:

```rust
fn source(&self) -> Option<&(dyn std::error::Error + 'static)>
fn description(&self) -> &str
fn cause(&self) -> Option<&dyn std::error::Error>
fn provide<'a>(&'a self, request: &mut std::error::Request<'a>)
```

`description` and `cause` are deprecated standard-library methods. `provide` is a nightly-only experimental API.

### `From` conversions

The following conversions are implemented:

- `From<&String> for Error`
- `From<&str> for Error`
- `From<String> for Error`
- `From<std::io::Error> for Error`
- `From<simple_fs::error::Error> for Error`
- `From<reqwest::Error> for Error`
- `From<http::header::InvalidHeaderName> for Error`
- `From<http::header::InvalidHeaderValue> for Error`

Each implementation provides the standard conversion function:

```rust
fn from(value: T) -> Self
```

For the borrowed string conversions, the parameter types are `&String` and `&str`, respectively.

## Auto traits

The documented auto-trait implementations are:

- `Send`
- `Sync`
- `Unpin`
- `Freeze`
- `UnsafeUnpin`

The documented negative implementations are:

- `!RefUnwindSafe`
- `!UnwindSafe`
