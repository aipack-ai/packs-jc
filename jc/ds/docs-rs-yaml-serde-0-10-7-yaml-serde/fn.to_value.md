# `to_value` in `yaml_serde` - Rust

## `yaml_serde` 0.10.7

## Function `to_value`

[Source](../src/yaml_serde/value/mod.rs.html#98-103)

```rust
pub fn to_value<T>(value: T) -> Result<Value, Error>
where
    T: Serialize,
```

### Description

Converts a `T` into [`yaml_serde::Value`](enum.Value.html), an enum that can represent any valid YAML data.

This conversion can fail if `T`'s implementation of [`Serialize`](https://docs.rs/serde_core/1.0.229/x86_64-unknown-linux-gnu/serde_core/ser/trait.Serialize.html) returns an error.

### Example

```rust
let val = yaml_serde::to_value("s").unwrap();
assert_eq!(val, Value::String("s".to_owned()));
```
