# `Serializer` in `yaml_serde` — Rust

## Crate Information

- Crate: `yaml_serde` 0.10.7
- Description: A YAML serializer for Rust values using Serde.
- License: [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- Repository: [github.com/yaml/yaml-serde](https://github.com/yaml/yaml-serde)
- crates.io: [yaml_serde](https://crates.io/crates/yaml_serde)
- Documentation: [docs.rs/yaml_serde](https://docs.rs/yaml_serde/0.10.7/)
- Owner: [ingydotnet](https://crates.io/users/ingydotnet)
- Platform: `x86_64-unknown-linux-gnu`
- Documentation coverage: 100%

# Struct `Serializer`

```rust
pub struct Serializer<W> {
    /* private fields */
}
```

A structure for serializing Rust values into YAML.

## Example

```rust
use anyhow::Result;
use serde::Serialize;
use std::collections::BTreeMap;

fn main() -> Result<()> {
    let mut buffer = Vec::new();
    let mut ser = yaml_serde::Serializer::new(&mut buffer);

    let mut object = BTreeMap::new();
    object.insert("k", 107);
    object.serialize(&mut ser)?;

    object.insert("J", 74);
    object.serialize(&mut ser)?;

    assert_eq!(buffer, b"k: 107\n---\nJ: 74\nk: 107\n");
    Ok(())
}
```

## Inherent Implementation

```rust
impl<W> Serializer<W>
where
    W: Write,
```

### `new`

```rust
pub fn new(writer: W) -> Self
```

Creates a new YAML serializer.

### `flush`

```rust
pub fn flush(&mut self) -> Result<(), Error>
```

Calls `flush()` on the underlying `Write` object.

### `into_inner`

```rust
pub fn into_inner(self) -> Result<W, Error>
```

Unwraps the underlying `Write` object from the serializer.

# Trait Implementations

## `serde::ser::Serializer`

```rust
impl<W> serde::ser::Serializer for &mut Serializer<W>
where
    W: Write,
```

### Associated Types

```rust
type Ok = ();
type Error = Error;
type SerializeSeq = &'a mut Serializer<W>;
type SerializeTuple = &'a mut Serializer<W>;
type SerializeTupleStruct = &'a mut Serializer<W>;
type SerializeTupleVariant = &'a mut Serializer<W>;
type SerializeMap = &'a mut Serializer<W>;
type SerializeStruct = &'a mut Serializer<W>;
type SerializeStructVariant = &'a mut Serializer<W>;
```

The serializer writes YAML to the underlying `Write` object and returns `()` on success.

### Primitive Values

```rust
fn serialize_bool(self, v: bool) -> Result<(), Error>;
fn serialize_i8(self, v: i8) -> Result<(), Error>;
fn serialize_i16(self, v: i16) -> Result<(), Error>;
fn serialize_i32(self, v: i32) -> Result<(), Error>;
fn serialize_i64(self, v: i64) -> Result<(), Error>;
fn serialize_i128(self, v: i128) -> Result<(), Error>;

fn serialize_u8(self, v: u8) -> Result<(), Error>;
fn serialize_u16(self, v: u16) -> Result<(), Error>;
fn serialize_u32(self, v: u32) -> Result<(), Error>;
fn serialize_u64(self, v: u64) -> Result<(), Error>;
fn serialize_u128(self, v: u128) -> Result<(), Error>;

fn serialize_f32(self, v: f32) -> Result<(), Error>;
fn serialize_f64(self, v: f64) -> Result<(), Error>;

fn serialize_char(self, value: char) -> Result<(), Error>;
fn serialize_str(self, value: &str) -> Result<(), Error>;
fn serialize_bytes(self, value: &[u8]) -> Result<(), Error>;
```

Serializes primitive values, strings, characters, and byte slices.

### Unit and Option Values

```rust
fn serialize_unit(self) -> Result<(), Error>;

fn serialize_unit_struct(
    self,
    _name: &'static str,
) -> Result<(), Error>;

fn serialize_unit_variant(
    self,
    _name: &'static str,
    _variant_index: u32,
    variant: &'static str,
) -> Result<(), Error>;

fn serialize_none(self) -> Result<(), Error>;

fn serialize_some<T>(self, value: &T) -> Result<(), Error>
where
    T: ?Sized + Serialize;
```

Serializes unit values, unit structs, unit variants, and optional values.

### Newtype Values

```rust
fn serialize_newtype_struct<T>(
    self,
    _name: &'static str,
    value: &T,
) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn serialize_newtype_variant<T>(
    self,
    _name: &'static str,
    _variant_index: u32,
    variant: &'static str,
    value: &T,
) -> Result<(), Error>
where
    T: ?Sized + Serialize;
```

Serializes newtype structs and newtype enum variants.

### Sequences and Tuples

```rust
fn serialize_seq(
    self,
    _len: Option<usize>,
) -> Result<Self::SerializeSeq, Self::Error>;

fn serialize_tuple(
    self,
    _len: usize,
) -> Result<Self::SerializeTuple, Self::Error>;

fn serialize_tuple_struct(
    self,
    _name: &'static str,
    _len: usize,
) -> Result<Self::SerializeTupleStruct, Self::Error>;

fn serialize_tuple_variant(
    self,
    _enum: &'static str,
    _index: u32,
    variant: &'static str,
    _len: usize,
) -> Result<Self::SerializeTupleVariant, Self::Error>;
```

Begins serialization of sequences, tuples, tuple structs, and tuple variants. Each method must be followed by element or field serialization and then `end()`.

### Maps and Structs

```rust
fn serialize_map(
    self,
    len: Option<usize>,
) -> Result<Self::SerializeMap, Self::Error>;

fn serialize_struct(
    self,
    _name: &'static str,
    _len: usize,
) -> Result<Self::SerializeStruct, Self::Error>;

fn serialize_struct_variant(
    self,
    _enum: &'static str,
    _index: u32,
    variant: &'static str,
    _len: usize,
) -> Result<Self::SerializeStructVariant, Self::Error>;
```

Begins serialization of maps, structs, and struct variants.

### Utility Methods

```rust
fn collect_str<T>(self, value: &T) -> Result<Self::Ok, Self::Error>
where
    T: ?Sized + Display;

fn collect_seq<I>(self, iter: I) -> Result<Self::Ok, Self::Error>
where
    I: IntoIterator,
    I::Item: Serialize;

fn collect_map<I, K, V>(
    self,
    iter: I,
) -> Result<Self::Ok, Self::Error>
where
    I: IntoIterator<Item = (K, V)>,
    K: Serialize,
    V: Serialize;

fn is_human_readable(&self) -> bool;
```

`collect_str` serializes a value produced by `Display`. `collect_seq` and `collect_map` serialize iterators as sequences and maps. `is_human_readable` indicates whether human-readable serialization is supported.

## `serde::ser::SerializeSeq`

```rust
impl<W> SerializeSeq for &mut Serializer<W>
where
    W: Write,
```

```rust
type Ok = ();
type Error = Error;

fn serialize_element<T>(&mut self, elem: &T) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn end(self) -> Result<(), Error>;
```

Serializes sequence elements and finishes the sequence.

## `serde::ser::SerializeTuple`

```rust
impl<W> SerializeTuple for &mut Serializer<W>
where
    W: Write,
```

```rust
type Ok = ();
type Error = Error;

fn serialize_element<T>(&mut self, elem: &T) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn end(self) -> Result<(), Error>;
```

Serializes tuple elements and finishes the tuple.

## `serde::ser::SerializeTupleStruct`

```rust
impl<W> SerializeTupleStruct for &mut Serializer<W>
where
    W: Write,
```

```rust
type Ok = ();
type Error = Error;

fn serialize_field<T>(&mut self, value: &T) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn end(self) -> Result<(), Error>;
```

Serializes tuple struct fields and finishes the tuple struct.

## `serde::ser::SerializeTupleVariant`

```rust
impl<W> SerializeTupleVariant for &mut Serializer<W>
where
    W: Write,
```

```rust
type Ok = ();
type Error = Error;

fn serialize_field<T>(&mut self, value: &T) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn end(self) -> Result<(), Error>;
```

Serializes tuple variant fields and finishes the tuple variant.

## `serde::ser::SerializeMap`

```rust
impl<W> SerializeMap for &mut Serializer<W>
where
    W: Write,
```

```rust
type Ok = ();
type Error = Error;

fn serialize_key<T>(&mut self, key: &T) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn serialize_value<T>(&mut self, value: &T) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn serialize_entry<K, V>(
    &mut self,
    key: &K,
    value: &V,
) -> Result<(), Self::Error>
where
    K: ?Sized + Serialize,
    V: ?Sized + Serialize;

fn end(self) -> Result<(), Error>;
```

Serializes map keys, values, entries, and finishes the map.

## `serde::ser::SerializeStruct`

```rust
impl<W> SerializeStruct for &mut Serializer<W>
where
    W: Write,
```

```rust
type Ok = ();
type Error = Error;

fn serialize_field<T>(
    &mut self,
    key: &'static str,
    value: &T,
) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn skip_field(&mut self, key: &'static str) -> Result<(), Self::Error>;

fn end(self) -> Result<(), Error>;
```

Serializes struct fields, supports skipped fields, and finishes the struct.

## `serde::ser::SerializeStructVariant`

```rust
impl<W> SerializeStructVariant for &mut Serializer<W>
where
    W: Write,
```

```rust
type Ok = ();
type Error = Error;

fn serialize_field<T>(
    &mut self,
    field: &'static str,
    value: &T,
) -> Result<(), Error>
where
    T: ?Sized + Serialize;

fn skip_field(&mut self, key: &'static str) -> Result<(), Self::Error>;

fn end(self) -> Result<(), Error>;
```

Serializes struct variant fields, supports skipped fields, and finishes the struct variant.

# Auto Trait Implementations

- `!RefUnwindSafe` for `Serializer<W>`
- `!Send` for `Serializer<W>`
- `!Sync` for `Serializer<W>`
- `!UnwindSafe` for `Serializer<W>`
- `Freeze` for `Serializer<W>`
- `Unpin` for `Serializer<W>` where `W: Unpin`
- `UnsafeUnpin` for `Serializer<W>`

# Blanket Implementations

## `Any`

```rust
impl<T> Any for T
where
    T: 'static + ?Sized;
```

```rust
fn type_id(&self) -> TypeId;
```

## `Borrow`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized;
```

```rust
fn borrow(&self) -> &T;
```

## `BorrowMut`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized;
```

```rust
fn borrow_mut(&mut self) -> &mut T;
```

## `From`

```rust
impl<T> From<T> for T;
```

```rust
fn from(value: T) -> T;
```

Returns the argument unchanged.

## `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>;
```

```rust
fn into(self) -> U;
```

Calls `U::from(self)`.

## `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>;
```

```rust
type Error = Infallible;

fn try_from(value: U) -> Result<T, Self::Error>;
```

Performs an infallible conversion.

## `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>;
```

```rust
type Error = <U as TryFrom<T>>::Error;

fn try_into(self) -> Result<U, Self::Error>;
```

Performs a fallible conversion.
