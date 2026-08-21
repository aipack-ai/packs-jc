# `yaml_serde::value::Value`

`yaml_serde` version `0.10.7`.

`Value` represents any valid YAML value.

## Enum definition

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

- `Null` - Represents a YAML null value.
- `Bool(bool)` - Represents a YAML boolean.
- `Number(Number)` - Represents a YAML numerical value, whether integer or floating point.
- `String(String)` - Represents a YAML string.
- `Sequence(Sequence)` - Represents a YAML sequence whose elements are `yaml_serde::Value`.
- `Mapping(Mapping)` - Represents a YAML mapping whose keys and values are both `yaml_serde::Value`.
- `Tagged(Box<TaggedValue>)` - Represents YAML's `!Tag` syntax, used for enums.

## Methods

### Indexing and merging

```rust
pub fn get<I>(&self, index: I) -> Option<&Value>
where
    I: Index;
```

Indexes into a YAML sequence or mapping.

- A string index accesses a mapping value.
- A `usize` index accesses a sequence element.
- Returns `None` when the index type does not match the value, the key is absent, or the sequence index is out of bounds.

```rust
pub fn get_mut<I>(&mut self, index: I) -> Option<&mut Value>
where
    I: Index;
```

Mutably indexes into a YAML sequence or mapping. Returns `None` under the same conditions as [`get`](#get).

```rust
pub fn apply_merge(&mut self) -> Result<(), Error>;
```

Merges YAML `<<` keys into their surrounding mappings according to the YAML merge specification.

```rust
use yaml_serde::Value;

let config = "\
tasks:
  build: &webpack_shared
    command: webpack
    args: build
    inputs:
      - 'src/**/*'
  start:
    <<: *webpack_shared
    args: start
";

let mut value: Value = yaml_serde::from_str(config).unwrap();
value.apply_merge().unwrap();

assert_eq!(value["tasks"]["start"]["command"], "webpack");
assert_eq!(value["tasks"]["start"]["args"], "start");
```

### Null inspection

```rust
pub fn is_null(&self) -> bool;
```

Returns `true` if the value is `Value::Null`.

```rust
pub fn as_null(&self) -> Option<()>;
```

Returns `Some(())` for `Value::Null`, or `None` otherwise.

### Boolean inspection

```rust
pub fn is_bool(&self) -> bool;
```

Returns `true` if the value is a boolean.

```rust
pub fn as_bool(&self) -> Option<bool>;
```

Returns the contained boolean, or `None` otherwise.

### Number inspection

```rust
pub fn is_number(&self) -> bool;
```

Returns `true` if the value is a `Number`.

```rust
pub fn is_i64(&self) -> bool;
```

Returns `true` if the value is an integer representable as `i64`.

```rust
pub fn as_i64(&self) -> Option<i64>;
```

Returns the integer as `i64` when possible, or `None` otherwise.

```rust
pub fn is_u64(&self) -> bool;
```

Returns `true` if the value is an integer representable as `u64`.

```rust
pub fn as_u64(&self) -> Option<u64>;
```

Returns the integer as `u64` when possible, or `None` otherwise.

```rust
pub fn is_f64(&self) -> bool;
```

Returns `true` if the value is a number representable as `f64`.

```rust
pub fn as_f64(&self) -> Option<f64>;
```

Returns the number as `f64` when possible, or `None` otherwise.

### String inspection

```rust
pub fn is_string(&self) -> bool;
```

Returns `true` if the value is a string.

```rust
pub fn as_str(&self) -> Option<&str>;
```

Returns the contained string slice, or `None` otherwise.

### Sequence inspection

```rust
pub fn is_sequence(&self) -> bool;
```

Returns `true` if the value is a sequence.

```rust
pub fn as_sequence(&self) -> Option<&Sequence>;
```

Returns an immutable reference to the contained sequence, or `None` otherwise.

```rust
pub fn as_sequence_mut(&mut self) -> Option<&mut Sequence>;
```

Returns a mutable reference to the contained sequence, or `None` otherwise.

### Mapping inspection

```rust
pub fn is_mapping(&self) -> bool;
```

Returns `true` if the value is a mapping.

```rust
pub fn as_mapping(&self) -> Option<&Mapping>;
```

Returns an immutable reference to the contained mapping, or `None` otherwise.

```rust
pub fn as_mapping_mut(&mut self) -> Option<&mut Mapping>;
```

Returns a mutable reference to the contained mapping, or `None` otherwise.

## Indexing

`Value` supports immutable indexing with mapping keys and sequence indexes.

```rust
let object: Value = yaml_serde::from_str(r#"{ A: 65, B: 66 }"#).unwrap();

assert_eq!(object["A"], 65);
assert_eq!(object["missing"], Value::Null);
assert_eq!(object[0]["nested"]["value"], Value::Null);
```

### `Index`

```rust
impl<I> std::ops::Index<I> for Value
where
    I: yaml_serde::Index,
{
    type Output = Value;

    fn index(&self, index: I) -> &Value;
}
```

Returns `Value::Null` when the value cannot be indexed with the supplied index, the mapping key does not exist, or the sequence index is out of bounds.

### `IndexMut`

```rust
impl<I> std::ops::IndexMut<I> for Value
where
    I: yaml_serde::Index,
{
    fn index_mut(&mut self, index: I) -> &mut Value;
}
```

Mutable indexing has the following behavior:

- Numeric indexing requires a sequence with an index in bounds; otherwise it panics.
- String indexing requires a mapping or `Value::Null`; `Value::Null` is treated as an empty mapping.
- A missing mapping key is inserted with `Value::Null`.
- Indexing into an incompatible value panics.

```rust
let mut data: yaml_serde::Value = yaml_serde::from_str(r#"{ x: 0 }"#).unwrap();

data["x"] = yaml_serde::from_str("1").unwrap();
data["y"] = yaml_serde::from_str("[false, false, false]").unwrap();
data["y"][0] = yaml_serde::from_str("true").unwrap();
data["a"]["b"]["c"] = yaml_serde::from_str("true").unwrap();
```

## Trait implementations

### Standard traits

```rust
impl Clone for Value {
    fn clone(&self) -> Value;
}

impl Debug for Value {
    fn fmt(&self, formatter: &mut Formatter<'_>) -> std::fmt::Result;
}

impl Default for Value {
    fn default() -> Value;
}

impl Eq for Value {}

impl Hash for Value {
    fn hash<H>(&self, state: &mut H)
    where
        H: Hasher;

    fn hash_slice<H>(data: &[Self], state: &mut H)
    where
        H: Hasher,
        Self: Sized;
}

impl PartialEq for Value {
    fn eq(&self, other: &Value) -> bool;
}

impl PartialOrd for Value {
    fn partial_cmp(&self, other: &Value) -> Option<Ordering>;
}

impl StructuralPartialEq for Value {}
```

The default value is `Value::Null`.

### Serialization and deserialization

```rust
impl<'de> serde::Deserialize<'de> for Value {
    fn deserialize<D>(deserializer: D) -> Result<Value, D::Error>
    where
        D: serde::Deserializer<'de>;
}

impl serde::Serialize for Value {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer;
}

impl<'de> serde::de::Deserializer<'de> for Value {
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
        name: &'static str,
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

`&Value` also implements `serde::de::Deserializer<'de>` with `Error = yaml_serde::Error` and the same deserialization method signatures, taking `self` by shared reference.

```rust
impl<'de> serde::de::Deserializer<'de> for &'de Value {
    type Error = Error;

    // The deserialize_* methods have the same signatures as the
    // implementation for Value, with `self` being `&'de Value`.
}
```

```rust
impl<'a> serde::de::IntoDeserializer<'a, Error> for Value {
    type Deserializer = Value;

    fn into_deserializer(self) -> Value;
}
```

### Conversion implementations

`Value` implements `From<T>` for the following types:

```rust
impl<'a, T> From<&'a [T]> for Value
where
    T: Clone + Into<Value>;

impl From<&str> for Value;
impl<'a> From<std::borrow::Cow<'a, str>> for Value;
impl From<String> for Value;
impl From<Mapping> for Value;
impl<T> From<Vec<T>> for Value
where
    T: Into<Value>;

impl From<bool> for Value;
impl From<f32> for Value;
impl From<f64> for Value;

impl From<i8> for Value;
impl From<i16> for Value;
impl From<i32> for Value;
impl From<i64> for Value;
impl From<isize> for Value;

impl From<u8> for Value;
impl From<u16> for Value;
impl From<u32> for Value;
impl From<u64> for Value;
impl From<usize> for Value;
```

Examples:

```rust
use yaml_serde::{Mapping, Value};

let string_value: Value = "lorem".into();
let number_value: Value = 42i32.into();
let sequence_value: Value = vec!["lorem", "ipsum"].into();

let mut mapping = Mapping::new();
mapping.insert("key".into(), "value".into());

let mapping_value: Value = mapping.into();
```

### `FromIterator`

```rust
impl<T> FromIterator<T> for Value
where
    T: Into<Value>;

fn from_iter<I>(iter: I) -> Value
where
    I: IntoIterator<Item = T>;
```

Collects an iterator into a YAML sequence.

```rust
use yaml_serde::Value;

let value: Value = vec!["lorem", "ipsum", "dolor"]
    .into_iter()
    .collect();
```

### Equality with primitive values

`Value` implements `PartialEq` with the following right-hand-side types:

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

For numeric types, implementations are provided for `Value`, `&Value`, and `&mut Value`.

Each implementation has the following form:

```rust
impl PartialEq<T> for Value {
    fn eq(&self, other: &T) -> bool;
}

impl<'a> PartialEq<T> for &'a Value {
    fn eq(&self, other: &T) -> bool;
}

impl<'a> PartialEq<T> for &'a mut Value {
    fn eq(&self, other: &T) -> bool;
}
```

For string and boolean comparisons, representative implementations are:

```rust
impl PartialEq<&str> for Value {
    fn eq(&self, other: &&str) -> bool;
}

impl PartialEq<str> for Value {
    fn eq(&self, other: &str) -> bool;
}

impl PartialEq<String> for Value {
    fn eq(&self, other: &String) -> bool;
}

impl PartialEq<bool> for Value {
    fn eq(&self, other: &bool) -> bool;
}
```

### `VariantAccess`

`Value` and `&Value` implement Serde's `VariantAccess` trait.

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

```rust
impl<'de> serde::de::VariantAccess<'de> for &'de Value {
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

## Auto traits

`Value` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

Through standard Rust blanket implementations, `Value` also receives the following traits:

- `Any`
- `Borrow<Value>`
- `BorrowMut<Value>`
- `CloneToUninit`
- `DeserializeOwned`
- `From<Value>`
- `Into<T>`
- `ToOwned<Owned = Value>`
- `TryFrom<T, Error = Infallible>`
- `TryInto<T>`

Relevant blanket method signatures include:

```rust
fn type_id(&self) -> TypeId;
fn borrow(&self) -> &Value;
fn borrow_mut(&mut self) -> &mut Value;
unsafe fn clone_to_uninit(&self, dest: *mut u8);

fn from(value: Value) -> Value;
fn into<T>(self) -> T;
fn to_owned(&self) -> Value;
fn clone_into(&self, target: &mut Value);

fn try_from(value: T) -> Result<Value, Infallible>;
fn try_into<T>(self) -> Result<T, <T as TryFrom<Value>>::Error>;
```
