# ValueType

**Module:** [turso::value](index.html) (from crate turso 0.6.1)

## Description

The possible types a column can be in libsql.

## Source

```rust
pub enum ValueType {
    Integer = 1,
    Real = 2,
    Text = 3,
    Blob = 4,
    Null = 5,
}
```

## Variants

- **Integer** = 1
- **Real** = 2
- **Text** = 3
- **Blob** = 4
- **Null** = 5

## Trait Implementations

### `impl Clone for ValueType`

- `fn clone(&self) -> ValueType`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for ValueType`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl FromStr for ValueType`

- **Associated type:** `Err = ()`
- `fn from_str(s: &str) -> Result<ValueType, Self::Err>`

### `impl Copy for ValueType`

(No methods)

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `impl Any for T` where T: 'static + ?Sized
  - `fn type_id(&self) -> TypeId`
- `impl Borrow for T` where T: ?Sized
  - `fn borrow(&self) -> &T`
- `impl BorrowMut for T` where T: ?Sized
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl CloneToUninit for T` where T: Clone
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl Downcast for T` where T: Any
  - `fn into_any(self: Box<Self>) -> Box<dyn Any>`
  - `fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>`
  - `fn as_any(&self) -> &(dyn Any + 'static)`
  - `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`
- `impl DowncastSend for T` where T: Any + Send
  - `fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>`
- `impl DowncastSync for T` where T: Any + Send + Sync
  - `fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>`
  - `fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>`
- `impl From<T> for T`
  - `fn from(t: T) -> T`
- `impl Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`
- `impl Into<U> for T` where U: From<T>
  - `fn into(self) -> U`
- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either<Self, Self>`
  - `fn into_either_with(self, into_left: F) -> Either<Self, Self>` where F: FnOnce(&Self) -> bool
- `impl Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: T) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl Same for T`
  - `type Output = T`
- `impl ToOwned for T` where T: Clone
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `impl TryFrom<U> for T` where U: Into<T>
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl TryInto<U> for T` where U: TryFrom<T>
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- `impl VZip<V> for T` where V: MultiLane
  - `fn vzip(self) -> V`
- `impl WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch<Self>` where S: Into<Dispatch>
  - `fn with_current_subscriber(self) -> WithDispatch<Self>`
- `impl Fruit for T` where T: Send + Downcast
