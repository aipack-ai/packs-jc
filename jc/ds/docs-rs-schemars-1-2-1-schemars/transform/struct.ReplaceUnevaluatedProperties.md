# ReplaceUnevaluatedProperties

In [`schemars`](../index.html)::[`transform`](index.html) — `schemars::transform::ReplaceUnevaluatedProperties`

Replaces the `unevaluatedProperties` schema property with the `additionalProperties` property, adding properties from a schema's subschemas to its `properties` where necessary. This also applies to subschemas.

This is useful for versions of JSON Schema (e.g. Draft 7) that do not support the `unevaluatedProperties` property.

```text
#[non_exhaustive]
pub struct ReplaceUnevaluatedProperties;
```

## Trait Implementations

### `impl Clone for ReplaceUnevaluatedProperties`

- `fn clone(&self) -> ReplaceUnevaluatedProperties`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for ReplaceUnevaluatedProperties`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Default for ReplaceUnevaluatedProperties`

- `fn default() -> ReplaceUnevaluatedProperties`

### `impl Transform for ReplaceUnevaluatedProperties`

- `fn transform(&mut self, schema: &mut Schema)`

## Auto Trait Implementations

- `impl Freeze for ReplaceUnevaluatedProperties`
- `impl RefUnwindSafe for ReplaceUnevaluatedProperties`
- `impl Send for ReplaceUnevaluatedProperties`
- `impl Sync for ReplaceUnevaluatedProperties`
- `impl Unpin for ReplaceUnevaluatedProperties`
- `impl UnsafeUnpin for ReplaceUnevaluatedProperties`
- `impl UnwindSafe for ReplaceUnevaluatedProperties`

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

*(no methods)*

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

*(no methods)*

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
