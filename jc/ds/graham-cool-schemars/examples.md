# Examples

- [Deriving JsonSchema](/schemars/examples/1-derive_jsonschema/) - Deriving JsonSchema on a struct and enum.
- [Using Serde Attributes](/schemars/examples/2-serde_attrs/) - Deriving JsonSchema on types that use `#[serde]` attributes to customise serialization behaviour.
- [Using Schemars Attributes](/schemars/examples/3-schemars_attrs/) - Deriving JsonSchema on types that use `#[schemars]` attributes to customise serialization behaviour.
- [Custom Schema Settings](/schemars/examples/4-custom_settings/) - Generating a schema using custom settings which changes how Option is handled.
- [Derive for Remote Crate](/schemars/examples/5-remote_derive/) - Deriving JsonSchema implementations for a type in somebody else's crate.
- [Doc Comments](/schemars/examples/6-doc_comments/) - Giving schemas a custom title and/or description using doc comments.
- [Custom Serialization](/schemars/examples/7-custom_serialization/) - If a field has a `#[serde(with = "path")]` attribute where "path" is not a type that implements JsonSchema, then in order to derive JsonSchema on the type, it must also have a `#[schemars(with = "Type")]` attribute, where "Type" implements JsonSchema.
- [Serialize Enum as Number (serde_repr)](/schemars/examples/8-enum_repr/) - Generating a schema for with a C-like enum compatible with serde_repr.
- [Generate Schema from Example Value](/schemars/examples/9-from_value/) - Generating a schema for a serializable value.
