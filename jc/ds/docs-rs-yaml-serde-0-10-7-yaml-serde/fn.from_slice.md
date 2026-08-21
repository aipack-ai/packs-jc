# Function `from_slice`

## `yaml_serde` 0.10.7

[Source](../src/yaml_serde/de.rs.html#1841-1846)

```rust
pub fn from_slice<'de, T>(v: &'de [u8]) -> Result<T, Error>
where
    T: Deserialize<'de>,
```

Deserialize an instance of type `T` from bytes of YAML text.

This conversion can fail if the structure of the value does not match the structure expected by `T`, for example, if `T` is a struct type but the value contains something other than a YAML map. It can also fail if the structure is correct but `T`'s implementation of `Deserialize` determines that something is wrong with the data, such as required struct fields being missing from the YAML map or a number being too large to fit in the expected primitive type.
