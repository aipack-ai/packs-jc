# SchemaSettings

SchemaSettings in schemars::generate - Rust

Settings to customize how Schemas are generated.

The default settings currently conform to [JSON Schema 2020-12](https://json-schema.org/specification-links#2020-12), but this is liable to change in a future version of Schemars if support for other JSON Schema versions is added. If you rely on generated schemas conforming to draft 2020-12, consider using the [`SchemaSettings::draft2020_12()`](struct.SchemaSettings.html#method.draft2020_12) method.

## Struct SchemaSettings

```text
#[non_exhaustive]
pub struct SchemaSettings {
    pub definitions_path: Cow<'static, str>,
    pub meta_schema: Option<Cow<'static, str>>,
    pub transforms: Vec<Box<dyn GenTransform>>,
    pub inline_subschemas: bool,
    pub contract: Contract,
    pub untagged_enum_variant_titles: bool,
}
```

## Fields (Non-exhaustive)

This struct is marked as non-exhaustive. Non-exhaustive structs could have additional fields added in future. Therefore, non-exhaustive structs cannot be constructed in external crates using the traditional `Struct { .. }` syntax; cannot be matched against without a wildcard `..`; and struct update syntax will not work.

- `definitions_path: Cow<'static, str>` – A JSON pointer to the expected location of referenceable subschemas within the resulting root schema. A single leading `#` and/or single trailing `/` are ignored. Defaults to `"/$defs"`.
- `meta_schema: Option<Cow<'static, str>>` – The URI of the meta-schema describing the structure of the generated schemas. Defaults to `meta_schemas::DRAFT2020_12` (`https://json-schema.org/draft/2020-12/schema`).
- `transforms: Vec<Box<dyn GenTransform>>` – A list of `Transform`s that get applied to generated root schemas. Defaults to an empty vec.
- `inline_subschemas: bool` – Inline all subschemas instead of using references. Some references may still be generated in schemas for recursive types. Defaults to `false`.
- `contract: Contract` – Whether the generated schemas should describe how types are serialized or *de*serialized. Defaults to `Contract::Deserialize`.
- `untagged_enum_variant_titles: bool` – Whether to include enum variant names in their schema’s `title` when using the [untagged enum representation](https://serde.rs/enum-representations.html#untagged). This setting is respected by `#[derive(JsonSchema)]` on enums, but manual implementations of `JsonSchema` may ignore this setting. Defaults to `false`.

## Implementations

### Associated Functions

- `pub fn draft07() -> SchemaSettings` – Creates `SchemaSettings` that conform to [JSON Schema Draft 7](https://json-schema.org/specification-links#draft-7).
- `pub fn draft2019_09() -> SchemaSettings` – Creates `SchemaSettings` that conform to [JSON Schema 2019-09](https://json-schema.org/specification-links#draft-2019-09-\(formerly-known-as-draft-8\)).
- `pub fn draft2020_12() -> SchemaSettings` – Creates `SchemaSettings` that conform to [JSON Schema 2020-12](https://json-schema.org/specification-links#2020-12).
- `pub fn openapi3() -> SchemaSettings` – Creates `SchemaSettings` that conform to [OpenAPI 3.0](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.4.md#schema).

### Methods

- `pub fn with(self, configure_fn: impl FnOnce(&mut Self)) -> Self` – Modifies the `SchemaSettings` by calling the given function.
- `pub fn with_transform(self, transform: impl Transform + Clone + 'static + Send) -> Self` – Appends the given transform to the list of transforms.
- `pub fn into_generator(self) -> SchemaGenerator` – Creates a new `SchemaGenerator` using these settings.
- `pub fn for_deserialize(self) -> Self` – Updates the settings to generate schemas describing how types are deserialized.
- `pub fn for_serialize(self) -> Self` – Updates the settings to generate schemas describing how types are serialized.

#### Example

```text
use schemars::generate::{SchemaGenerator, SchemaSettings};
let settings = SchemaSettings::default().with(|s| {
    s.meta_schema = None;
    s.inline_subschemas = true;
});
let generator = settings.into_generator();
```

## Trait Implementations

### `impl Clone for SchemaSettings`

- `fn clone(&self) -> SchemaSettings`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for SchemaSettings`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Default for SchemaSettings`

- `fn default() -> SchemaSettings`

### `impl From<SchemaSettings> for SchemaGenerator`

- `fn from(settings: SchemaSettings) -> Self`

## Auto Trait Implementations

- `!RefUnwindSafe`
- `!Sync`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

### `impl Any for T`

- `fn type_id(&self) -> TypeId`

### `impl Borrow<T> for T`

- `fn borrow(&self) -> &T`

### `impl BorrowMut<T> for T`

- `fn borrow_mut(&mut self) -> &mut T`

### `impl CloneToUninit for T`

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### `impl DynClone for T`

- `fn __clone_box(&self, _: Private) -> *mut ()`

### `impl ErasedDestructor for T`

### `impl From<T> for T`

- `fn from(t: T) -> T`

### `impl Into<U> for T`

- `fn into(self) -> U`

### `impl IntoEither for T`

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### `impl MaybeSendSync for T`

### `impl ToOwned for T`

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### `impl TryFrom<U> for T`

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Infallible>`

### `impl TryInto<U> for T`

- `type Error = TryFrom::Error`
- `fn try_into(self) -> Result<U, TryFrom::Error>`
