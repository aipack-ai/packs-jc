# GenTransform in schemars::generate - Rust

## Trait `GenTransform`

[Source](../../src/schemars/generate.rs.html#683-695)

```rust
pub trait GenTransform:
    Transform
    + DynClone
    + Any
    + Send
{ }
```

A [`Transform`](../transform/trait.Transform.html) which implements additional traits required to be included in a [`SchemaSettings`](struct.SchemaSettings.html).

You will rarely need to use this trait directly as it is automatically implemented for any type which implements all of:

- [`Transform`](../transform/trait.Transform.html)
- [`std::any::Any`](https://doc.rust-lang.org/nightly/core/any/trait.Any.html) (implemented for all `'static` types)
- [`std::clone::Clone`](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html)
- [`std::marker::Send`](https://doc.rust-lang.org/nightly/core/marker/trait.Send.html)

## Example

```rust
use schemars::transform::Transform;
use schemars::generate::GenTransform;

#[derive(Debug, Clone)]
struct MyTransform;

impl Transform for MyTransform {
    fn transform(&mut self, schema: &mut schemars::Schema) {
        todo!()
    }
}

let v: &dyn GenTransform = &MyTransform;
assert!(v.is::<MyTransform>());
```

## Implementations

### impl dyn GenTransform

[Source](../../src/schemars/generate.rs.html#698-761)

#### pub fn is<T>(&self) -> bool where T: Transform + Clone + Any + Send

Returns `true` if the inner transform is of type `T`.

#### pub fn downcast_ref<T>(&self) -> Option<&T> where T: Transform + Clone + Any + Send

Returns some reference to the inner transform if it is of type `T`, or `None` if it isn’t.

##### Example

```rust
use schemars::generate::SchemaSettings;
use schemars::transform::ReplaceBoolSchemas;

let mut settings = SchemaSettings::openapi3();
let original_len = settings.transforms.len();
settings.transforms.retain(|t| !t.is::<ReplaceBoolSchemas>());
assert_eq!(settings.transforms.len(), original_len - 1);
```

#### pub fn downcast_mut<T>(&mut self) -> Option<&mut T> where T: Transform + Clone + Any + Send

Returns some mutable reference to the inner transform if it is of type `T`, or `None` if it isn’t.

##### Example

```rust
use schemars::generate::SchemaSettings;
use schemars::transform::ReplaceBoolSchemas;

let mut settings = SchemaSettings::openapi3();
for t in &mut settings.transforms {
    if let Some(replace_bool_schemas) = t.downcast_mut::<ReplaceBoolSchemas>() {
        replace_bool_schemas.skip_additional_properties = false;
    }
}
```

#### pub fn downcast<T>(self: Box<dyn GenTransform>) -> Result<Box<T>, Box<dyn GenTransform>> where T: Transform + Clone + Any + Send

Attempts to downcast the box to a concrete type. If the inner transform is not of type `T`, this returns `self` wrapped in an `Err`.

## Trait Implementations

### impl Debug for Box<dyn GenTransform>

[Source](../../src/schemars/generate.rs.html#782-787)

#### fn fmt(&self, f: &mut Formatter<'_>) -> Result

Formats the value using the given formatter.

## Dyn Compatibility

This trait **is** dyn compatible.

## Implementors

### impl GenTransform for T where T: Transform + Clone + Any + Send

[Source](../../src/schemars/generate.rs.html#765-780)
