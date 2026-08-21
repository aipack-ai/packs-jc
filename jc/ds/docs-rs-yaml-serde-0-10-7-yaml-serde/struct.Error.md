# `yaml_serde::Error`

Version 0.10.7

## Definition

```rust
pub struct Error(/* private fields */);
```

An error that happened while serializing or deserializing YAML data.

## Methods

### `location`

```rust
pub fn location(&self) -> Option<Location>;
```

Returns the [`Location`] from the error, if one exists.

Not all types of errors have a location, so this method can return `None`.

#### Example

```rust
// The `@` character as the first character makes this invalid YAML.
let invalid_yaml: Result<(), yaml_serde::Error> =
    yaml_serde::from_str("@invalid_yaml");

let location = invalid_yaml.unwrap_err().location().unwrap();

assert_eq!(location.line(), 1);
assert_eq!(location.column(), 1);
```

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

    #[deprecated since Rust 1.42.0]
    fn description(&self) -> &str;

    #[deprecated since Rust 1.33.0]
    fn cause(&self) -> Option<&dyn std::error::Error>;

    #[experimental]
    fn provide<'a>(&'a self, request: &mut Request<'a>);
}
```

### `serde::ser::Error`

```rust
impl serde::ser::Error for Error {
    fn custom<T: Display>(msg: T) -> Self;
}
```

Used when a [`Serialize`](https://docs.rs/serde_core/1.0.229/x86_64-unknown-linux-gnu/serde_core/ser/trait.Serialize.html) implementation encounters an error while serializing a type.

### `serde::de::Error`

```rust
impl serde::de::Error for Error {
    fn custom<T: Display>(msg: T) -> Self;

    fn invalid_type(unexp: Unexpected<'_>, exp: &dyn Expected) -> Self;

    fn invalid_value(unexp: Unexpected<'_>, exp: &dyn Expected) -> Self;

    fn invalid_length(len: usize, exp: &dyn Expected) -> Self;

    fn unknown_variant(
        variant: &str,
        expected: &'static [&'static str],
    ) -> Self;

    fn unknown_field(
        field: &str,
        expected: &'static [&'static str],
    ) -> Self;

    fn missing_field(field: &'static str) -> Self;

    fn duplicate_field(field: &'static str) -> Self;
}
```

The deserialization methods report errors such as unexpected types or values, invalid sequence or map lengths, unknown enum variants or fields, missing fields, and duplicate fields.

### `IntoDeserializer<'_, Error>` for `Value`

```rust
impl IntoDeserializer<'_, Error> for Value {
    type Deserializer = Value;

    fn into_deserializer(self) -> Self::Deserializer;
}
```

Converts a [`Value`](enum.Value.html) into a deserializer.

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
impl<T> Any for T
where
    T: 'static + ?Sized,
{
    fn type_id(&self) -> TypeId;
}
```

### `Borrow<T>`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
{
    fn borrow(&self) -> &T;
}
```

### `BorrowMut<T>`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
{
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `From<T> for T`

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
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```

Performs the conversion.
