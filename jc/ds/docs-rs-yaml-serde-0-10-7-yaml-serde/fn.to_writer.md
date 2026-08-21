# `to_writer` in `yaml_serde` - Rust

## `yaml_serde` 0.10.7

# Function `to_writer`

[Source](../src/yaml_serde/ser.rs.html#698-705)

```rust
pub fn to_writer<W, T>(writer: W, value: &T) -> Result<(), Error>
where
    W: Write,
    T: ?Sized + Serialize,
```

## Description

Serialize the given data structure as YAML into the I/O stream.

Serialization can fail if `T`'s implementation of `Serialize` decides to return an error.
