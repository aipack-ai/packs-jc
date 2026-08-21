# `to_string` in `yaml_serde` - Rust

## `yaml_serde` 0.10.7

# Function `to_string`

[Source](../src/yaml_serde/ser.rs.html#711-718)

```rust
pub fn to_string<T>(value: &T) -> Result<String, Error>
where
    T: ?Sized + Serialize,
```

## Description

Serializes the given data structure as a YAML string.

Serialization can fail if `T`'s implementation of `Serialize` returns an error.
