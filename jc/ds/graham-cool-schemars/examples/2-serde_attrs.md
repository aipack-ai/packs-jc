# Using Serde Attributes

One of the main aims of this library is compatibility with [Serde](https://github.com/serde-rs/serde). Any generated schema *should* match how [serde_json](https://github.com/serde-rs/json) would serialize/deserialize to/from JSON. To support this, Schemars will check for any `#[serde(...)]` attributes on types that derive `JsonSchema`, and adjust the generated schema accordingly.

The list of supported `#[serde]` attributes are [documented here](/schemars/deriving/attributes/#supported-serde-attributes).

```rust
use schemars::{schema_for, JsonSchema};
use serde::{Deserialize, Serialize};

#[derive(Deserialize, Serialize, JsonSchema)]
#[serde(rename_all = "camelCase", deny_unknown_fields)]
pub struct MyStruct {
    #[serde(rename = "myNumber")]
    pub my_int: i32,
    pub my_bool: bool,
    #[serde(default)]
    pub my_nullable_enum: Option<MyEnum>,
}

#[derive(Deserialize, Serialize, JsonSchema)]
#[serde(untagged)]
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
        "myBool": {
            "type": "boolean"
        },
        "myNullableEnum": {
            "anyOf": [
                { "$ref": "#/$defs/MyEnum" },
                { "type": "null" }
            ],
            "default": null
        },
        "myNumber": {
            "type": "integer",
            "format": "int32"
        }
    },
    "additionalProperties": false,
    "required": [
        "myNumber",
        "myBool"
    ],
    "$defs": {
        "MyEnum": {
            "anyOf": [
                { "type": "string" },
                {
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
            ]
        }
    }
}
```
