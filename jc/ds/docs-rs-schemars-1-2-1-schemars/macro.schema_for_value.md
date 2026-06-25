# schema_for_value

## Macro

```text
macro_rules! schema_for_value {
    ($value:expr) => { ... };
}
```

**Source:** [../src/schemars/macros.rs.html#76-82](../src/schemars/macros.rs.html#76-82)

## Description

Generates a [`Schema`](struct.Schema.html "struct schemars::Schema") for the given example value using default settings. The default settings currently conform to [JSON Schema 2020-12](https://json-schema.org/specification-links#2020-12), but this is liable to change in a future version of Schemars if support for other JSON Schema versions is added.

The value must implement [`Serialize`](https://docs.rs/serde_core/1.0.228/x86_64-unknown-linux-gnu/serde_core/ser/trait.Serialize.html "trait serde_core::ser::Serialize"). If the value also implements [`JsonSchema`](trait.JsonSchema.html "trait schemars::JsonSchema"), then prefer using the [`schema_for!(Type)`](macro.schema_for.html "macro schemars::schema_for") macro which will generally produce a more precise schema, particularly when the value contains any enums.

If the `Serialize` implementation of the value decides to fail, this macro will panic. For a non-panicking alternative, create a [`SchemaGenerator`](struct.SchemaGenerator.html "struct schemars::SchemaGenerator") and use its [`into_root_schema_for_value`](struct.SchemaGenerator.html#method.into_root_schema_for_value "method schemars::SchemaGenerator::into_root_schema_for_value") method.

## Example

```text
use schemars::schema_for_value;

#[derive(serde::Serialize)]
struct MyStruct {
    foo: i32,
}

let my_schema = schema_for_value!(MyStruct { foo: 123 });
```
