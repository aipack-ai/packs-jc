# `from_value`

## In `yaml_serde::value`

[`yaml_serde`](../../yaml_serde/index.html) 0.10.7

**Source:** [`value/mod.rs#121-126`](../../src/yaml_serde/value/mod.rs.html#121-126)

## Function signature

```rust
pub fn from_value<T>(value: Value) -> Result<T, Error>
where
    T: DeserializeOwned,
```

## Description

Interprets a `yaml_serde::Value` as an instance of type `T`.

This conversion can fail if the structure of the `Value` does not match the structure expected by `T`, such as when `T` is a struct but the value contains something other than a YAML map. It can also fail when the structure is correct but `T`'s `Deserialize` implementation rejects the data, for example because required struct fields are missing or a number is too large for the expected primitive type.

## Example

```rust
let val = Value::String("foo".to_owned());
let s: String = yaml_serde::from_value(val).unwrap();
assert_eq!("foo", s);
```
