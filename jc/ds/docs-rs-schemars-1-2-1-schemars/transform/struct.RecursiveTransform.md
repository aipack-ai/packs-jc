# RecursiveTransform

## Description

A helper struct that can wrap a non-recursive [`Transform`](trait.Transform.html) (i.e. one that does not apply to subschemas) into a recursive one.

Its implementation of `Transform` will first apply the inner transform to the "parent" schema, and then its subschemas (and their subschemas, and so on).

## Example

```text
use schemars::transform::{Transform, RecursiveTransform};
let mut transform = RecursiveTransform(|schema: &mut Schema| {
    schema.insert("my_property".to_string(), "hello world".into());
});
let mut schema = json_schema!({
    "type": "array",
    "items": {}
});
transform.transform(&mut schema);
assert_eq!(
    schema,
    json_schema!({
        "type": "array",
        "items": {
            "my_property": "hello world"
        },
        "my_property": "hello world"
    })
);
```

## Tuple Fields

- `0: T`

## Trait Implementations

### `impl<T: Clone> Clone for RecursiveTransform<T>`

- `fn clone(&self) -> RecursiveTransform<T>`
- `fn clone_from(&mut self, source: &Self)`

### `impl<T: Debug> Debug for RecursiveTransform<T>`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl<T: Transform> Transform for RecursiveTransform<T>`

- `fn transform(&mut self, schema: &mut Schema)`

## Auto Trait Implementations

- `impl<T: Freeze> Freeze for RecursiveTransform<T>`
- `impl<T: RefUnwindSafe> RefUnwindSafe for RecursiveTransform<T>`
- `impl<T: Send> Send for RecursiveTransform<T>`
- `impl<T: Sync> Sync for RecursiveTransform<T>`
- `impl<T: Unpin> Unpin for RecursiveTransform<T>`
- `impl<T: UnsafeUnpin> UnsafeUnpin for RecursiveTransform<T>`
- `impl<T: UnwindSafe> UnwindSafe for RecursiveTransform<T>`

## Blanket Implementations

### `impl<T: 'static + ?Sized> Any for T`

- `fn type_id(&self) -> TypeId`

### `impl<T: ?Sized> Borrow<T> for T`

- `fn borrow(&self) -> &T`

### `impl<T: ?Sized> BorrowMut<T> for T`

- `fn borrow_mut(&mut self) -> &mut T`

### `impl<T: Clone> CloneToUninit for T`

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### `impl<T: Clone> DynClone for T`

- `fn __clone_box(&self, _: Private) -> *mut ()`

### `impl<T: 'static> ErasedDestructor for T`

- (no methods listed)

### `impl<T> From<T> for T`

- `fn from(t: T) -> T`

### `impl<T: Transform + Clone + Any + Send> GenTransform for T`

- `fn _as_any(&self) -> &(dyn Any + 'static)`
- `fn _as_any_mut(&mut self) -> &mut (dyn Any + 'static)`
- `fn _into_any(self: Box<Self>) -> Box<dyn Any>`

### `impl<T> Into<U> for T where U: From<T>`

- `fn into(self) -> U`

### `impl<T> IntoEither for T`

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### `impl<T> MaybeSendSync for T`

- (no methods listed)

### `impl<T: Clone> ToOwned for T`

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### `impl<T, U> TryFrom<U> for T where U: Into<T>`

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### `impl<T, U> TryInto<U> for T where U: TryFrom<T>`

- `type Error = <U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, Self::Error>`
