# `yaml_serde::value` Module

The `value` module provides the [`Value`](enum.Value.html) enum, a loosely typed way of representing any valid YAML value.

Source: [`yaml_serde/value/mod.rs`](../../src/yaml_serde/value/mod.rs.html#1-701)

## Structs

- [`Mapping`](struct.Mapping.html) — A YAML mapping in which the keys and values are both [`Value`](enum.Value.html) values.
- [`Number`](struct.Number.html) — Represents a YAML number, whether integer or floating point.
- [`Serializer`](struct.Serializer.html) — A serializer whose output is a [`Value`](enum.Value.html).
- [`Tag`](struct.Tag.html) — Represents YAML’s `!Tag` syntax, used for enums.
- [`TaggedValue`](struct.TaggedValue.html) — A [`Tag`](struct.Tag.html) and [`Value`](enum.Value.html) representing a tagged YAML scalar, sequence, or mapping.

## Enums

- [`Value`](enum.Value.html) — Represents any valid YAML value.

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

## Traits

### [`Index`](trait.Index.html)

A type that can be used to index into a [`Value`](enum.Value.html). See the `get` and `get_mut` methods of [`Value`](enum.Value.html).

```rust
pub trait Index {
    fn index_into<'a>(&self, value: &'a Value) -> Option<&'a Value>;

    fn index_into_mut<'a>(
        &self,
        value: &'a mut Value,
    ) -> Option<&'a mut Value>;
}
```

## Functions

### [`from_value`](fn.from_value.html)

Interprets a [`Value`](enum.Value.html) as an instance of type `T`.

```rust
pub fn from_value<T>(value: Value) -> Result<T>
where
    T: DeserializeOwned;
```

### [`to_value`](fn.to_value.html)

Converts a value of type `T` into a [`Value`](enum.Value.html), which can represent any valid YAML data.

```rust
pub fn to_value<T>(value: &T) -> Result<Value>
where
    T: Serialize;
```

## Type Aliases

### [`Sequence`](type.Sequence.html)

A YAML sequence in which the elements are [`Value`](enum.Value.html) values.

```rust
pub type Sequence = Vec<Value>;
```

## Module API Summary

| Item | Kind | Return type or definition |
| --- | --- | --- |
| [`Mapping`](struct.Mapping.html) | Struct | YAML mapping of [`Value`](enum.Value.html) keys and values |
| [`Number`](struct.Number.html) | Struct | YAML integer or floating-point number |
| [`Serializer`](struct.Serializer.html) | Struct | Serializer producing [`Value`](enum.Value.html) |
| [`Tag`](struct.Tag.html) | Struct | YAML tag representation |
| [`TaggedValue`](struct.TaggedValue.html) | Struct | Tagged YAML value |
| [`Value`](enum.Value.html) | Enum | Represents any valid YAML value |
| [`Index`](trait.Index.html) | Trait | Provides immutable and mutable indexing into [`Value`](enum.Value.html) |
| [`from_value`](fn.from_value.html) | Function | `Result<T>` |
| [`to_value`](fn.to_value.html) | Function | `Result<Value>` |
| [`Sequence`](type.Sequence.html) | Type alias | `Vec<Value>` |
