# Elem

Represents a simplified HTML element, suitable for serialization.

```rust
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

### impl Debug for Elem

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```
Formats the value using the given formatter.

### impl Serialize for Elem

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where __S: Serializer
```
Serialize this value into the given Serde serializer.

## Auto Trait Implementations

- `impl Freeze for Elem`
- `impl RefUnwindSafe for Elem`
- `impl Send for Elem`
- `impl Sync for Elem`
- `impl Unpin for Elem`
- `impl UnsafeUnpin for Elem`
- `impl UnwindSafe for Elem`

## Blanket Implementations

- `impl<T> Any for T where T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `impl<T> Borrow<T> for T where T: ?Sized`
  - `fn borrow(&self) -> &T`
- `impl<T> BorrowMut<T> for T where T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl<T> From<T> for T`
  - `fn from(t: T) -> T`
- `impl<T, U> Into<U> for T where U: From<T>`
  - `fn into(self) -> U`
- `impl<T, U> TryFrom<U> for T where U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>`
- `impl<T, U> TryInto<U> for T where U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
