# Generating Schemas

The easiest way to generate a schema for a type that implements `JsonSchema` is to use the [`schema_for!` macro](https://docs.rs/schemars/latest/schemars/macro.schema_for.html), like so:

```text
let my_schema = schema_for!(MyStruct);
```

This will create a schema that conforms to [JSON Schema 2020-12](https://json-schema.org/specification-links#2020-12), but this is liable to change in a future version of Schemars if support for other JSON Schema versions is added.

If you want more control over how the schema is generated, you can use the [`generate` module](https://docs.rs/schemars/latest/schemars/generate/). There are two main types in this module:

- [`SchemaSettings`](https://docs.rs/schemars/latest/schemars/generate/struct.SchemaSettings.html), which defines what JSON Schema features should be used when generating schemas (for example, how `Option`s should be represented).
- [`SchemaGenerator`](https://docs.rs/schemars/latest/schemars/generate/struct.SchemaGenerator.html), which manages the generation of a schema document.

For example, to generate a schema that conforms to [JSON Schema Draft 7](https://json-schema.org/specification-links.html#draft-7):

```text
let generator = SchemaSettings::draft07().into_generator();
let my_schema = generator.into_root_schema_for::<MyStruct>();
```

See the API documentation for more info on how to use those types for custom schema generation.

### Serialize vs. Deserialize contract

Of particular note is the `contract` setting, which controls whether the generated schemas should describe how types are serialized or how they're *de*serialized. By default, this is set to `Deserialize`. If you instead want your schema to describe the serialization behaviour, modify the `contract` field of `SchemaSettings` or use the `for_serialize()` helper method:

```text
use schemars::{generate::SchemaSettings, JsonSchema};
use serde::{Deserialize, Serialize};

#[derive(JsonSchema, Deserialize, Serialize)]
// The schema effectively ignores this `rename_all`, since it doesn't apply to serialization
#[serde(rename_all(deserialize = "PascalCase"))]
pub struct MyStruct {
    pub my_int: i32,
    #[serde(skip_deserializing)]
    pub my_read_only_bool: bool,
    // This property is excluded from the schema
    #[serde(skip_serializing)]
    pub my_write_only_bool: bool,
    // This property is excluded from the "required" properties of the schema, because it may be
    // be skipped during serialization
    #[serde(skip_serializing_if = "str::is_empty")]
    pub maybe_string: String,
    pub definitely_string: String,
}

fn main() {
    // By default, generated schemas describe how types are deserialized.
    // So we modify the settings here to instead generate schemas describing how it's serialized:
    let settings = SchemaSettings::default().for_serialize();
    let generator = settings.into_generator();
    let schema = generator.into_root_schema_for::<MyStruct>();
    println!("{}", serde_json::to_string_pretty(&schema).unwrap());
}
```

Click to see the output JSON schema...

```json
{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "title": "MyStruct",
    "type": "object",
    "properties": {
        "definitely_string": {
            "type": "string"
        },
        "maybe_string": {
            "type": "string"
        },
        "my_int": {
            "type": "integer",
            "format": "int32"
        },
        "my_read_only_bool": {
            "type": "boolean",
            "default": false,
            "readOnly": true
        }
    },
    "required": [
        "my_int",
        "my_read_only_bool",
        "definitely_string"
    ]
}
```

## Schema from Example Value

If you want a schema for a type that can't/doesn't implement `JsonSchema`, but does implement `serde::Serialize`, then you can generate a JSON schema from a value of that type using the [`schema_for_value!` macro](https://docs.rs/schemars/latest/schemars/macro.schema_for_value.html). However, this schema will generally be less precise than if the type implemented `JsonSchema` - particularly when it involves enums, since schemars will not make any assumptions about the structure of an enum based on a single variant.

```text
use schemars::schema_for_value;
use serde::Serialize;

#[derive(Serialize)]
pub struct MyStruct {
    pub my_int: i32,
    pub my_bool: bool,
    pub my_nullable_enum: Option<MyEnum>,
}

#[derive(Serialize)]
pub enum MyEnum {
    StringNewType(String),
    StructVariant { floats: Vec<f32> },
}

fn main() {
    let schema = schema_for_value!(MyStruct {
        my_int: 123,
        my_bool: true,
        my_nullable_enum: Some(MyEnum::StringNewType("foo".to_string()))
    });
    println!("{}", serde_json::to_string_pretty(&schema).unwrap());
}
```

Click to see the output JSON schema...

```json
{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "title": "MyStruct",
    "type": "object",
    "properties": {
        "my_bool": {
            "type": "boolean"
        },
        "my_int": {
            "type": "integer"
        },
        "my_nullable_enum": true
    },
    "examples": [
        {
            "my_bool": true,
            "my_int": 123,
            "my_nullable_enum": {
                "StringNewType": "foo"
            }
        }
    ]
}
```
