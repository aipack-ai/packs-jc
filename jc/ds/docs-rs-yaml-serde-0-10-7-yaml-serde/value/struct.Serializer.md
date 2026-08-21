# Serializer in `yaml_serde::value` - Rust

## `yaml_serde` 0.10.7

# Struct `Serializer`

```rust
pub struct Serializer;
```

## Description

Serializer whose output is a [`Value`](../enum.Value.html).

This is the serializer that backs [`yaml_serde::to_value`](../fn.to_value.html). Unlike the main `yaml_serde` serializer, which converts a serializable value of type `T` to YAML text, this serializer converts `T` to `yaml_serde::Value`.

The `to_value` function can be implemented as follows:

```rust
use serde::Serialize;
use yaml_serde::{Error, Value};

pub fn to_value<T>(input: T) -> Result<Value, Error>
where
    T: Serialize,
{
    input.serialize(yaml_serde::value::Serializer)
}
```

## Trait Implementations

### `serde::Serializer`

```rust
impl serde::Serializer for Serializer
```

#### Associated Types

```rust
type Ok = Value;
type Error = Error;
type SerializeSeq = SerializeArray;
type SerializeTuple = SerializeArray;
type SerializeTupleStruct = SerializeArray;
type SerializeTupleVariant = SerializeTupleVariant;
type SerializeMap = SerializeMap;
type SerializeStruct = SerializeStruct;
type SerializeStructVariant = SerializeStructVariant;
```

#### Primitive and String Serialization

```rust
fn serialize_bool(self, v: bool) -> Result<Value, Error>;
fn serialize_i8(self, v: i8) -> Result<Value, Error>;
fn serialize_i16(self, v: i16) -> Result<Value, Error>;
fn serialize_i32(self, v: i32) -> Result<Value, Error>;
fn serialize_i64(self, v: i64) -> Result<Value, Error>;
fn serialize_i128(self, v: i128) -> Result<Value, Error>;

fn serialize_u8(self, v: u8) -> Result<Value, Error>;
fn serialize_u16(self, v: u16) -> Result<Value, Error>;
fn serialize_u32(self, v: u32) -> Result<Value, Error>;
fn serialize_u64(self, v: u64) -> Result<Value, Error>;
fn serialize_u128(self, v: u128) -> Result<Value, Error>;

fn serialize_f32(self, v: f32) -> Result<Value, Error>;
fn serialize_f64(self, v: f64) -> Result<Value, Error>;

fn serialize_char(self, value: char) -> Result<Value, Error>;
fn serialize_str(self, value: &str) -> Result<Value, Error>;
fn serialize_bytes(self, value: &[u8]) -> Result<Value, Error>;
```

- `serialize_bool`: Serializes a `bool` value.
- `serialize_i8`, `serialize_i16`, `serialize_i32`, `serialize_i64`, and `serialize_i128`: Serialize signed integer values.
- `serialize_u8`, `serialize_u16`, `serialize_u32`, `serialize_u64`, and `serialize_u128`: Serialize unsigned integer values.
- `serialize_f32` and `serialize_f64`: Serialize floating-point values.
- `serialize_char`: Serializes a character.
- `serialize_str`: Serializes a string slice.
- `serialize_bytes`: Serializes raw byte data.

#### Unit and Optional Values

```rust
fn serialize_unit(self) -> Result<Value, Error>;

fn serialize_unit_struct(
    self,
    _name: &'static str,
) -> Result<Value, Error>;

fn serialize_unit_variant(
    self,
    _name: &str,
    _variant_index: u32,
    variant: &str,
) -> Result<Value, Error>;

fn serialize_none(self) -> Result<Value, Error>;

fn serialize_some<T>(
    self,
    value: &T,
) -> Result<Value, Error>
where
    T: ?Sized + Serialize;
```

- `serialize_unit`: Serializes a `()` value.
- `serialize_unit_struct`: Serializes a unit struct such as `struct Unit` or `PhantomData`.
- `serialize_unit_variant`: Serializes a unit enum variant such as `E::A` in `enum E { A, B }`.
- `serialize_none`: Serializes an `Option::None` value.
- `serialize_some`: Serializes an `Option::Some(T)` value.

#### Newtype Values

```rust
fn serialize_newtype_struct<T>(
    self,
    _name: &'static str,
    value: &T,
) -> Result<Value, Error>
where
    T: ?Sized + Serialize;

fn serialize_newtype_variant<T>(
    self,
    _name: &str,
    _variant_index: u32,
    variant: &str,
    value: &T,
) -> Result<Value, Error>
where
    T: ?Sized + Serialize;
```

- `serialize_newtype_struct`: Serializes a newtype struct such as `struct Millimeters(u8)`.
- `serialize_newtype_variant`: Serializes a newtype enum variant such as `E::N` in `enum E { N(u8) }`.

#### Sequences, Tuples, Maps, and Structs

```rust
fn serialize_seq(
    self,
    len: Option<usize>,
) -> Result<SerializeArray, Error>;

fn serialize_tuple(
    self,
    len: usize,
) -> Result<SerializeArray, Error>;

fn serialize_tuple_struct(
    self,
    _name: &'static str,
    len: usize,
) -> Result<SerializeArray, Error>;

fn serialize_tuple_variant(
    self,
    _enum: &'static str,
    _idx: u32,
    variant: &'static str,
    len: usize,
) -> Result<SerializeTupleVariant, Error>;

fn serialize_map(
    self,
    len: Option<usize>,
) -> Result<SerializeMap, Error>;

fn serialize_struct(
    self,
    _name: &'static str,
    _len: usize,
) -> Result<SerializeStruct, Error>;

fn serialize_struct_variant(
    self,
    _enum: &'static str,
    _idx: u32,
    variant: &'static str,
    _len: usize,
) -> Result<SerializeStructVariant, Error>;
```

- `serialize_seq`: Begins serializing a variably sized sequence.
- `serialize_tuple`: Begins serializing a statically sized sequence.
- `serialize_tuple_struct`: Begins serializing a tuple struct such as `struct Rgb(u8, u8, u8)`.
- `serialize_tuple_variant`: Begins serializing a tuple enum variant such as `E::T` in `enum E { T(u8, u8) }`.
- `serialize_map`: Begins serializing a map.
- `serialize_struct`: Begins serializing a struct such as `struct Rgb { r: u8, g: u8, b: u8 }`.
- `serialize_struct_variant`: Begins serializing a struct enum variant such as `E::S` in `enum E { S { r: u8, g: u8, b: u8 } }`.

Sequence, tuple, and struct serializers must be followed by calls to serialize their elements or fields and then a call to `end`. Map serializers must be followed by calls to serialize keys and values and then a call to `end`.

#### Convenience Methods

```rust
fn collect_seq<I>(
    self,
    iter: I,
) -> Result<Value, Self::Error>
where
    I: IntoIterator,
    I::Item: Serialize;

fn collect_map<I, K, V>(
    self,
    iter: I,
) -> Result<Value, Self::Error>
where
    K: Serialize,
    V: Serialize,
    I: IntoIterator<Item = (K, V)>;

fn collect_str<T>(
    self,
    value: &T,
) -> Result<Value, Self::Error>
where
    T: Display + ?Sized;

fn is_human_readable(&self) -> bool;
```

- `collect_seq`: Collects an iterator as a sequence.
- `collect_map`: Collects an iterator as a map.
- `collect_str`: Serializes a string produced by an implementation of `Display`.
- `is_human_readable`: Determines whether `Serialize` implementations should use human-readable form.

## Auto Trait Implementations

`Serializer` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `Any`

```rust
impl<T> Any for T
where
    T: 'static + ?Sized;

fn type_id(&self) -> TypeId;
```

Gets the `TypeId` of `self`.

### `Borrow`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized;

fn borrow(&self) -> &T;
```

Immutably borrows from an owned value.

### `BorrowMut`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized;

fn borrow_mut(&mut self) -> &mut T;
```

Mutably borrows from an owned value.

### `From`

```rust
impl<T> From<T> for T;

fn from(t: T) -> T;
```

Returns the argument unchanged.

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>;

fn into(self) -> U;
```

Calls `U::from(self)`.

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>;

type Error = Infallible;

fn try_from(value: U) -> Result<T, Self::Error>;
```

Performs the conversion.

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>;

type Error = <U as TryFrom<T>>::Error;

fn try_into(self) -> Result<U, Self::Error>;
```

Performs the conversion.
