# AddNullable in `schemars::transform`

Location: [`schemars::transform`](index.html)

## Definition

```rust
#[non_exhaustive]
pub struct AddNullable {
    pub remove_null_type: bool,
    pub add_const_null: bool,
}
```

## Description

Adds a `"nullable": true` property to schemas that allow `null` types. This also applies to subschemas. This is useful for dialects of JSON Schema (e.g. OpenAPI 3.0) that use `nullable` instead of explicit null types.

## Fields

- `remove_null_type: bool` — When set to `true` (the default), `"null"` will also be removed from the schema's `type`.
- `add_const_null: bool` — When set to `true` (the default), a schema that has a type only allowing `null` will also have the equivalent `"const": null` inserted.

## Trait Implementations

### `impl Clone for AddNullable`

- `fn clone(&self) -> AddNullable`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for AddNullable`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Default for AddNullable`

- `fn default() -> Self`

### `impl Transform for AddNullable`

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

### `impl Any for T` where `T: 'static + ?Sized`

- `fn type_id(&self) -> TypeId`

### `impl Borrow<T> for T` where `T: ?Sized`

- `fn borrow(&self) -> &T`

### `impl BorrowMut<T> for T` where `T: ?Sized`

- `fn borrow_mut(&mut self) -> &mut T`

### `impl CloneToUninit for T` where `T: Clone`

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### `impl DynClone for T` where `T: Clone`

- `fn __clone_box(&self, _: Private) -> *mut ()`

### `impl ErasedDestructor for T` where `T: 'static`

### `impl From<T> for T`

- `fn from(t: T) -> T`

### `impl GenTransform for T` where `T: Transform + Clone + Any + Send`

- `fn _as_any(&self) -> &(dyn Any + 'static)`
- `fn _as_any_mut(&mut self) -> &mut (dyn Any + 'static)`
- `fn _into_any(self: Box<Self>) -> Box<dyn Any>`

### `impl Into<U> for T` where `U: From<T>`

- `fn into(self) -> U`

### `impl IntoEither for T`

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either` where `F: FnOnce(&Self) -> bool`

### `impl MaybeSendSync for T`

### `impl ToOwned for T` where `T: Clone`

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### `impl TryFrom<U> for T` where `U: Into<T>`

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Infallible>`

### `impl TryInto<U> for T` where `U: TryFrom<T>`

- `type Error = U::Error`
- `fn try_into(self) -> Result<U, U::Error>`
