# transform\_subschemas in schemars::transform

[Skip to main content](#main-content)

## [schemars](../../schemars/index.html) 1.2.1

In [schemars::transform](index.html)

### Function `transform_subschemas`

[Source](../../src/schemars/transform.rs.html#144-198)

```rust
pub fn transform_subschemas<T: Transform + ?Sized>(
    t: &mut T,
    schema: &mut Schema,
)
```

Expand description

Applies the given [`Transform`](trait.Transform.html "trait schemars::transform::Transform") to all direct subschemas of the [`Schema`](../struct.Schema.html "struct schemars::Schema").
