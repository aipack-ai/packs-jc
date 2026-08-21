# Function `serialize`

Module: `yaml_serde::with::singleton_map`

[Source](../../../src/yaml_serde/with.rs.html#89-97)

## Signature

```rust
pub fn serialize<T, S>(value: &T, serializer: S) -> Result<S::Ok, S::Error>
where
    T: Serialize,
    S: Serializer,
```
