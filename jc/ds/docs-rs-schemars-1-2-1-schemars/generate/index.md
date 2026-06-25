# Module generate

[Source](../../src/schemars/generate.rs.html#1-794)

Expand description

JSON Schema generator and settings.

This module is useful if you want more control over how the schema generated than the [`schema_for!`](../macro.schema_for.html "macro schemars::schema_for") macro gives you. There are two main types in this module:

- [`SchemaSettings`](struct.SchemaSettings.html "struct schemars::generate::SchemaSettings"), which defines what JSON Schema features should be used when generating schemas (for example, how `Option`s should be represented).
- [`SchemaGenerator`](../struct.SchemaGenerator.html "struct schemars::SchemaGenerator"), which manages the generation of a schema document.

## Structs

- [SchemaGenerator](struct.SchemaGenerator.html "struct schemars::generate::SchemaGenerator") – The main type used to generate JSON Schemas.
- [SchemaSettings](struct.SchemaSettings.html "struct schemars::generate::SchemaSettings") – Settings to customize how Schemas are generated.

## Enums

- [Contract](enum.Contract.html "enum schemars::generate::Contract") – A setting to specify whether generated schemas should describe how types are serialized or *de*serialized.

## Traits

- [GenTransform](trait.GenTransform.html "trait schemars::generate::GenTransform") – A [`Transform`](../transform/trait.Transform.html "trait schemars::transform::Transform") which implements additional traits required to be included in a [`SchemaSettings`](struct.SchemaSettings.html "struct schemars::generate::SchemaSettings").
