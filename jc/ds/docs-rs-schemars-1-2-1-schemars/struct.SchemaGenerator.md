# SchemaGenerator

In crate [schemars](index.html)

## Struct Definition

```
pub struct SchemaGenerator { /* private fields */ }
```

## Description

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

## Implementations

### impl SchemaGenerator

- **`pub fn new(settings: SchemaSettings) -> SchemaGenerator`**  
  Creates a new `SchemaGenerator` using the given settings.  
  [Source](../src/schemars/generate.rs.html#273-282)

- **`pub fn settings(&self) -> &SchemaSettings`**  
  Borrows the [`SchemaSettings`](generate/struct.SchemaSettings.html) being used by this `SchemaGenerator`.  
  [Source](../src/schemars/generate.rs.html#296-298)

- **`pub fn subschema_for<T: ?Sized + JsonSchema>(&mut self) -> Schema`**  
  Generates a JSON Schema for type `T`, returning either the schema itself or a `$ref` schema.  
  [Source](../src/schemars/generate.rs.html#309-384)

- **`pub fn definitions(&self) -> &JsonMap<String, Value>`**  
  Borrows the collection of all non-inlined schemas that have been generated.  
  [Source](../src/schemars/generate.rs.html#405-407)

- **`pub fn definitions_mut(&mut self) -> &mut JsonMap<String, Value>`**  
  Mutably borrows the collection of all non-inlined schemas.  
  [Source](../src/schemars/generate.rs.html#415-417)

- **`pub fn take_definitions(&mut self, apply_transforms: bool) -> JsonMap<String, Value>`**  
  Returns the collection of all non-inlined schemas, leaving an empty Map in its place.  
  [Source](../src/schemars/generate.rs.html#427-437)

- **`pub fn transforms_mut(&mut self) -> impl Iterator<Item = &mut SchemaTransform>`**  
  Returns an iterator over the transforms being used by this `SchemaGenerator`.  
  [Source](../src/schemars/generate.rs.html#441-443)

- **`pub fn root_schema_for<T: ?Sized + JsonSchema>(&mut self) -> Schema`**  
  Generates a JSON Schema for type `T`, including non-inlined schemas at the definitions path.  
  [Source](../src/schemars/generate.rs.html#450-472)

- **`pub fn into_root_schema_for<T: ?Sized + JsonSchema>(self) -> Schema`**  
  Consumes `self` and generates a JSON Schema for type `T`.  
  [Source](../src/schemars/generate.rs.html#480-501)

- **`pub fn root_schema_for_value<T: ?Sized + Serialize>(&mut self, value: &T) -> Result<Schema, Error>`**  
  Generates a JSON Schema for a given example value.  
  [Source](../src/schemars/generate.rs.html#510-533)

- **`pub fn into_root_schema_for_value<T: ?Sized + Serialize>(self, value: &T) -> Result<Schema, Error>`**  
  Consumes `self` and generates a JSON Schema for a given example value.  
  [Source](../src/schemars/generate.rs.html#542-566)

- **`pub fn contract(&self) -> &Contract`**  
  Returns a reference to the contract for the settings on this `SchemaGenerator`.  
  [Source](../src/schemars/generate.rs.html#573-575)

## Trait Implementations

### impl Clone for SchemaGenerator

- **`fn clone(&self) -> Self`**  
  Returns a duplicate of the value.  
- **`fn clone_from(&mut self, source: &Self)`**  
  Performs copy-assignment from `source`.  

### impl Debug for SchemaGenerator

- **`fn fmt(&self, f: &mut Formatter<'_>) -> Result`**  
  Formats the value using the given formatter.

### impl Default for SchemaGenerator

- **`fn default() -> Self`**  
  Returns the “default value” for a type.

### impl From<SchemaSettings> for SchemaGenerator

- **`fn from(settings: SchemaSettings) -> Self`**  
  Converts to this type from the input type.

## Auto Trait Implementations

- `impl !RefUnwindSafe for SchemaGenerator`
- `impl !Sync for SchemaGenerator`
- `impl !UnwindSafe for SchemaGenerator`
- `impl Freeze for SchemaGenerator`
- `impl Send for SchemaGenerator`
- `impl Unpin for SchemaGenerator`
- `impl UnsafeUnpin for SchemaGenerator`

## Blanket Implementations

- `impl<T> Any for T` where T: 'static + ?Sized
- `impl<T> Borrow<T> for T` where T: ?Sized
- `impl<T> BorrowMut<T> for T` where T: ?Sized
- `impl<T: Clone> CloneToUninit for T`
- `impl<T: Clone> DynClone for T`
- `impl<T: 'static> ErasedDestructor for T`
- `impl<T> From<T> for T`
- `impl<T, U> Into<U> for T` where U: From<T>
- `impl<T> IntoEither for T`
- `impl<T> MaybeSendSync for T`
- `impl<T: Clone> ToOwned for T` (type Owned = T)
- `impl<T, U> TryFrom<U> for T` where U: Into<T>
- `impl<T, U> TryInto<U> for T` where U: TryFrom<T>
