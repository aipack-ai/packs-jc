# Module transform

In crate [schemars](../index.html) version 1.2.1

[Source](../../src/schemars/transform.rs.html#1-757)

Contains the `Transform` trait, used to modify a constructed schema and optionally its subschemas. This trait is automatically implemented for functions of the form `fn(&mut Schema) -> ()`.

## Recursive Transforms

To make a transform recursive (i.e. apply it to subschemas), you have two options:

1. call the `transform_subschemas` function within the transform function
2. wrap the `Transform` in a `RecursiveTransform`

## Examples

To add a custom property to all object schemas:

```rust
use schemars::transform::{Transform, transform_subschemas};
pub struct MyTransform;
impl Transform for MyTransform {
    fn transform(&mut self, schema: &mut Schema) {
        // First, make our change to this schema
        schema.insert("my_property".to_string(), "hello world".into());
        // Then apply the transform to any subschemas
        transform_subschemas(self, schema);
    }
}
let mut schema = json_schema!({
    "type": "array",
    "items": {}
});
MyTransform.transform(&mut schema);
assert_eq!(
    schema,
    json_schema!({
        "type": "array",
        "items": {
            "my_property": "hello world"
        },
        "my_property": "hello world"
    })
);
```

The same example with a `fn` transform:

```rust
use schemars::transform::transform_subschemas;
fn add_property(schema: &mut Schema) {
    schema.insert("my_property".to_string(), "hello world".into());
    transform_subschemas(&mut add_property, schema)
}
let mut schema = json_schema!({
    "type": "array",
    "items": {}
});
add_property(&mut schema);
assert_eq!(
    schema,
    json_schema!({
        "type": "array",
        "items": {
            "my_property": "hello world"
        },
        "my_property": "hello world"
    })
);
```

And the same example using a closure wrapped in a `RecursiveTransform`:

```rust
use schemars::transform::{Transform, RecursiveTransform};
let mut transform = RecursiveTransform(|schema: &mut Schema| {
    schema.insert("my_property".to_string(), "hello world".into());
});
let mut schema = json_schema!({
    "type": "array",
    "items": {}
});
transform.transform(&mut schema);
assert_eq!(
    schema,
    json_schema!({
        "type": "array",
        "items": {
            "my_property": "hello world"
        },
        "my_property": "hello world"
    })
);
```

## Structs

- [AddNullable](struct.AddNullable.html) - Adds a `"nullable": true` property to schemas that allow `null` types.
- [RecursiveTransform](struct.RecursiveTransform.html) - A helper struct that can wrap a non-recursive `Transform` (i.e. one that does not apply to subschemas) into a recursive one.
- [RemoveRefSiblings](struct.RemoveRefSiblings.html) - Restructures JSON Schema objects so that the `$ref` property will never appear alongside any other properties.
- [ReplaceBoolSchemas](struct.ReplaceBoolSchemas.html) - Replaces boolean JSON Schemas with equivalent object schemas.
- [ReplaceConstValue](struct.ReplaceConstValue.html) - Replaces the `const` schema property with a single-valued `enum` property.
- [ReplacePrefixItems](struct.ReplacePrefixItems.html) - Rename the `prefixItems` schema property to `items`.
- [ReplaceUnevaluatedProperties](struct.ReplaceUnevaluatedProperties.html) - Replaces the `unevaluatedProperties` schema property with the `additionalProperties` property, adding properties from a schema’s subschemas to its `properties` where necessary.
- [RestrictFormats](struct.RestrictFormats.html) - Removes any `format` values that are not defined by the JSON Schema standard or explicitly allowed by a custom list.
- [SetSingleExample](struct.SetSingleExample.html) - Removes the `examples` schema property and (if present) set its first value as the `example` property.

## Traits

- [Transform](trait.Transform.html) - Trait used to modify a constructed schema and optionally its subschemas.

## Functions

- [transform_subschemas](fn.transform_subschemas.html) - Applies the given `Transform` to all direct subschemas of the `Schema`.
