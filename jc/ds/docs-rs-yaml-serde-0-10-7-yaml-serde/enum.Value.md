# `yaml_serde::Value`

Version `0.10.7`

`Value` represents any valid YAML value.

## Definition

```rust
pub enum Value {
    Null,
    Bool(bool),
    Number(Number),
    String(String),
    Sequence(Sequence),
    Mapping(Mapping),
    Tagged(Box<TaggedValue>),
}
```

## Variants

- `Null` — Represents a YAML null value.
- `Bool(bool)` — Represents a YAML boolean.
- `Number(Number)` — Represents a YAML numerical value, whether integer or floating point.
- `String(String)` — Represents a YAML string.
- `Sequence(Sequence)` — Represents a YAML sequence whose elements are `yaml_serde::Value`.
- `Mapping(Mapping)` — Represents a YAML mapping whose keys and values are both `yaml_serde::Value`.
- `Tagged(Box<TaggedValue>)` — Represents YAML’s `!Tag` syntax, used for enums.

## Methods

### `get`

```rust
pub fn get<I: Index>(&self, index: I) -> Option<&Value>
```

Indexes into a YAML sequence or mapping.

A string index accesses a mapping value, while a `usize` index accesses a sequence element. Returns `None` when the index type does not match the value, when a mapping key does not exist, or when a sequence index is out of bounds.

```rust
use yaml_serde::Value;

let object: Value = yaml_serde::from_str(r#"{ A: 65, B: 66, C: 67 }"#)?;
assert_eq!(object.get("A"), Some(&Value::from(65)));

let sequence: Value = yaml_serde::from_str(r#"[ "A", "B", "C" ]"#)?;
assert_eq!(sequence.get(2), Some(&Value::from("C")));
assert_eq!(sequence.get("A"), None);
```

### `get_mut`

```rust
pub fn get_mut<I: Index>(&mut self, index: I) -> Option<&mut Value>
```

Mutably indexes into a YAML sequence or mapping. Returns `None` when the index type does not match the value, when a mapping key does not exist, or when a sequence index is out of bounds.

### `is_null`

```rust
pub fn is_null(&self) -> bool
```

Returns `true` if the value is `Value::Null`.

```rust
let value: Value = yaml_serde::from_str("null").unwrap();
assert!(value.is_null());
```

### `as_null`

```rust
pub fn as_null(&self) -> Option<()>
```

Returns `Some(())` if the value is `Value::Null`; otherwise returns `None`.

```rust
let value: Value = yaml_serde::from_str("null").unwrap();
assert_eq!(value.as_null(), Some(()));
```

### `is_bool`

```rust
pub fn is_bool(&self) -> bool
```

Returns `true` if the value is a boolean.

### `as_bool`

```rust
pub fn as_bool(&self) -> Option<bool>
```

Returns the contained boolean, or `None` if the value is not a boolean.

```rust
let value: Value = yaml_serde::from_str("true").unwrap();
assert_eq!(value.as_bool(), Some(true));
```

### `is_number`

```rust
pub fn is_number(&self) -> bool
```

Returns `true` if the value is a number.

### `is_i64`

```rust
pub fn is_i64(&self) -> bool
```

Returns `true` if the value is an integer representable as an `i64`.

### `as_i64`

```rust
pub fn as_i64(&self) -> Option<i64>
```

Returns the value as an `i64` when possible; otherwise returns `None`.

```rust
let value: Value = yaml_serde::from_str("1337").unwrap();
assert_eq!(value.as_i64(), Some(1337));
```

### `is_u64`

```rust
pub fn is_u64(&self) -> bool
```

Returns `true` if the value is an integer representable as a `u64`.

### `as_u64`

```rust
pub fn as_u64(&self) -> Option<u64>
```

Returns the value as a `u64` when possible; otherwise returns `None`.

```rust
let value: Value = yaml_serde::from_str("1337").unwrap();
assert_eq!(value.as_u64(), Some(1337));
```

### `is_f64`

```rust
pub fn is_f64(&self) -> bool
```

Returns `true` if the value is a number that can be represented as an `f64`.

### `as_f64`

```rust
pub fn as_f64(&self) -> Option<f64>
```

Returns the value as an `f64` when possible; otherwise returns `None`.

```rust
let value: Value = yaml_serde::from_str("13.37").unwrap();
assert_eq!(value.as_f64(), Some(13.37));
```

### `is_string`

```rust
pub fn is_string(&self) -> bool
```

Returns `true` if the value is a string.

### `as_str`

```rust
pub fn as_str(&self) -> Option<&str>
```

Returns the contained string slice, or `None` if the value is not a string.

```rust
let value: Value = yaml_serde::from_str("'lorem ipsum'").unwrap();
assert_eq!(value.as_str(), Some("lorem ipsum"));
```

### `is_sequence`

```rust
pub fn is_sequence(&self) -> bool
```

Returns `true` if the value is a sequence.

### `as_sequence`

```rust
pub fn as_sequence(&self) -> Option<&Sequence>
```

Returns a reference to the contained sequence, or `None` if the value is not a sequence.

### `as_sequence_mut`

```rust
pub fn as_sequence_mut(&mut self) -> Option<&mut Sequence>
```

Returns a mutable reference to the contained sequence, or `None` if the value is not a sequence.

```rust
let mut value: Value = yaml_serde::from_str("[1]").unwrap();
let sequence = value.as_sequence_mut().unwrap();
sequence.push(Value::from(2));
```

### `is_mapping`

```rust
pub fn is_mapping(&self) -> bool
```

Returns `true` if the value is a mapping.

### `as_mapping`

```rust
pub fn as_mapping(&self) -> Option<&Mapping>
```

Returns a reference to the contained mapping, or `None` if the value is not a mapping.

### `as_mapping_mut`

```rust
pub fn as_mapping_mut(&mut self) -> Option<&mut Mapping>
```

Returns a mutable reference to the contained mapping, or `None` if the value is not a mapping.

```rust
let mut value: Value = yaml_serde::from_str("a: 42").unwrap();
let mapping = value.as_mapping_mut().unwrap();
mapping.insert(Value::from("b"), Value::from(21));
```

### `apply_merge`

```rust
pub fn apply_merge(&mut self) -> Result<(), Error>
```

Merges `<<` keys into their surrounding mappings.

```rust
use yaml_serde::Value;

let config = "\
tasks:
  build: &webpack_shared
    command: webpack
    args: build
  start:
    <<: *webpack_shared
    args: start
";

let mut value: Value = yaml_serde::from_str(config).unwrap();
value.apply_merge().unwrap();

assert_eq!(value["tasks"]["start"]["command"], "webpack");
assert_eq!(value["tasks"]["start"]["args"], "start");
```

## Indexing

### `yaml_serde::Index`

`Value` implements `yaml_serde::Index` and `yaml_serde::mapping::Index`.

### `std::ops::Index`

```rust
impl<I> std::ops::Index<I> for Value
where
    I: yaml_serde::Index,
{
    type Output = Value;

    fn index(&self, index: I) -> &Value;
}
```

Indexing returns `Value::Null` when the value cannot be indexed with the supplied index, when a mapping key is absent, or when a sequence index is out of bounds.

```rust
let data: yaml_serde::Value =
    yaml_serde::from_str(r#"{ x: { y: [z, zz] } }"#).unwrap();

assert_eq!(data["x"]["y"][0], "z");
assert_eq!(data["missing"], Value::Null);
assert_eq!(data["missing"]["nested"], Value::Null);
```

### `std::ops::IndexMut`

```rust
impl<I> std::ops::IndexMut<I> for Value
where
    I: yaml_serde::Index,
{
    fn index_mut(&mut self, index: I) -> &mut Value;
}
```

Mutable indexing supports assignments such as `value[0] = ...` and `value["key"] = ...`.

- Numeric indexing requires a sequence large enough to contain the index; otherwise it panics.
- String indexing treats `Value::Null` as an empty mapping.
- Missing mapping keys are inserted with `Value::Null`.
- Indexing a non-sequence with a numeric index or a non-mapping, non-null value with a string index panics.

## Trait Implementations

### `Clone`

```rust
impl Clone for Value {
    fn clone(&self) -> Value;
    fn clone_from(&mut self, source: &Self);
}
```

### `Debug`

```rust
impl Debug for Value {
    fn fmt(&self, formatter: &mut Formatter<'_>) -> std::fmt::Result;
}
```

### `Default`

```rust
impl Default for Value {
    fn default() -> Value;
}
```

The default value is `Value::Null`.

### `Deserialize`

```rust
impl<'de> Deserialize<'de> for Value {
    fn deserialize<D>(deserializer: D) -> Result<Value, D::Error>
    where
        D: serde::Deserializer<'de>;
}
```

### `Serialize`

```rust
impl Serialize for Value {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer;
}
```

### `Deserializer` for `Value`

```rust
impl<'de> serde::Deserializer<'de> for Value {
    type Error = Error;

    fn deserialize_any<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_bool<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_i8<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_i16<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_i32<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_i64<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_i128<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_u8<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_u16<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_u32<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_u64<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_u128<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_f32<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_f64<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_char<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_str<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_string<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_bytes<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_byte_buf<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_option<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_unit<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_unit_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_newtype_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_seq<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_tuple<V>(
        self,
        len: usize,
        visitor: V,
    ) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_tuple_struct<V>(
        self,
        name: &'static str,
        len: usize,
        visitor: V,
    ) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_map<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_struct<V>(
        self,
        name: &'static str,
        fields: &'static [&'static str],
        visitor: V,
    ) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_enum<V>(
        self,
        name: &str,
        variants: &'static [&'static str],
        visitor: V,
    ) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_identifier<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn deserialize_ignored_any<V>(self, visitor: V) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn is_human_readable(&self) -> bool;
}
```

### `Deserializer` for `&Value`

`&Value` implements the same `serde::Deserializer` methods and associated type as `Value`:

```rust
impl<'de> serde::Deserializer<'de> for &'de Value {
    type Error = Error;
}
```

The method signatures are identical to the `Value` implementation, except that each method takes `self` as `&'de Value`.

### `IntoDeserializer`

```rust
impl<'de> serde::IntoDeserializer<'de, Error> for Value {
    type Deserializer = Value;

    fn into_deserializer(self) -> Value;
}
```

### `Eq`

```rust
impl Eq for Value {}
```

### `PartialEq`

```rust
impl PartialEq for Value {
    fn eq(&self, other: &Value) -> bool;
    fn ne(&self, other: &Value) -> bool;
}
```

`Value` also implements `PartialEq` for the following right-hand-side types:

- `&str`
- `str`
- `String`
- `bool`
- `f32`
- `f64`
- `i8`
- `i16`
- `i32`
- `i64`
- `isize`
- `u8`
- `u16`
- `u32`
- `u64`
- `usize`

For each supported type `T`, the implementation provides:

```rust
impl PartialEq<T> for Value {
    fn eq(&self, other: &T) -> bool;
    fn ne(&self, other: &T) -> bool;
}
```

The floating-point and integer implementations are also available for `&Value` and `&mut Value`.

### `PartialOrd`

```rust
impl PartialOrd for Value {
    fn partial_cmp(&self, other: &Value) -> Option<std::cmp::Ordering>;
    fn lt(&self, other: &Value) -> bool;
    fn le(&self, other: &Value) -> bool;
    fn gt(&self, other: &Value) -> bool;
    fn ge(&self, other: &Value) -> bool;
}
```

### `Hash`

```rust
impl Hash for Value {
    fn hash<H>(&self, state: &mut H)
    where
        H: Hasher;

    fn hash_slice<H>(data: &[Self], state: &mut H)
    where
        H: Hasher,
        Self: Sized;
}
```

### `From` conversions

`Value` implements `From<T>` for the following types:

```rust
impl From<bool> for Value {
    fn from(value: bool) -> Value;
}

impl From<f32> for Value {
    fn from(value: f32) -> Value;
}

impl From<f64> for Value {
    fn from(value: f64) -> Value;
}

impl From<i8> for Value {
    fn from(value: i8) -> Value;
}

impl From<i16> for Value {
    fn from(value: i16) -> Value;
}

impl From<i32> for Value {
    fn from(value: i32) -> Value;
}

impl From<i64> for Value {
    fn from(value: i64) -> Value;
}

impl From<isize> for Value {
    fn from(value: isize) -> Value;
}

impl From<u8> for Value {
    fn from(value: u8) -> Value;
}

impl From<u16> for Value {
    fn from(value: u16) -> Value;
}

impl From<u32> for Value {
    fn from(value: u32) -> Value;
}

impl From<u64> for Value {
    fn from(value: u64) -> Value;
}

impl From<usize> for Value {
    fn from(value: usize) -> Value;
}

impl From<&str> for Value {
    fn from(value: &str) -> Value;
}

impl<'a> From<Cow<'a, str>> for Value {
    fn from(value: Cow<'a, str>) -> Value;
}

impl From<String> for Value {
    fn from(value: String) -> Value;
}

impl From<Mapping> for Value {
    fn from(value: Mapping) -> Value;
}

impl<T> From<Vec<T>> for Value
where
    T: Into<Value>,
{
    fn from(value: Vec<T>) -> Value;
}

impl<'a, T> From<&'a [T]> for Value
where
    T: Clone + Into<Value>,
{
    fn from(value: &'a [T]) -> Value;
}
```

### `FromIterator`

```rust
impl<T> FromIterator<T> for Value
where
    T: Into<Value>,
{
    fn from_iter<I>(iter: I) -> Value
    where
        I: IntoIterator<Item = T>;
}
```

Collected values become a YAML sequence.

```rust
use yaml_serde::Value;

let value: Value = vec!["lorem", "ipsum", "dolor"]
    .into_iter()
    .collect();
```

### `VariantAccess`

```rust
impl<'de> serde::de::VariantAccess<'de> for Value {
    type Error = Error;

    fn unit_variant(self) -> Result<(), Error>;

    fn newtype_variant_seed<T>(
        self,
        seed: T,
    ) -> Result<Value, Error>
    where
        T: serde::de::DeserializeSeed<'de>;

    fn tuple_variant<V>(
        self,
        len: usize,
        visitor: V,
    ) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn struct_variant<V>(
        self,
        fields: &'static [&'static str],
        visitor: V,
    ) -> Result<Value, Error>
    where
        V: serde::de::Visitor<'de>;

    fn newtype_variant<T>(self) -> Result<T, Error>
    where
        T: serde::de::Deserialize<'de>;
}
```

`&Value` implements the same trait and method signatures, with `self` borrowed as `&'de Value`.

## Auto Traits

`Value` implements:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

Through standard Rust and dependency traits, `Value` also receives the applicable blanket implementations for:

- `Any`
- `Borrow`
- `BorrowMut`
- `CloneToUninit`
- `DeserializeOwned`
- `Equivalent`
- `From`
- `Into`
- `ToOwned`
- `TryFrom`
- `TryInto`
