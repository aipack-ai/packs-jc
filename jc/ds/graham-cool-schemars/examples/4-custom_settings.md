# Custom Schema Settings

1. [Examples](/schemars/examples/)
2. Custom Schema Settings

The `generate` module allows you to customise how schemas are generated. For example, the default behaviour for `Option` is to include `null` in the schema's `type`s, but we can instead add a `nullable` property to its schema:

```text
use schemars::{generate::SchemaSettings, JsonSchema};

#[derive(JsonSchema)]
pub struct MyStruct {
    pub my_int: i32,
    pub my_bool: bool,
    pub my_nullable_enum: Option<MyEnum>,
}

#[derive(JsonSchema)]
pub enum MyEnum {
    StringNewType(String),
    StructVariant { floats: Vec<f32> },
}

fn main() {
    let settings = SchemaSettings::draft07().with(|s| {
        s.meta_schema = None;
        s.inline_subschemas = true;
    });
    let generator = settings.into_generator();
    let schema = generator.into_root_schema_for::<MyStruct>();
    println!("{}", serde_json::to_string_pretty(&schema).unwrap());
}
```

Click to see the output JSON schema...

```json
{
  "title": "MyStruct",
  "type": "object",
  "properties": {
    "my_bool": {
      "type": "boolean"
    },
    "my_int": {
      "type": "integer",
      "format": "int32"
    },
    "my_nullable_enum": {
      "anyOf": [
        {
          "oneOf": [
            {
              "type": "object",
              "properties": {
                "StringNewType": {
                  "type": "string"
                }
              },
              "additionalProperties": false,
              "required": ["StringNewType"]
            },
            {
              "type": "object",
              "properties": {
                "StructVariant": {
                  "type": "object",
                  "properties": {
                    "floats": {
                      "type": "array",
                      "items": {
                        "type": "number",
                        "format": "float"
                      }
                    }
                  },
                  "required": ["floats"]
                }
              },
              "additionalProperties": false,
              "required": ["StructVariant"]
            }
          ]
        },
        {
          "type": "null"
        }
      ]
    }
  },
  "required": ["my_int", "my_bool"]
}
```
