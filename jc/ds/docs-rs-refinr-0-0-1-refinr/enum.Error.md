# Error

`refinr` 0.0.1’s error type groups application and workflow failures with errors from external operations.

## Type definition

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

Fallible crate operations use `refinr::Result`, an alias for `core::result::Result`.

## Application and workflow errors

- `Error::Custom(String)` stores an application-defined error message.
- `Error::InvalidConfiguration(String)` reports invalid process configuration.
- `Error::Unsupported(String)` reports an unsupported operation or input.
- `Error::MissingTag(String)` reports a required tag missing from a response.
- `Error::MalformedResponse(String)` reports a response that does not match the expected format.
- `Error::TaskJoin(String)` reports a background task that did not complete successfully.
- `Error::InvalidCache(String)` reports cache content that is invalid or unusable.
- `Error::MalformedState(String)` reports state that does not match the expected format.

## External errors

These variants retain their respective error values, allowing callers to match on the specific failure category:

- `Error::Io(std::io::Error)` represents an I/O failure.
- `Error::SimpleFs(simple_fs::error::Error)` represents a `simple_fs` failure.
- `Error::Reqwest(reqwest::Error)` represents an HTTP request failure.
- `Error::InvalidHeaderName(http::header::InvalidHeaderName)` represents an invalid HTTP header name.
- `Error::InvalidHeaderValue(http::header::InvalidHeaderValue)` represents an invalid HTTP header value.

## Associated functions

```rust
impl Error {
    pub fn custom(val: impl Into<String>) -> Self;
    pub fn custom_from_err(err: impl std::error::Error) -> Self;
}
```

- `Error::custom` constructs a `Custom` error from a value convertible to `String`.
- `Error::custom_from_err` constructs a `Custom` error containing another error’s display text. The original error type is not retained.

## Trait implementations

`Error` implements `Debug`, `Display`, and `std::error::Error`. Its `Display` output uses the enum’s debug representation.

The standard `Error` trait provides these methods:

```rust
fn source(&self) -> Option<&(dyn std::error::Error + 'static)>;
fn description(&self) -> &str;
fn cause(&self) -> Option<&dyn std::error::Error>;
fn provide<'a>(&'a self, request: &mut std::error::Request<'a>);
```

`description` and `cause` are deprecated. `provide` is a nightly-only experimental API.

## Conversions

`Error` implements `From` for strings and for each external error type represented by a dedicated variant:

```rust
impl From<String> for Error;
impl From<&String> for Error;
impl From<&str> for Error;

impl From<std::io::Error> for Error;
impl From<simple_fs::error::Error> for Error;
impl From<reqwest::Error> for Error;
impl From<http::header::InvalidHeaderName> for Error;
impl From<http::header::InvalidHeaderValue> for Error;
```

String conversions produce a `Custom` error. External error conversions produce the corresponding external-error variant.
