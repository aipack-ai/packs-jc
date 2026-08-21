# `from_reader` Function

Crate: [`yaml_serde`](../yaml_serde/index.html) 0.10.7

[Source](../src/yaml_serde/de.rs.html#1824-1830)

```rust
pub fn from_reader<R, T>(rdr: R) -> Result<T>
where
    R: Read,
    T: DeserializeOwned,
```

Deserializes an instance of type `T` from an I/O stream of YAML.

This conversion can fail if the structure of the YAML value does not match the structure expected by `T`. For example, deserialization fails if `T` is a struct but the YAML value is not a map. It can also fail when the structure is correct but `T`'s `Deserialize` implementation rejects the data, such as when required struct fields are missing or a number is too large for the expected primitive type.
