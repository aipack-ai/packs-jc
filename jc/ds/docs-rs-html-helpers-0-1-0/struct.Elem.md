# Struct `Elem` in `html_helpers`

Represents a simplified HTML element, suitable for serialization.

## Definition

```text
pub struct Elem {
    pub tag: String,
    pub attrs: Option<HashMap<String, String>>,
    pub text: Option<String>,
    pub inner_html: Option<String>,
}
```

## Fields

- `tag: String`
- `attrs: Option<HashMap<String, String>>`
- `text: Option<String>`
- `inner_html: Option<String>`

## Trait Implementations

### `impl Debug for Elem`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Serialize for Elem`

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where `__S: Serializer`

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

### `impl From<T> for T`

- `fn from(t: T) -> T`

### `impl Into<U> for T` where `U: From<T>`

- `fn into(self) -> U`

### `impl TryFrom<U> for T` where `U: Into<T>`

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>`

### `impl TryInto<U> for T` where `U: TryFrom<T>`

- `type Error = <U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
