# `from_str` in `yaml_serde` 0.10.7

## Function `from_str`

[Source](../src/yaml_serde/de.rs.html#1807-1812)

```rust
pub fn from_str<'de, T>(s: &'de str) -> Result<T>
where
    T: Deserialize<'de>,
```

### Description

Deserialize an instance of type `T` from a string of YAML text.

This conversion can fail if the structure of the value does not match the structure expected by `T`. For example, deserialization fails if `T` is a struct type but the value contains something other than a YAML map.

Deserialization can also fail if the structure is correct but `T`'s implementation of `Deserialize` determines that the data is invalid. For example, required struct fields may be missing from the YAML map, or a number may be too large to fit in the expected primitive type.

### Parameters

- `s: &'de str` - A string slice containing YAML text.
- `T` - The type into which the YAML text is deserialized.

### Return Type

- `Result<T>` - The deserialized value, or a `yaml_serde` error if deserialization fails.
