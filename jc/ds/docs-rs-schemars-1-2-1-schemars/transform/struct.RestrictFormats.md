# RestrictFormats

## In schemars::transform

[`schemars`](../index.html) :: [`transform`](index.html)

# Struct RestrictFormats

```text
#[non_exhaustive]

pub struct RestrictFormats {
    pub infer_from_meta_schema: 
            bool,
    pub allowed_formats: 
            BTreeSet<
            Cow<'static, str>>,
}
```

**Expand description**

Removes any `format` values that are not defined by the JSON Schema standard or explicitly allowed by a custom list.

This also applies to subschemas.

By default, this will infer the version of JSON Schema from the schema’s `$schema` property, and no additional formats will be allowed (even when the JSON schema allows nonstandard formats).

## Example

```text
use schemars::json_schema;
use schemars::transform::{RestrictFormats, Transform};
let mut schema = schemars::json_schema!({
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "anyOf": [
        {
            "type": "string",
            "format": "uuid"
        },
        {
            "$schema": "http://json-schema.org/draft-07/schema#",
            "type": "string",
            "format": "uuid"
        },
        {
            "type": "string",
            "format": "allowed-custom-format"
        },
        {
            "type": "string",
            "format": "forbidden-custom-format"
        }
    ]
});
let mut transform = RestrictFormats::default();
transform.allowed_formats.insert("allowed-custom-format".into());
transform.transform(&mut schema);
assert_eq!(
    schema,
    json_schema!({
        "$schema": "https://json-schema.org/draft/2020-12/schema",
        "anyOf": [
            {
                // "uuid" format is defined in draft 2020-12.
                "type": "string",
                "format": "uuid"
            },
            {
                // "uuid" format is not defined in draft-07, so is removed from this subschema.
                "$schema": "http://json-schema.org/draft-07/schema#",
                "type": "string"
            },
            {
                // "allowed-custom-format" format was present in `allowed_formats`...
                "type": "string",
                "format": "allowed-custom-format"
            },
            {
                // ...but "forbidden-custom-format" format was not, so is also removed.
                "type": "string"
            }
        ]
    })
);
```

## Fields (Non-exhaustive)

This struct is marked as non-exhaustive.

**`infer_from_meta_schema: bool`** – Whether to read the schema’s `$schema` property to determine which version of JSON Schema is being used, and allow only formats defined in that standard. If this is `true` but the JSON Schema version can’t be determined because `$schema` is missing or unknown, then no `format` values will be removed. If this is set to `false`, then only the formats explicitly included in `allowed_formats` will be allowed. By default, this is `true`.

**`allowed_formats: BTreeSet<Cow<'static, str>>`** – Values of the `format` property in schemas that will always be allowed, regardless of the inferred version of JSON Schema.

## Trait Implementations

### `impl Clone for RestrictFormats`

- `fn clone(&self) -> RestrictFormats`  
  Returns a duplicate of the value.

- `fn clone_from(&mut self, source: &Self)`  
  Performs copy-assignment from `source`.

### `impl Debug for RestrictFormats`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`  
  Formats the value using the given formatter.

### `impl Default for RestrictFormats`

- `fn default() -> Self`  
  Returns the “default value” for a type.

### `impl Transform for RestrictFormats`

- `fn transform(&mut self, schema: &mut Schema)`  
  Applies the transform to the given `Schema`.

## Auto Trait Implementations

- `impl Freeze for RestrictFormats`
- `impl RefUnwindSafe for RestrictFormats`
- `impl Send for RestrictFormats`
- `impl Sync for RestrictFormats`
- `impl Unpin for RestrictFormats`
- `impl UnsafeUnpin for RestrictFormats`
- `impl UnwindSafe for RestrictFormats`

## Blanket Implementations

- `impl Any for T` where T: 'static + ?Sized
  - `fn type_id(&self) -> TypeId`
- `impl Borrow<T> for T` where T: ?Sized
  - `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T` where T: ?Sized
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl CloneToUninit for T` where T: Clone
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl DynClone for T` where T: Clone
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- `impl ErasedDestructor for T` where T: 'static
- `impl From<T> for T`
  - `fn from(t: T) -> T`
- `impl GenTransform for T` where T: Transform + Clone + Any + Send
  - `fn _as_any(&self) -> &(dyn Any + 'static)`
  - `fn _as_any_mut(&mut self) -> &mut (dyn Any + 'static)`
  - `fn _into_any(self: Box<Self>) -> Box<dyn Any>`
- `impl Into<U> for T` where U: From<T>
  - `fn into(self) -> U`
- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either` where F: FnOnce(&Self) -> bool
- `impl MaybeSendSync for T`
- `impl ToOwned for T` where T: Clone
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `impl TryFrom<U> for T` where U: Into<T>
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`
- `impl TryInto<U> for T` where U: TryFrom<T>
  - `type Error = U::Error`
  - `fn try_into(self) -> Result<U, U::Error>`
