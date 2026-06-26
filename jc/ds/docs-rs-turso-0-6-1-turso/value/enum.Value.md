# Value

In [turso::value](index.html)

Enum representing a SQLite value in the Turso Rust API.

## Variants

- `Null`
- `Integer(i64)`
- `Real(f64)`
- `Text(String)`
- `Blob(Vec<u8>)`

## Implementations

### `impl Value`

- `pub fn is_null(&self) -> bool` – Returns `true` if the value is `Null`.
- `pub fn is_integer(&self) -> bool` – Returns `true` if the value is `Integer`.
- `pub fn is_real(&self) -> bool` – Returns `true` if the value is `Real`.
- `pub fn as_real(&self) -> Option<&f64>` – Returns the inner `f64` if `Real`.
- `pub fn is_text(&self) -> bool` – Returns `true` if the value is `Text`.
- `pub fn as_text(&self) -> Option<&String>` – Returns the inner `String` if `Text`.
- `pub fn as_integer(&self) -> Option<&i64>` – Returns the inner `i64` if `Integer`.
- `pub fn is_blob(&self) -> bool` – Returns `true` if the value is `Blob`.
- `pub fn as_blob(&self) -> Option<&Vec<u8>>` – Returns the inner byte vector if `Blob`.

## Trait Implementations

- **Clone**
  - `fn clone(&self) -> Value`
  - `fn clone_from(&mut self, source: &Self)`
- **Debug**
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
- **From<&[u8]>**
  - `fn from(value: &[u8]) -> Value`
- **From<&'a Value> for ValueRef<'a>**
  - `fn from(v: &'a Value) -> ValueRef<'a>`
- **From<&str>**
  - `fn from(value: &str) -> Value`
- **From<Option<T>>** where `T: Into<Value>`
  - `fn from(value: Option<T>) -> Self`
- **From<String>**
  - `fn from(value: String) -> Value`
- **From<turso_core::types::Value>**
  - `fn from(val: turso_core::types::Value) -> Self`
- **From<Value> for turso_sdk_kit::rsapi::Value**
  - `fn from(val: Value) -> Self`
- **From<ValueRef<'_>>**
  - `fn from(vr: ValueRef<'_>) -> Value`
- **From<Vec<u8>>**
  - `fn from(value: Vec<u8>) -> Value`
- **From<bool>**
  - `fn from(value: bool) -> Value`
- **From<f32>**
  - `fn from(value: f32) -> Value`
- **From<f64>**
  - `fn from(value: f64) -> Value`
- **From<i16>**
  - `fn from(value: i16) -> Value`
- **From<i32>**
  - `fn from(value: i32) -> Value`
- **From<i64>**
  - `fn from(value: i64) -> Value`
- **From<i8>**
  - `fn from(value: i8) -> Value`
- **From<u16>**
  - `fn from(value: u16) -> Value`
- **From<u32>**
  - `fn from(value: u32) -> Value`
- **From<u8>**
  - `fn from(value: u8) -> Value`
- **PartialEq**
  - `fn eq(&self, other: &Value) -> bool`
  - `fn ne(&self, other: &Value) -> bool`
- **StructuralPartialEq** (marker trait)
- **TryFrom<u64>**
  - `type Error = Error`
  - `fn try_from(value: u64) -> Result<Value>`

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- **Any** where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- **Borrow<T>** where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- **BorrowMut<T>** where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- **CloneToUninit** where `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- **Downcast** where `T: Any`
  - `fn into_any(self: Box<Self>) -> Box<dyn Any>`
  - `fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>`
  - `fn as_any(&self) -> &(dyn Any + 'static)`
  - `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`
- **DowncastSend** where `T: Any + Send`
  - `fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>`
- **DowncastSync** where `T: Any + Send + Sync`
  - `fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>`
  - `fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>`
- **From<T>** (identity)
  - `fn from(t: T) -> T`
- **Instrument** (tracing)
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`
- **Into<U>** where `U: From<T>`
  - `fn into(self) -> U`
- **IntoEither** (either crate)
  - `fn into_either(self, into_left: bool) -> Either<Self, Self>`
  - `fn into_either_with<F>(self, into_left: F) -> Either<Self, Self>`
- **IntoValue** where `T: TryInto<Value>`
  - `fn into_value(self) -> Result<Value, Error>`
- **Pointable** (crossbeam-epoch)
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- **Same** (typenum)
  - `type Output = T`
- **ToOwned** where `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- **TryFrom<U>** where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`
- **TryInto<U>** where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- **VZip** (ppv-lite86) where `V: MultiLane`
  - `fn vzip(self) -> V`
- **WithSubscriber** (tracing)
  - `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>`
  - `fn with_current_subscriber(self) -> WithDispatch<Self>`
- **Fruit** (tantivy) where `T: Send + Downcast`

### Source definition (enum)

```js
pub enum Value {
    Null,
    Integer(i64),
    Real(f64),
    Text(String),
    Blob(Vec<u8>),
}
```
