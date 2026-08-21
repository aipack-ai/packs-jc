# `yaml_serde::Number`

Version `0.10.7`

Represents a YAML number, whether integer or floating point.

```rust
pub struct Number {
    /* private fields */
}
```

## Inherent methods

### Integer and floating-point checks

```rust
impl Number {
    pub fn is_i64(&self) -> bool;
    pub fn is_u64(&self) -> bool;
    pub fn is_f64(&self) -> bool;
    pub fn is_nan(&self) -> bool;
    pub fn is_infinite(&self) -> bool;
    pub fn is_finite(&self) -> bool;
}
```

- `is_i64` returns `true` if the number is an integer between `i64::MIN` and `i64::MAX`. If it returns `true`, `as_i64` is guaranteed to return the integer value.
- `is_u64` returns `true` if the number is an integer between zero and `u64::MAX`. If it returns `true`, `as_u64` is guaranteed to return the integer value.
- `is_f64` returns `true` if the number can be represented as an `f64`. Currently, this is equivalent to both `is_i64` and `is_u64` returning `false`.
- `is_nan` returns `true` if the number is NaN.
- `is_infinite` returns `true` if the number is positive or negative infinity.
- `is_finite` returns `true` if the number is neither infinite nor NaN.

### Numeric conversions

```rust
impl Number {
    pub fn as_i64(&self) -> Option<i64>;
    pub fn as_u64(&self) -> Option<u64>;
    pub fn as_f64(&self) -> Option<f64>;
}
```

- `as_i64` returns the number as an `i64` if it is an integer in the `i64` range.
- `as_u64` returns the number as a `u64` if it is a non-negative integer in the `u64` range.
- `as_f64` returns the number as an `f64` when possible. YAML special values such as `.inf`, `-.inf`, and `.nan` are supported.

## Examples

```rust
let big = i64::MAX as u64 + 10;
let value: yaml_serde::Value = yaml_serde::from_str(
    r#"
a: 64
b: 9223372036854775817
c: 256.0
"#,
)?;

assert!(value["a"].is_i64());
assert!(!value["b"].is_i64());
assert!(!value["c"].is_i64());

assert_eq!(value["a"].as_i64(), Some(64));
assert_eq!(value["b"].as_i64(), None);
assert_eq!(value["c"].as_i64(), None);
```

```rust
let value: yaml_serde::Value = yaml_serde::from_str(
    r#"
a: 64
b: -64
c: 256.0
"#,
)?;

assert!(value["a"].is_u64());
assert!(!value["b"].is_u64());
assert!(!value["c"].is_u64());

assert_eq!(value["a"].as_u64(), Some(64));
assert_eq!(value["b"].as_u64(), None);
assert_eq!(value["c"].as_u64(), None);
```

```rust
let value: yaml_serde::Value = yaml_serde::from_str(
    r#"
a: 256.0
b: 64
c: -64
"#,
)?;

assert!(value["a"].is_f64());
assert!(!value["b"].is_f64());
assert!(!value["c"].is_f64());

assert_eq!(value["a"].as_f64(), Some(256.0));
assert_eq!(value["b"].as_f64(), Some(64.0));
assert_eq!(value["c"].as_f64(), Some(-64.0));
```

```rust
let value: yaml_serde::Value = yaml_serde::from_str(".inf")?;
assert_eq!(value.as_f64(), Some(f64::INFINITY));

let value: yaml_serde::Value = yaml_serde::from_str("-.inf")?;
assert_eq!(value.as_f64(), Some(f64::NEG_INFINITY));

let value: yaml_serde::Value = yaml_serde::from_str(".nan")?;
assert!(value.as_f64().unwrap().is_nan());
```

```rust
assert!(!Number::from(256.0).is_nan());
assert!(Number::from(f64::NAN).is_nan());
assert!(!Number::from(f64::INFINITY).is_nan());
assert!(!Number::from(f64::NEG_INFINITY).is_nan());
assert!(!Number::from(1).is_nan());

assert!(!Number::from(256.0).is_infinite());
assert!(!Number::from(f64::NAN).is_infinite());
assert!(Number::from(f64::INFINITY).is_infinite());
assert!(Number::from(f64::NEG_INFINITY).is_infinite());
assert!(!Number::from(1).is_infinite());

assert!(Number::from(256.0).is_finite());
assert!(!Number::from(f64::NAN).is_finite());
assert!(!Number::from(f64::INFINITY).is_finite());
assert!(!Number::from(f64::NEG_INFINITY).is_finite());
assert!(Number::from(1).is_finite());
```

## Trait implementations

### `Clone`

```rust
impl Clone for Number {
    fn clone(&self) -> Number;
    fn clone_from(&mut self, source: &Self);
}
```

### `Debug`

```rust
impl Debug for Number {
    fn fmt(
        &self,
        formatter: &mut Formatter<'_>,
    ) -> std::fmt::Result;
}
```

### `Display`

```rust
impl Display for Number {
    fn fmt(
        &self,
        formatter: &mut Formatter<'_>,
    ) -> std::fmt::Result;
}
```

### `Deserialize`

```rust
impl<'de> Deserialize<'de> for Number {
    fn deserialize<D>(
        deserializer: D,
    ) -> Result<Number, D::Error>
    where
        D: Deserializer<'de>;
}
```

### `Deserializer` for `Number`

```rust
impl<'de> Deserializer<'de> for Number {
    type Error = yaml_serde::Error;

    fn deserialize_any<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_bool<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i8<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i16<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i32<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i64<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i128<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u8<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u16<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u32<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u64<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u128<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_f32<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_f64<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_char<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_str<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_string<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_bytes<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_byte_buf<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_option<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_unit<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_unit_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_newtype_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_seq<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_tuple<V>(
        self,
        len: usize,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_tuple_struct<V>(
        self,
        name: &'static str,
        len: usize,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_map<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_struct<V>(
        self,
        name: &'static str,
        fields: &'static [&'static str],
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_enum<V>(
        self,
        name: &'static str,
        variants: &'static [&'static str],
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_identifier<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_ignored_any<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn is_human_readable(&self) -> bool;
}
```

### `Deserializer` for `&Number`

`&Number` implements the same `Deserializer<'de>` methods as `Number`:

```rust
impl<'de> Deserializer<'de> for &Number {
    type Error = yaml_serde::Error;

    fn deserialize_any<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_bool<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i8<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i16<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i32<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i64<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i128<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u8<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u16<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u32<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u64<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u128<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_f32<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_f64<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_char<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_str<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_string<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_bytes<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_byte_buf<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_option<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_unit<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_unit_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_newtype_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_seq<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_tuple<V>(
        self,
        len: usize,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_tuple_struct<V>(
        self,
        name: &'static str,
        len: usize,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_map<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_struct<V>(
        self,
        name: &'static str,
        fields: &'static [&'static str],
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_enum<V>(
        self,
        name: &'static str,
        variants: &'static [&'static str],
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_identifier<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn deserialize_ignored_any<V>(
        self,
        visitor: V,
    ) -> Result<Value, Self::Error>
    where
        V: Visitor<'de>;

    fn is_human_readable(&self) -> bool;
}
```

### `From`

`Number` implements `From<T>` for all supported primitive numeric types:

```rust
impl From<f32> for Number {
    fn from(value: f32) -> Self;
}

impl From<f64> for Number {
    fn from(value: f64) -> Self;
}

impl From<i8> for Number {
    fn from(value: i8) -> Self;
}

impl From<i16> for Number {
    fn from(value: i16) -> Self;
}

impl From<i32> for Number {
    fn from(value: i32) -> Self;
}

impl From<i64> for Number {
    fn from(value: i64) -> Self;
}

impl From<isize> for Number {
    fn from(value: isize) -> Self;
}

impl From<u8> for Number {
    fn from(value: u8) -> Self;
}

impl From<u16> for Number {
    fn from(value: u16) -> Self;
}

impl From<u32> for Number {
    fn from(value: u32) -> Self;
}

impl From<u64> for Number {
    fn from(value: u64) -> Self;
}

impl From<usize> for Number {
    fn from(value: usize) -> Self;
}
```

### `FromStr`

```rust
impl FromStr for Number {
    type Err = yaml_serde::Error;

    fn from_str(repr: &str) -> Result<Self, Self::Err>;
}
```

### `Hash`

```rust
impl Hash for Number {
    fn hash<H>(&self, state: &mut H)
    where
        H: Hasher;

    fn hash_slice<H>(
        data: &[Self],
        state: &mut H,
    )
    where
        H: Hasher,
        Self: Sized;
}
```

### `PartialEq`

```rust
impl PartialEq for Number {
    fn eq(&self, other: &Number) -> bool;
    fn ne(&self, other: &Number) -> bool;
}
```

### `PartialOrd`

```rust
impl PartialOrd for Number {
    fn partial_cmp(&self, other: &Number) -> Option<Ordering>;
    fn lt(&self, other: &Number) -> bool;
    fn le(&self, other: &Number) -> bool;
    fn gt(&self, other: &Number) -> bool;
    fn ge(&self, other: &Number) -> bool;
}
```

### `Serialize`

```rust
impl Serialize for Number {
    fn serialize<S>(
        &self,
        serializer: S,
    ) -> Result<S::Ok, S::Error>
    where
        S: Serializer;
}
```

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for Number {}
```

## Auto traits

`Number` automatically implements:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

`Number` receives the following blanket implementations where their trait bounds are satisfied:

- `Any`
  - `fn type_id(&self) -> TypeId`
- `Borrow<T>`
  - `fn borrow(&self) -> &T`
- `BorrowMut<T>`
  - `fn borrow_mut(&mut self) -> &mut T`
- `CloneToUninit`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `DeserializeOwned`
- `From<T>`
  - `fn from(value: T) -> T`
- `Into<U>`
  - `fn into(self) -> U`
- `ToOwned`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `ToString`
  - `fn to_string(&self) -> String`
- `TryFrom<U>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `TryInto<U>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
