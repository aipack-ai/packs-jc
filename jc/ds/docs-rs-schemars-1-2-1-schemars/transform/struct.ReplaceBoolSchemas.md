# ReplaceBoolSchemas

In `schemars::transform`

## Description

Replaces boolean JSON Schemas with equivalent object schemas. This also applies to subschemas. This is useful for dialects of JSON Schema (e.g. OpenAPI 3.0) that do not support booleans as schemas.

## Struct Definition

```text
#[non_exhaustive]
pub struct ReplaceBoolSchemas {
    pub skip_additional_properties: bool,
}
```

## Fields

- `skip_additional_properties: bool` – When set to `true`, a schema’s `additionalProperties` property will not be changed from a boolean. Defaults to `false`.

## Trait Implementations

### `Clone`

- `fn clone(&self) -> ReplaceBoolSchemas`
- `fn clone_from(&mut self, source: &Self)`

### `Debug`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `Default`

- `fn default() -> ReplaceBoolSchemas`

### `Transform`

- `fn transform(&mut self, schema: &mut Schema)`

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `impl Any for T where T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `impl Borrow<T> for T where T: ?Sized`
  - `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T where T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl CloneToUninit for T where T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl DynClone for T where T: Clone`
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- `impl ErasedDestructor for T where T: 'static`
- `impl From<T> for T`
  - `fn from(t: T) -> T`
- `impl GenTransform for T where T: Transform + Clone + Any + Send`
  - `fn _as_any(&self) -> &(dyn Any + 'static)`
  - `fn _as_any_mut(&mut self) -> &mut (dyn Any + 'static)`
  - `fn _into_any(self: Box<Self>) -> Box<dyn Any>`
- `impl Into<U> for T where U: From<T>`
  - `fn into(self) -> U`
- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`
- `impl MaybeSendSync for T`
- `impl ToOwned for T where T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `impl TryFrom<U> for T where U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`
- `impl TryInto<U> for T where U: TryFrom<T>`
  - `type Error = U::Error`
  - `fn try_into(self) -> Result<U, U::Error>`
