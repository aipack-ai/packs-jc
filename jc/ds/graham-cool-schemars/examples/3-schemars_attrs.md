1. [Examples](/schemars/examples/)
2. Using Schemars Attributes

# Using Schemars Attributes

`#[serde(...)]` attributes can be overridden (or replaced) with `#[schemars(...)]` attributes, which behave identically. You may find this useful if you want to change the generated schema without affecting Serde's behaviour, or if you're just not using Serde.

```text
use schemars::{schema_for, JsonSchema, Schema};
use serde::{Deserialize, Serialize};

#[derive(Deserialize, Serialize, JsonSchema)]
#[schemars(rename_all = "camelCase", deny_unknown_fields, extend("x-customProperty" = "example"))]
pub struct MyStruct {
    #[serde(rename = "thisIsOverridden")]
    #[schemars(rename = "myNumber", range(min = 1, max = 10), transform = remove_format)]
    pub my_int: i32,
    pub my_bool: bool,
    #[schemars(default)]
    pub my_nullable_enum: Option<MyEnum>,
    #[schemars(inner(regex(pattern = "^x$")))]
    pub my_vec_str: Vec<String>,
}

#[derive(Deserialize, Serialize, JsonSchema)]
#[schemars(untagged)]
pub enum MyEnum {
    StringNewType(#[schemars(email)] String),
    StructVariant {
        #[schemars(length(min = 1, max = 100))]
        floats: Vec<f32>,
    },
}

fn remove_format(schema: &mut Schema) {
    schema.remove("format");
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
    "myBool": {
      "type": "boolean"
    },
    "myNullableEnum": {
      "anyOf": [
        {
          "$ref": "#/$defs/MyEnum"
        },
        {
          "type": "null"
        }
      ],
      "default": null
    },
    "myNumber": {
      "type": "integer",
      "maximum": 10,
      "minimum": 1
    },
    "myVecStr": {
      "type": "array",
      "items": {
        "type": "string",
        "pattern": "^x$"
      }
    }
  },
  "additionalProperties": false,
  "required": [
    "myNumber",
    "myBool",
    "myVecStr"
  ],
  "x-customProperty": "example",
  "$defs": {
    "MyEnum": {
      "anyOf": [
        {
          "type": "string",
          "format": "email"
        },
        {
          "type": "object",
          "properties": {
            "floats": {
              "type": "array",
              "items": {
                "type": "number",
                "format": "float"
              },
              "maxItems": 100,
              "minItems": 1
            }
          },
          "required": [
            "floats"
          ]
        }
      ]
    }
  }
}
```
