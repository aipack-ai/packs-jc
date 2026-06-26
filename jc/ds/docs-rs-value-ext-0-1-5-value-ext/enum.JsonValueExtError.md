# JsonValueExtError

Error type for the `value_ext` crate, representing various JSON value extension errors.

## Definition

```rust
pub enum JsonValueExtError {
    Custom(String),
    PropertyNotFound(String),
    PropertyValueNotOfType {
        name: String,
        not_of_type: &'static str,
    },
    ValueNotOfType(&'static str),
    SerdeJson(serde_json::Error),
}
```

## Variants

- `Custom(String)` – a custom error message.
- `PropertyNotFound(String)` – a property was not found.
- `PropertyValueNotOfType { name: String, not_of_type: &'static str }` – a property's value was not of the expected type.
- `ValueNotOfType(&'static str)` – a value was not of the expected type.
- `SerdeJson(serde_json::Error)` – a serde_json error.

## Trait Implementations

### `impl Debug for JsonValueExtError`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Display for JsonValueExtError`

```rust
fn fmt(&self, fmt: &mut Formatter<'_>) -> Result<(), std::fmt::Error>
```

### `impl Error for JsonValueExtError`

```rust
fn source(&self) -> Option<&(dyn Error + 'static)>
```

(deprecated) `fn description(&self) -> &str`  
(deprecated) `fn cause(&self) -> Option<&dyn Error>`  
(experimental) `fn provide<'a>(&'a self, request: &mut Request<'a>)`

### `impl From<serde_json::Error> for JsonValueExtError`

```rust
fn from(value: serde_json::Error) -> Self
```

## Auto Trait Implementations

- `!RefUnwindSafe` – not safe for `RefUnwindSafe`.
- `!UnwindSafe` – not safe for `UnwindSafe`.
- `Freeze` – implemented.
- `Send` – implemented.
- `Sync` – implemented.
- `Unpin` – implemented.
- `UnsafeUnpin` – implemented.

## Blanket Implementations

### `impl<T> Any for T where T: 'static + ?Sized`

```rust
fn type_id(&self) -> TypeId
```

### `impl<T> Borrow<T> for T where T: ?Sized`

```rust
fn borrow(&self) -> &T
```

### `impl<T> BorrowMut<T> for T where T: ?Sized`

```rust
fn borrow_mut(&mut self) -> &mut T
```

### `impl<T> From<T> for T`

```rust
fn from(t: T) -> T
```

### `impl<T, U> Into<U> for T where U: From<T>`

```rust
fn into(self) -> U
```

### `impl<T> ToString for T where T: Display + ?Sized`

```rust
fn to_string(&self) -> String
```

### `impl<T, U> TryFrom<U> for T where U: Into<T>`

- Associated type: `type Error = Infallible`

```rust
fn try_from(value: U) -> Result<T, Self::Error>
```

### `impl<T, U> TryInto<U> for T where U: TryFrom<T>`

- Associated type: `type Error = U::Error`

```rust
fn try_into(self) -> Result<U, Self::Error>
```
