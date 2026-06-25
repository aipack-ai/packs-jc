# SchemaGenerator

Module: `schemars::generate`

The main type used to generate JSON Schemas.

## Example

```rust
use schemars::{JsonSchema, SchemaGenerator};
#[derive(JsonSchema)]
struct MyStruct {
    foo: i32,
}
let generator = SchemaGenerator::default();
let schema = generator.into_root_schema_for::<MyStruct>();
```

## Definition

```rust
pub struct SchemaGenerator { /* private fields */ }
```

## Implementations

### `impl SchemaGenerator`

- **`pub fn new(settings: SchemaSettings) -> SchemaGenerator`**  
  Creates a new `SchemaGenerator` using the given settings.

- **`pub fn settings(&self) -> &SchemaSettings`**  
  Borrows the `SchemaSettings` being used.

  Example:
  ```rust
  use schemars::SchemaGenerator;
  let generator = SchemaGenerator::default();
  let settings = generator.settings();
  assert_eq!(settings.inline_subschemas, false);
  ```

- **`pub fn subschema_for<T: ?Sized + JsonSchema>(&mut self) -> Schema`**  
  Generates a JSON Schema for type `T` and returns either the schema itself or a `$ref` schema.

- **`pub fn definitions(&self) -> &JsonMap<String, Value>`**  
  Borrows the collection of all non-inlined schemas that have been generated.

- **`pub fn definitions_mut(&mut self) -> &mut JsonMap<String, Value>`**  
  Mutably borrows the collection of all non-inlined schemas.

- **`pub fn take_definitions(&mut self, apply_transforms: bool) -> JsonMap<String, Value>`**  
  Returns the collection of all non-inlined schemas, leaving an empty map in its place.

- **`pub fn transforms_mut(&mut self) -> impl Iterator<Item = &mut Box<dyn GenTransform>>`**  
  Returns an iterator over the transforms being used.

- **`pub fn root_schema_for<T: ?Sized + JsonSchema>(&mut self) -> Schema`**  
  Generates a JSON Schema for type `T`, including definitions if any.

- **`pub fn into_root_schema_for<T: ?Sized + JsonSchema>(self) -> Schema`**  
  Consumes `self` and generates a JSON Schema for type `T`.

- **`pub fn root_schema_for_value<T: ?Sized + Serialize>(&mut self, value: &T) -> Result<Schema, Error>`**  
  Generates a JSON Schema from an example value.

- **`pub fn into_root_schema_for_value<T: ?Sized + Serialize>(self, value: &T) -> Result<Schema, Error>`**  
  Consumes `self` and generates a JSON Schema from an example value.

- **`pub fn contract(&self) -> &Contract`**  
  Returns a reference to the contract for the settings.

## Trait Implementations

- **`impl Clone for SchemaGenerator`**  
  `fn clone(&self) -> Self`

- **`impl Debug for SchemaGenerator`**  
  `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

- **`impl Default for SchemaGenerator`**  
  `fn default() -> Self`

- **`impl From<SchemaSettings> for SchemaGenerator`**  
  `fn from(settings: SchemaSettings) -> Self`

## Auto Trait Implementations

- `!RefUnwindSafe`
- `!Sync`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

- `Any` (where T: 'static + ?Sized)
- `Borrow<T>` (where T: ?Sized)
- `BorrowMut<T>` (where T: ?Sized)
- `CloneToUninit` (where T: Clone)
- `DynClone` (where T: Clone)
- `ErasedDestructor` (where T: 'static)
- `From<T>`
- `Into<U>` (where U: From<T>)
- `IntoEither`
- `MaybeSendSync`
- `ToOwned` (where T: Clone)
- `TryFrom<U>` (where U: Into<T>)
- `TryInto<U>` (where U: TryFrom<T>)
