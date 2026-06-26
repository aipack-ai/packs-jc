# Setting a Custom Title and/or Description Using Doc Comments

If a struct, variant or field has any [doc comments](https://doc.rust-lang.org/stable/rust-by-example/meta/doc.html#doc-comments) (or [`doc` attributes](https://doc.rust-lang.org/rustdoc/the-doc-attribute.html)), then these will be used as the generated schema's `description`. If the first line is an ATX-style markdown heading (i.e. it begins with a # character), then it will be used as the schema's `title`, and the remaining lines will be the `description`.

```text
use schemars::{schema_for, JsonSchema};

/// # My Amazing Struct
/// This struct shows off generating a schema with
/// a custom title and description.
#[derive(JsonSchema)]
pub struct MyStruct {
    /// # My Amazing Integer
    pub my_int: i32,
    /// This bool has a description, but no title.
    pub my_bool: bool,
    /// # A Nullable Enum
    /// This enum might be set, or it might not.
    pub my_nullable_enum: Option<MyEnum>,
}

/// # My Amazing Enum
#[derive(JsonSchema)]
pub enum MyEnum {
    /// A wrapper around a `String`
    StringNewType(String),
    /// A struct-like enum variant which contains
    /// some floats
    StructVariant {
        /// The floats themselves
        floats: Vec<f32>,
    },
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
  "title": "My Amazing Struct",
  "description": "This struct shows off generating a schema with\na custom title and description.",
  "type": "object",
  "properties": {
    "my_bool": {
      "description": "This bool has a description, but no title.",
      "type": "boolean"
    },
    "my_int": {
      "title": "My Amazing Integer",
      "type": "integer",
      "format": "int32"
    },
    "my_nullable_enum": {
      "title": "A Nullable Enum",
      "description": "This enum might be set, or it might not.",
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
      "title": "My Amazing Enum",
      "oneOf": [
        {
          "description": "A wrapper around a `String`",
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
          "description": "A struct-like enum variant which contains\nsome floats",
          "type": "object",
          "properties": {
            "StructVariant": {
              "type": "object",
              "properties": {
                "floats": {
                  "description": "The floats themselves",
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
