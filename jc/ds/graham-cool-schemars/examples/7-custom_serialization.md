1. [Examples](/schemars/examples/)  
2. Custom Serialization

# [](#deriving-jsonschema-with-fields-using-custom-serialization) Deriving JsonSchema with Fields Using Custom Serialization

Serde allows you to change how a field is (de)serialized by setting a [`#[serde(with = "path")]`](https://serde.rs/field-attrs.html#with) attribute, where `$path::serialize` and `$path::deserialize` must be functions with the correct signature. Schemars supports the same attribute, but `path` must be a type implementing `JsonSchema`.

In order to derive `JsonSchema` on a type which includes a `#[serde(with = "path")]` attribute where `path` is not a type implementing `JsonSchema`, you'll need to override it with a suitable `#[schemars(with = "Type")]` or `#[schemars(schema_with = "path")]` attribute.

```rust
use schemars::{schema_for, JsonSchema, Schema, SchemaGenerator};
use serde::{Deserialize, Serialize};

// `int_as_string` and `bool_as_string` use the schema for `String`.
#[derive(Default, Deserialize, Serialize, JsonSchema)]
pub struct MyStruct {
    #[serde(default = "eight", with = "as_string")]
    #[schemars(with = "String")]
    pub int_as_string: i32,
    #[serde(default = "eight")]
    pub int_normal: i32,
    #[serde(default, with = "as_string")]
    #[schemars(schema_with = "make_custom_schema")]
    pub bool_as_string: bool,
    #[serde(default)]
    pub bool_normal: bool,
}

fn make_custom_schema(generator: &mut SchemaGenerator) -> Schema {
    let mut schema = String::json_schema(generator);
    schema.insert("format".into(), "boolean".into());
    schema
}

fn eight() -> i32 { 8 }

// This module serializes values as strings
mod as_string {
    use serde::{de::Error, Deserialize, Deserializer, Serializer};

    pub fn serialize<T, S>(value: &T, serializer: S) -> Result<S::Ok, S::Error>
    where
        T: std::fmt::Display,
        S: Serializer,
    {
        serializer.collect_str(value)
    }

    pub fn deserialize<'de, T, D>(deserializer: D) -> Result<T, D::Error>
    where
        T: std::str::FromStr,
        D: Deserializer<'de>,
    {
        let string = String::deserialize(deserializer)?;
        string.parse().map_err(|_| D::Error::custom("Input was not valid"))
    }
}

fn main() {
    let schema = schema_for!(MyStruct);
    println!("{}", serde_json::to_string_pretty(&schema).unwrap());
}
```

Click to see the output JSON schema...

```json
{"$schema":"https://json-schema.org/draft/2020-12/schema","title":"MyStruct","type":"object","properties":{"bool_as_string":{"type":"string","format":"boolean","default":"false"},"bool_normal":{"type":"boolean","default":false},"int_as_string":{"type":"string","default":"8"},"int_normal":{"type":"integer","format":"int32","default":8}}}
```

Note that the `default` values in the schema are serialized as strings where appropriate.
