1. [Examples](/schemars/examples/)
2. Deriving JsonSchema

# Deriving JsonSchema

This is the simplest usage of Schemars. Both types are made to derive `JsonSchema`, and the `schema_for!` macro is used to generate the schema itself.

```text
use schemars::{schema_for, JsonSchema};

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
    let schema = schema_for!(MyStruct);
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
      "type": "integer",
      "format": "int32"
    },
    "my_nullable_enum": {
      "anyOf": [
        {
          "$ref": "#/$defs/MyEnum"
        },
        {
          "type": "null"
        }
      ]
    }
  },
  "required": [
    "my_int",
    "my_bool"
  ],
  "$defs": {
    "MyEnum": {
      "oneOf": [
        {
          "type": "object",
          "properties": {
            "StringNewType": {
              "type": "string"
            }
          },
          "additionalProperties": false,
          "required": [
            "StringNewType"
          ]
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
              "required": [
                "floats"
              ]
            }
          },
          "additionalProperties": false,
          "required": [
            "StructVariant"
          ]
        }
      ]
    }
  }
}
```
