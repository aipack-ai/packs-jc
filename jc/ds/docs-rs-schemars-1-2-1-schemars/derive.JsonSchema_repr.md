# JsonSchema_repr

Derive macro for generating JSON Schema for enums with integer representations (repr) in the `schemars` crate (version 1.2.1).

## Source

[Source](https://docs.rs/schemars_derive/1.2.1/x86_64-unknown-linux-gnu/src/schemars_derive/lib.rs.html#40)

## Macro Definition

```rust
#[derive(JsonSchema_repr)]
{
    // Attributes available to this derive:
    #[schemars]
    #[serde]
}
```

## Attributes

- `#[schemars]` – Custom attributes for schema generation.
- `#[serde]` – Attributes from the `serde` crate for serialization/deserialization.
