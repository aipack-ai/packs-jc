# Module `with`

[Source](../../src/yaml_serde/with.rs.html#1-2129)

Customizations for use with Serde’s `#[serde(with = ...)]` attribute.

## Modules

### [`singleton_map`](singleton_map/index.html)

Serialize and deserialize an enum using a YAML map containing one entry, where the key identifies the variant name.

### [`singleton_map_recursive`](singleton_map_recursive/index.html)

Apply [`singleton_map`](singleton_map/index.html) to all enums contained within a data structure.
