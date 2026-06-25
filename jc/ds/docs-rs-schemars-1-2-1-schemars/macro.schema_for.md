# schema_for

Macro in [schemars](../schemars/index.html) 1.2.1

[Source](../src/schemars/macros.rs.html#19-23)

```rust
macro_rules! schema_for {
    ($type:ty) => { ... };
}
```

Generates a [`Schema`](struct.Schema.html) for the given type using default settings. The default settings currently conform to [JSON Schema 2020-12](https://json-schema.org/specification-links#2020-12), but this is liable to change in a future version of Schemars if support for other JSON Schema versions is added.

The type must implement [`JsonSchema`](trait.JsonSchema.html).

## Example

```rust
use schemars::{schema_for, JsonSchema};

#[derive(JsonSchema)]
struct MyStruct {
    foo: i32,
}

let my_schema = schema_for!(MyStruct);
```
