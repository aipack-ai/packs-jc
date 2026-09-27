# Error

`markex::Error` is the crate’s error type.

## Definition

```rust
pub enum Error {
    Custom(String),
}
```

## Variants

- `Custom(String)` — a custom error message.

## Associated Functions

```rust
pub fn custom_from_err(err: impl std::error::Error) -> Self
pub fn custom(val: impl Into<String>) -> Self
```

## Trait Implementations

### `Debug`

```rust
fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result
```

Formats the error using the `Debug` formatter.

### `Display`

```rust
fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result
```

Formats the error using the `Display` formatter.

### `std::error::Error`

```rust
fn source(&self) -> Option<&(dyn std::error::Error + 'static)>
fn description(&self) -> &str
fn cause(&self) -> Option<&dyn std::error::Error>
fn provide<'a>(&'a self, request: &mut std::error::Request<'a>)
```

- `description` is deprecated since Rust 1.42.0; use `Display` or `to_string()`.
- `cause` is deprecated since Rust 1.33.0; use `source`.
- `provide` is a nightly-only experimental API (`error_generic_member_access`).

### `From` Implementations

```rust
impl From<&String> for Error {
    fn from(value: &String) -> Self;
}

impl From<&str> for Error {
    fn from(value: &str) -> Self;
}

impl From<String> for Error {
    fn from(value: String) -> Self;
}
```

## Auto Trait Implementations

`Error` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

### `Any`

```rust
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> TypeId;
}
```

### `Borrow`

```rust
impl<T: ?Sized> Borrow<T> for T {
    fn borrow(&self) -> &T;
}
```

### `BorrowMut`

```rust
impl<T: ?Sized> BorrowMut<T> for T {
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `From`

```rust
impl<T> From<T> for T {
    fn from(value: T) -> T;
}
```

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

### `ToString`

```rust
impl<T: std::fmt::Display + ?Sized> ToString for T {
    fn to_string(&self) -> String;
}
```

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = std::convert::Infallible;

    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```
