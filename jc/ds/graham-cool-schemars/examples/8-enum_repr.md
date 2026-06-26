1. Examples / 2. Serialize Enum as Number (serde_repr)

# Serialize Enum as Number (serde_repr Compatibility)

If you use the `#[repr(...)]` attribute on an enum to give it a C-like representation, then you may also want to use the [serde_repr](https://github.com/dtolnay/serde-repr) crate to serialize the enum values as numbers. In this case, you should use the corresponding `JsonSchema_repr` derive to ensure the schema for your type reflects how serde formats your type.

```rust
use schemars::{schema_for, JsonSchema_repr};

#[derive(JsonSchema_repr)]
#[repr(u8)]
enum SmallPrime {
    Two = 2,
    Three = 3,
    Five = 5,
    Seven = 7,
}

fn main() {
    let schema = schema_for!(SmallPrime);
    println!("{}", serde_json::to_string_pretty(&schema).unwrap());
}
```

Click to see the output JSON schema...

```json
{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "title": "SmallPrime",
    "type": "integer",
    "enum": [2, 3, 5, 7]
}
```
