# Function `serialize`

`yaml_serde::with::singleton_map_recursive::serialize`

[Source](../../../src/yaml_serde/with.rs.html#953-961)

## Signature

```rust
pub fn serialize<T, S>(value: &T, serializer: S) -> Result<S::Ok, S::Error>
where
    T: Serialize,
    S: Serializer,
```
