# Enum Error (in crate htmlr)

This documentation covers the `Error` enum defined in the `htmlr` crate (version 0.1.2). The enum represents possible error conditions when manipulating HTML content.

```rust
pub enum Error {
    Custom(String),
    SelectorParse {
        selector: String,
        cause: String,
    },
}
```

## Variants

- **`Custom(String)`** — A custom error with a message string.
- **`SelectorParse`** — An error that occurs during CSS selector parsing.
  - `selector: String` — The selector string that failed to parse.
  - `cause: String` — The reason for the parse failure.

## Implementations

### `impl Error`

- `pub fn custom_from_err(err: impl Error) -> Self` — Creates a custom error from any type that implements `std::error::Error`.
- `pub fn custom(val: impl Into<String>) -> Self` — Creates a custom error from any type that can be converted into a `String`.

## Trait Implementations

### `impl Debug for Error`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### `impl Display for Error`

- `fn fmt(&self, _derive_more_f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### `impl Error for Error`

- `fn source(&self) -> Option<&(dyn Error + 'static)>` — Returns the lower-level source of this error, if any.
- `fn description(&self) -> &str` (deprecated since 1.42.0) — Use the Display impl or `to_string()`.
- `fn cause(&self) -> Option<&dyn Error>` (deprecated since 1.33.0) — Replaced by `Error::source`.
- `fn provide<'a>(&'a self, request: &mut Request<'a>)` (nightly-only experimental) — Provides type-based access to error context.

### `impl From<&String> for Error`

- `fn from(value: &String) -> Self` — Converts a `&String` into an `Error`.

### `impl From<&str> for Error`

- `fn from(value: &str) -> Self` — Converts a `&str` into an `Error`.

### `impl From<String> for Error`

- `fn from(value: String) -> Self` — Converts a `String` into an `Error`.

## Auto Trait Implementations

- `impl Freeze for Error`
- `impl RefUnwindSafe for Error`
- `impl Send for Error`
- `impl Sync for Error`
- `impl Unpin for Error`
- `impl UnsafeUnpin for Error`
- `impl UnwindSafe for Error`

## Blanket Implementations

- `impl Any for T` — `fn type_id(&self) -> TypeId`
- `impl Borrow<T> for T` — `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T` — `fn borrow_mut(&mut self) -> &mut T`
- `impl From<T> for T` — `fn from(t: T) -> T`
- `impl Into<U> for T` — `fn into(self) -> U`
- `impl ToString for T` — `fn to_string(&self) -> String`
- `impl TryFrom<U> for T` (with `type Error = Infallible`) — `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl TryInto<U> for T` (with `type Error = TryFrom::Error`) — `fn try_into(self) -> Result<U, Self::Error>`
