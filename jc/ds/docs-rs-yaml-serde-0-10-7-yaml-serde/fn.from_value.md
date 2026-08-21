# `from_value` in `yaml_serde`

## `yaml_serde` 0.10.7

# Function `from_value`

[Source](../src/yaml_serde/value/mod.rs.html#121-126)

```rust
pub fn from_value<T>(value: Value) -> Result<T, Error>
where
    T: DeserializeOwned,
```

## Description

Interprets a `yaml_serde::Value` as an instance of type `T`.

This conversion can fail if the structure of the `Value` does not match the structure expected by `T`. For example, conversion fails if `T` is a struct type but the `Value` contains something other than a YAML map.

Conversion can also fail if the structure is correct but `T`'s implementation of `Deserialize` determines that the data is invalid. Examples include missing required struct fields or numbers that are too large to fit in the expected primitive type.

## Example

```rust
let val = Value::String("foo".to_owned());
let s: String = yaml_serde::from_value(val).unwrap();

assert_eq!("foo", s);
```
