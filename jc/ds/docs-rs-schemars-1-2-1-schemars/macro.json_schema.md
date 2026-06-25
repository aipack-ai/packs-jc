# json_schema

## Description

Construct a `Schema` from a JSON literal. This can either be a JSON object, or a boolean (`true` or `false`). You can interpolate variables or expressions into a JSON object using the same rules as the `serde_json::json` macro.

## Macro Definition

```text
macro_rules! json_schema {
    (
        {$($json_object:tt)*}
    ) => { ... };
    (true) => { ... };
    (false) => { ... };
}
```

## Example

```text
use schemars::{Schema, json_schema};
let desc = "A helpful description.";
let my_schema: Schema = json_schema!({
    "description": desc,
    "type": ["object", "null"]
});
```
