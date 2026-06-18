# `Error` (enum)

**Crate:** `html_helpers` 0.1.0

**Source:** [error.rs#L6-L13](../src/html_helpers/error.rs.html#6-13)

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

- **`Custom(String)`** - A custom error message.
- **`SelectorParse`** - An error occurring during CSS selector parsing.
  - `selector: String` - The selector string that failed to parse.
  - `cause: String` - The cause of the parsing failure.

## Associated Functions

- **`pub fn custom_from_err(err: impl Error) -> Self`** (source: [error.rs#L19-L21](../src/html_helpers/error.rs.html#19-21))  
  Creates a custom error from any type that implements `std::error::Error`.

- **`pub fn custom(val: impl Into<String>) -> Self`** (source: [error.rs#L24-L26](../src/html_helpers/error.rs.html#24-26))  
  Creates a custom error from any type that can be converted into a `String`.

## Trait Implementations

### `impl Debug for Error`

- **`fn fmt(&self, f: &mut Formatter<'_>) -> Result`** (source: [error.rs#L5](../src/html_helpers/error.rs.html#5))  
  Formats the value using the given formatter.

### `impl Display for Error`

- **`fn fmt(&self, __derive_more_f: &mut Formatter<'_>) -> Result`** (source: [error.rs#L5](../src/html_helpers/error.rs.html#5))  
  Formats the value using the given formatter.

### `impl Error for Error`

- **`fn source(&self) -> Option<&(dyn Error + 'static)>`** (source: [error.rs#L33](../src/html_helpers/error.rs.html#33))  
  Returns the lower-level source of this error, if any.
- **`fn description(&self) -> &str`** (deprecated)  
  (Deprecated since 1.42.0; use the Display impl or to_string())
- **`fn cause(&self) -> Option<&dyn Error>`** (deprecated)  
  (Deprecated since 1.33.0; replaced by Error::source)
- **`fn provide<'a>(&'a self, request: &mut Request<'a>)`** (nightly)  
  Provides type-based access to context intended for error reports.

### `impl From<&String> for Error`

- **`fn from(value: &String) -> Self`** (source: [error.rs#L5](../src/html_helpers/error.rs.html#5))  
  Converts to this type from the input type.

### `impl From<&str> for Error`

- **`fn from(value: &str) -> Self`** (source: [error.rs#L5](../src/html_helpers/error.rs.html#5))  
  Converts to this type from the input type.

### `impl From<String> for Error`

- **`fn from(value: String) -> Self`** (source: [error.rs#L5](../src/html_helpers/error.rs.html#5))  
  Converts to this type from the input type.

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- **`Any`** (where T: 'static + ?Sized)
  - `fn type_id(&self) -> TypeId`
- **`Borrow<T>`** (where T: ?Sized)
  - `fn borrow(&self) -> &T`
- **`BorrowMut<T>`** (where T: ?Sized)
  - `fn borrow_mut(&mut self) -> &mut T`
- **`From<T>`** (where T: ?Sized)
  - `fn from(t: T) -> T`
- **`Into<U>`** (where U: From<T>)
  - `fn into(self) -> U`
- **`ToString`** (where T: Display + ?Sized)
  - `fn to_string(&self) -> String`
- **`TryFrom<U>`** (where U: Into<T>)
  - type `Error` = `Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- **`TryInto<U>`** (where U: TryFrom<T>)
  - type `Error` = `<U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
