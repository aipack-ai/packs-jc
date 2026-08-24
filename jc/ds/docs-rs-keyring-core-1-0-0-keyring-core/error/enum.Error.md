# `keyring_core::error::Error` - Rust

## Module

[`keyring_core::error`](index.html)

## Enum `Error`

Source: [`error.rs`](../../src/keyring_core/error.rs.html#26-74)

```rust
#[non_exhaustive]
pub enum Error {
    PlatformFailure(PlatformError),
    NoStorageAccess(PlatformError),
    NoEntry,
    BadEncoding(Vec<u8>),
    BadDataFormat(Vec<u8>, PlatformError),
    BadStoreFormat(String),
    TooLong(String, u32),
    Invalid(String, String),
    Ambiguous(Vec<Entry>),
    NoDefaultStore,
    NotSupportedByStore(String),
}
```

Each variant of the `Error` enum provides a summary of the error. More details, if relevant, are contained in the associated value, which may be platform-specific.

This enum is non-exhaustive so that more values can be added without a SemVer break. Clients should always provide default handling for variants they do not understand.

## Variants

### `PlatformFailure(PlatformError)`

Indicates runtime failure in the underlying platform storage system. Details can be retrieved from the attached platform error.

### `NoStorageAccess(PlatformError)`

Indicates that the underlying secure storage holding saved items could not be accessed. This is typically caused by platform access rules, such as a locked credential store. The underlying platform error usually provides the reason.

### `NoEntry`

Indicates that there is no underlying credential entry in the platform. Either the entry was never set or it was deleted.

### `BadEncoding(Vec<u8>)`

Indicates that the retrieved password blob was not a UTF-8 string. The underlying bytes are available in the attached value.

### `BadDataFormat(Vec<u8>, PlatformError)`

Indicates that the retrieved secret blob was not formatted as expected by the store. Some stores perform encryption or other transformations when storing secrets. The raw retrieved data and an underlying error describing what went wrong are attached.

### `BadStoreFormat(String)`

Indicates that the store itself was not formatted as expected. The attached string describes the problem.

### `TooLong(String, u32)`

Indicates that one of the entry's credential attributes exceeded a length limit in the underlying platform. The attached values provide the attribute name and the platform length limit that was exceeded.

### `Invalid(String, String)`

Indicates that one of the parameters passed to the operation was invalid. The attached values identify the parameter and describe the problem.

### `Ambiguous(Vec<Entry>)`

Indicates that more than one credential in the store matches the entry. The attached vector contains entries wrapping the matching credentials.

### `NoDefaultStore`

Indicates that there was no default credential builder to use. The client must set one before creating entries.

### `NotSupportedByStore(String)`

Indicates that the requested operation is unsupported by the store handling the request. The attached string describes why the operation could not be performed.

## Trait Implementations

### `Debug`

```rust
impl Debug for Error {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

### `Display`

```rust
impl Display for Error {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

### `std::error::Error`

```rust
impl std::error::Error for Error {
    fn source(&self) -> Option<&(dyn std::error::Error + 'static)>;

    #[deprecated]
    fn description(&self) -> &str;

    #[deprecated]
    fn cause(&self) -> Option<&dyn std::error::Error>;

    fn provide<'a>(&'a self, request: &mut Request<'a>);
}
```

- `source` returns the lower-level source of the error, if any.
- `description` is deprecated since Rust 1.42.0; use the `Display` implementation or `to_string()`.
- `cause` is deprecated since Rust 1.33.0; use `source`, which supports downcasting.
- `provide` is a nightly-only experimental API enabled by `error_generic_member_access`.

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

```rust
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> TypeId;
}
```

### `Borrow<T>`

```rust
impl<T: ?Sized> Borrow<T> for T {
    fn borrow(&self) -> &T;
}
```

### `BorrowMut<T>`

```rust
impl<T: ?Sized> BorrowMut<T> for T {
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `From<T>`

```rust
impl<T> From<T> for T {
    fn from(t: T) -> T;
}
```

Returns the argument unchanged.

### `Into<U>`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

Calls `U::from(self)`.

### `ToString`

```rust
impl<T> ToString for T
where
    T: Display + ?Sized,
{
    fn to_string(&self) -> String;
}
```

Converts the given value to a `String`.

### `TryFrom<U>`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

Performs the conversion.

### `TryInto<U>`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = U::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```

Performs the conversion.
