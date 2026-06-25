# Transform (in `schemars::transform`)

**Module:** [schemars](../index.html)::[transform](index.html)

[Source](../../src/schemars/transform.rs.html#118-132)

Trait used to modify a constructed schema and optionally its subschemas.

See the [module documentation](index.html "mod schemars::transform") for more details on implementing this trait.

```rust
pub trait Transform {
    // Required method
    fn transform(&mut self, schema: &mut Schema);
}
```

## Required Methods

- `fn transform(&mut self, schema: &mut Schema)` – Applies the transform to the given [`Schema`](../struct.Schema.html "struct schemars::Schema"). When overriding this method, you may want to call the [`transform_subschemas`](fn.transform_subschemas.html "fn schemars::transform::transform_subschemas") function to also transform any subschemas.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightry/reference/items/traits.html#dyn-compatibility). *In older versions of Rust, dyn compatibility was called "object safety".*

## Implementors

- `impl Transform for [AddNullable](struct.AddNullable.html "struct schemars::transform::AddNullable")` – [source](../../src/schemars/transform.rs.html#433-466)
- `impl Transform for [RemoveRefSiblings](struct.RemoveRefSiblings.html "struct schemars::transform::RemoveRefSiblings")` – [source](../../src/schemars/transform.rs.html#321-336)
- `impl Transform for [ReplaceBoolSchemas](struct.ReplaceBoolSchemas.html "struct schemars::transform::ReplaceBoolSchemas")` – [source](../../src/schemars/transform.rs.html#290-308)
- `impl Transform for [ReplaceConstValue](struct.ReplaceConstValue.html "struct schemars::transform::ReplaceConstValue")` – [source](../../src/schemars/transform.rs.html#371-379)
- `impl Transform for [ReplacePrefixItems](struct.ReplacePrefixItems.html "struct schemars::transform::ReplacePrefixItems")` – [source](../../src/schemars/transform.rs.html#394-406)
- `impl Transform for [ReplaceUnevaluatedProperties](struct.ReplaceUnevaluatedProperties.html "struct schemars::transform::ReplaceUnevaluatedProperties")` – [source](../../src/schemars/transform.rs.html#479-508)
- `impl Transform for [RestrictFormats](struct.RestrictFormats.html "struct schemars::transform::RestrictFormats")` – [source](../../src/schemars/transform.rs.html#626-636)
- `impl Transform for [SetSingleExample](struct.SetSingleExample.html "struct schemars::transform::SetSingleExample")` – [source](../../src/schemars/transform.rs.html#349-359)
- `impl Transform for F` where F: `FnMut(&mut Schema)` – [source](../../src/schemars/transform.rs.html#134-141)
- `impl Transform for [RecursiveTransform](struct.RecursiveTransform.html "struct schemars::transform::RecursiveTransform")<T>` where T: `Transform` – [source](../../src/schemars/transform.rs.html#264-272)
