# Generate Schema from Example Value

If you want a schema for a type that can't/doesn't implement `JsonSchema`, but does implement [`serde::Serialize`](https://docs.serde.rs/serde/trait.Serialize.html), then you can generate a JSON schema from a value of that type. However, this schema will generally be less precise than if the type implemented `JsonSchema` - particularly when it involves enums, since schemars will not make any assumptions about the structure of an enum based on a single variant.

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

Note that the schema for the enum is not very useful in this case, since schemars doesn't know anything about the second variant.
