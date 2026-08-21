# `deserialize` in `yaml_serde::with::singleton_map`

## Function signature

```rust
pub fn deserialize<'de, T, D>(deserializer: D) -> Result<T, D::Error>
where
    T: Deserialize<'de>,
    D: Deserializer<'de>,
```

## Definition

- Crate: `yaml_serde` 0.10.7
- Module: `yaml_serde::with::singleton_map`
- [Source](../../../src/yaml_serde/with.rs.html#100-108)
