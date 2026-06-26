# Schemars

Schemars is a library to generate JSON Schema documents from Rust data structures.

This is built on Rust's trait system - any type which implements the [`JsonSchema`](https://docs.rs/schemars/latest/schemars/trait.JsonSchema.html) trait can have a JSON Schema generated describing that type. Schemars implements this on many standard library types, and provides a derive macro to automatically implement it on custom types.

One of the main aims of this library is compatibility with [Serde](https://github.com/serde-rs/serde). Any generated schema *should* match how [serde\_json](https://github.com/serde-rs/json) would serialize/deserialize to/from JSON. To support this, Schemars will check for any `#[serde(...)]` attributes on types that derive `JsonSchema`, and adjust the generated schema accordingly.

## Basic Usage

If you don't really care about the specifics, the easiest way to generate a JSON schema for your types is to `#[derive(JsonSchema)]` and use the `schema_for!` macro. All fields of the type must also implement `JsonSchema` - Schemars implements this for many standard library types.

Click to see the output JSON schema...

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
