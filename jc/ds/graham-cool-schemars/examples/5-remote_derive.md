# Deriving JsonSchema for a Type in a Different Crate

Rust's [orphan rule](https://doc.rust-lang.org/book/traits.html#rules-for-implementing-traits) requires that either the trait or the type for which you are implementing the trait must be defined in the same crate as the impl, so it is not possible to implement `JsonSchema` for a type in a different crate directly. 

To work around this, Schemars provides a way of deriving `JsonSchema` implementations for types in other people's crates. The only catch is that you have to provide a definition of the type for Schemars's derive to process.

This is the same way that Serde allows remote deriving, which is why this page reads so similarly to [Serde's documentation](https://serde.rs/remote-derive.html)! 

```text
// Pretend that this is somebody else's crate, not a module.
mod other_crate {
    // Neither Schemars nor the other crate provides a JsonSchema impl
    // for this struct.
    pub struct Duration {
        pub secs: i64,
        pub nanos: i32,
    }
}

////////////////////////////////////////////////////////////////////////////////

use other_crate::Duration;
use schemars::{schema_for, JsonSchema};

// This is just a copy of the remote data structure that Schemars can use to
// create a suitable JsonSchema impl.
#[derive(JsonSchema)]
#[serde(remote = "Duration")]
pub struct DurationDef {
    pub secs: i64,
    pub nanos: i32,
}

// Now the remote type can be used almost like it had its own JsonSchema impl
// all along. The `with` attribute gives the path to the definition for the
// remote type. Note that the real type of the field is the remote type, not
// the definition type.
#[derive(JsonSchema)]
pub struct Process {
    pub command_line: String,
    #[serde(with = "DurationDef")]
    pub wall_time: Duration,
    // Generic types must be explicitly specified with turbofix `::<>` syntax.
    #[serde(with = "Vec::")]
    pub durations: Vec<Duration>,
}

fn main() {
    let schema = schema_for!(Process);
    println!("{}", serde_json::to_string_pretty(&schema).unwrap());
}
```

Click to see the output JSON schema...

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "Process",
  "type": "object",
  "properties": {
    "command_line": {
      "type": "string"
    },
    "durations": {
      "type": "array",
      "items": {
        "$ref": "#/$defs/Duration"
      }
    },
    "wall_time": {
      "$ref": "#/$defs/Duration"
    }
  },
  "required": ["command_line", "wall_time", "durations"],
  "$defs": {
    "Duration": {
      "type": "object",
      "properties": {
        "nanos": {
          "type": "integer",
          "format": "int32"
        },
        "secs": {
          "type": "integer",
          "format": "int64"
        }
      },
      "required": ["secs", "nanos"]
    }
  }
}
```
