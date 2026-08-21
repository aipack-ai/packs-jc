# `TaggedValue` in `yaml_serde::value`

## Crate

- Crate: `yaml_serde` 0.10.7
- License: MIT OR Apache-2.0
- Repository: [yaml/yaml-serde](https://github.com/yaml/yaml-serde)
- Documentation: [docs.rs](https://docs.rs/yaml_serde/0.10.7/)
- Module: `yaml_serde::value`

## Definition

`TaggedValue` is a `Tag` and `Value` representing a tagged YAML scalar, sequence, or mapping.

[Source](../../src/yaml_serde/value/tagged.rs.html#53-58)

```rust
pub struct TaggedValue {
    pub tag: Tag,
    pub value: Value,
}
```

## Example

```rust
use std::collections::BTreeMap;
use yaml_serde::value::TaggedValue;

let yaml = r#"
    scalar: !Thing x
    sequence_flow: !Thing [first]
    sequence_block: !Thing
      - first
    mapping_flow: !Thing {k: v}
    mapping_block: !Thing
      k: v
"#;

let data: BTreeMap<String, TaggedValue> = yaml_serde::from_str(yaml).unwrap();

assert!(data["scalar"].tag == "Thing");
assert!(data["sequence_flow"].tag == "Thing");
assert!(data["sequence_block"].tag == "Thing");
assert!(data["mapping_flow"].tag == "Thing");
assert!(data["mapping_block"].tag == "Thing");

// The leading `!` in tags is not significant.
assert!(data["scalar"].tag == "!Thing");
```

## Fields

### `tag`

```rust
pub tag: Tag
```

The YAML tag associated with the value.

### `value`

```rust
pub value: Value
```

The YAML value associated with the tag.

## Trait Implementations

`TaggedValue` implements:

- `Clone`
- `Debug`
- `Deserialize<'de>`
- `Deserializer<'de>` for `TaggedValue`
- `Deserializer<'de>` for `&'de TaggedValue`
- `EnumAccess<'de>` for `TaggedValue`
- `EnumAccess<'de>` for `&'de TaggedValue`
- `Hash`
- `PartialEq`
- `PartialOrd`
- `Serialize`
- `StructuralPartialEq`

## `Clone`

```rust
impl Clone for TaggedValue {
    fn clone(&self) -> TaggedValue;
    fn clone_from(&mut self, source: &Self);
}
```

- `clone` returns a duplicate of the value.
- `clone_from` performs copy assignment from `source`.

## `Debug`

```rust
impl Debug for TaggedValue {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

## `Deserialize<'de>`

```rust
impl<'de> Deserialize<'de> for TaggedValue {
    fn deserialize<D>(deserializer: D) -> Result<TaggedValue, D::Error>
    where
        D: Deserializer<'de>;
}
```

Deserializes a `TaggedValue` from the given Serde deserializer.

## `Deserializer<'de>` for `TaggedValue`

```rust
impl<'de> Deserializer<'de> for TaggedValue {
    type Error = yaml_serde::Error;

    fn deserialize_any<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_ignored_any<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_bool<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i8<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i16<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i32<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i64<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i128<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u8<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u16<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u32<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u64<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u128<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_f32<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_f64<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_char<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_str<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_string<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_bytes<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_byte_buf<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_option<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_unit<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_unit_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_newtype_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_seq<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_tuple<V>(
        self,
        len: usize,
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_tuple_struct<V>(
        self,
        name: &'static str,
        len: usize,
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_map<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_struct<V>(
        self,
        name: &'static str,
        fields: &'static [&'static str],
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_enum<V>(
        self,
        name: &'static str,
        variants: &'static [&'static str],
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_identifier<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn is_human_readable(&self) -> bool;
}
```

The associated error type is:

```rust
type Error = yaml_serde::Error;
```

## `Deserializer<'de>` for `&'de TaggedValue`

The borrowed implementation provides the same deserialization methods as the owned implementation, but borrows the tagged value.

```rust
impl<'de> Deserializer<'de> for &'de TaggedValue {
    type Error = yaml_serde::Error;

    fn deserialize_any<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_ignored_any<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_bool<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i8<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i16<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i32<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i64<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_i128<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u8<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u16<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u32<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u64<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_u128<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_f32<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_f64<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_char<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_str<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_string<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_bytes<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_byte_buf<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_option<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_unit<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_unit_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_newtype_struct<V>(
        self,
        name: &'static str,
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_seq<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_tuple<V>(
        self,
        len: usize,
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_tuple_struct<V>(
        self,
        name: &'static str,
        len: usize,
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_map<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_struct<V>(
        self,
        name: &'static str,
        fields: &'static [&'static str],
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_enum<V>(
        self,
        name: &'static str,
        variants: &'static [&'static str],
        visitor: V,
    ) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn deserialize_identifier<V>(self, visitor: V) -> Result<V::Value, V::Error>
    where
        V: Visitor<'de>;

    fn is_human_readable(&self) -> bool;
}
```

## `EnumAccess<'de>` for `TaggedValue`

```rust
impl<'de> EnumAccess<'de> for TaggedValue {
    type Error = yaml_serde::Error;
    type Variant = Value;

    fn variant_seed<V>(
        self,
        seed: V,
    ) -> Result<(V::Value, Self::Variant), Self::Error>
    where
        V: DeserializeSeed<'de>;

    fn variant<V>(self) -> Result<(V, Self::Variant), Self::Error>
    where
        V: Deserialize<'de>;
}
```

- `variant_seed` identifies which enum variant to deserialize using a `DeserializeSeed`.
- `variant` identifies which enum variant to deserialize using `Deserialize`.

## `EnumAccess<'de>` for `&'de TaggedValue`

```rust
impl<'de> EnumAccess<'de> for &'de TaggedValue {
    type Error = yaml_serde::Error;
    type Variant = &'de Value;

    fn variant_seed<V>(
        self,
        seed: V,
    ) -> Result<(V::Value, Self::Variant), Self::Error>
    where
        V: DeserializeSeed<'de>;

    fn variant<V>(self) -> Result<(V, Self::Variant), Self::Error>
    where
        V: Deserialize<'de>;
}
```

## `Hash`

```rust
impl Hash for TaggedValue {
    fn hash<H: Hasher>(&self, state: &mut H);

    fn hash_slice<H>(data: &[Self], state: &mut H)
    where
        H: Hasher,
        Self: Sized;
}
```

- `hash` feeds the value into the supplied hasher.
- `hash_slice` feeds a slice of values into the supplied hasher.

## `PartialEq`

```rust
impl PartialEq for TaggedValue {
    fn eq(&self, other: &TaggedValue) -> bool;
    fn ne(&self, other: &TaggedValue) -> bool;
}
```

## `PartialOrd`

```rust
impl PartialOrd for TaggedValue {
    fn partial_cmp(&self, other: &TaggedValue) -> Option<Ordering>;
    fn lt(&self, other: &TaggedValue) -> bool;
    fn le(&self, other: &TaggedValue) -> bool;
    fn gt(&self, other: &TaggedValue) -> bool;
    fn ge(&self, other: &TaggedValue) -> bool;
}
```

## `Serialize`

```rust
impl Serialize for TaggedValue {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer;
}
```

Serializes the tagged value using the given Serde serializer.

## `StructuralPartialEq`

```rust
impl StructuralPartialEq for TaggedValue {}
```

## Auto Traits

`TaggedValue` automatically implements:

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
    T: 'static + ?Sized,
{
    fn type_id(&self) -> TypeId;
}
```

### `Borrow`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
{
    fn borrow(&self) -> &T;
}
```

### `BorrowMut`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
{
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `CloneToUninit`

```rust
impl<T> CloneToUninit for T
where
    T: Clone,
{
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}
```

This is a nightly-only experimental API.

### `DeserializeOwned`

```rust
impl<T> DeserializeOwned for T
where
    T: for<'de> Deserialize<'de>,
{}
```

### `From`

```rust
impl<T> From<T> for T {
    fn from(t: T) -> T;
}
```

Returns the argument unchanged.

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

Calls `U::from(self)`.

### `ToOwned`

```rust
impl<T> ToOwned for T
where
    T: Clone,
{
    type Owned = T;

    fn to_owned(&self) -> T;
    fn clone_into(&self, target: &mut T);
}
```

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

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
