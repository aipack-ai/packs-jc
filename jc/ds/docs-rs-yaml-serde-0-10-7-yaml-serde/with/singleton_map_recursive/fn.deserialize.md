# `deserialize` in `yaml_serde::with::singleton_map_recursive`

## Crate

[`yaml_serde`](../../../yaml_serde/index.html) 0.10.7

## Module

[`yaml_serde`](../../index.html)::[`with`](../index.html)::[`singleton_map_recursive`](index.html)

## Function `deserialize`

[Source](../../../src/yaml_serde/with.rs.html#964-972)

```rust
pub fn deserialize<'de, T, D>(deserializer: D) -> Result<T, D::Error>
where
    T: Deserialize<'de>,
    D: Deserializer<'de>,
```

Deserializes a value using recursive singleton-map representation.

### Type Parameters

- `'de`: The deserializer's data lifetime.
- `T`: The type to deserialize.
- `D`: The deserializer type.

### Parameters

- `deserializer: D`: The deserializer used to read the value.

### Return Type

Returns `Result<T, D::Error>`, containing the deserialized value or a deserialization error.
