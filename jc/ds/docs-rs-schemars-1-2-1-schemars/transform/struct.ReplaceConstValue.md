# ReplaceConstValue

[`schemars`](../index.html)::[`transform`](index.html)

Replaces the `const` schema property with a single-valued `enum` property. This also applies to subschemas. This is useful for dialects of JSON Schema (e.g. OpenAPI 3.0) that do not support the `const` property.

```text
#[non_exhaustive]
pub struct ReplaceConstValue;
```

## Trait Implementations

### `impl Clone for ReplaceConstValue`

- `fn clone(&self) -> ReplaceConstValue` - Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` - Performs copy-assignment from `source`.

### `impl Debug for ReplaceConstValue`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` - Formats the value using the given formatter.

### `impl Default for ReplaceConstValue`

- `fn default() -> ReplaceConstValue` - Returns the “default value” for a type.

### `impl Transform for ReplaceConstValue`

- `fn transform(&mut self, schema: &mut Schema)` - Applies the transform to the given [`Schema`](../struct.Schema.html).

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `impl Any for T` where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId` - Gets the `TypeId` of `self`.

### `impl Borrow<T> for T` where T: ?Sized

- `fn borrow(&self) -> &T` - Immutably borrows from an owned value.

### `impl BorrowMut<T> for T` where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T` - Mutably borrows from an owned value.

### `impl CloneToUninit for T` where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)` - Performs copy-assignment from `self` to `dest`. (Nightly-only)

### `impl DynClone for T` where T: Clone

- `fn __clone_box(&self, __: Private) -> *mut ()` - Internal method.

### `impl ErasedDestructor for T` where T: 'static

- (No methods)

### `impl From<T> for T`

- `fn from(t: T) -> T` - Returns the argument unchanged.

### `impl GenTransform for T` where T: Transform + Clone + Any + Send

- `fn _as_any(&self) -> &(dyn Any + 'static)`
- `fn _as_any_mut(&mut self) -> &mut (dyn Any + 'static)`
- `fn _into_any(self: Box<Self>) -> Box<dyn Any>`

### `impl Into<U> for T` where U: From<T>

- `fn into(self) -> U` - Calls `U::from(self)`.

### `impl IntoEither for T`

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either` where `F: FnOnce(&Self) -> bool`

### `impl MaybeSendSync for T`

- (No methods)

### `impl ToOwned for T` where T: Clone

- Associated type: `Owned = T`
- `fn to_owned(&self) -> T` - Creates owned data from borrowed data, usually by cloning.
- `fn clone_into(&self, target: &mut T)` - Uses borrowed data to replace owned data, usually by cloning.

### `impl TryFrom<U> for T` where U: Into<T>

- Associated type: `Error = Infallible`
- `fn try_from(value: U) -> Result<T, Infallible>` - Performs the conversion.

### `impl TryInto<U> for T` where U: TryFrom<T>

- Associated type: `Error = <U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>` - Performs the conversion.
