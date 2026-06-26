# Transaction (in crate turso)

## Struct Definition

```text
pub struct Transaction {}
```

[Source](../src/turso/lib.rs.html#569)

## Auto Trait Implementations

- `impl Freeze for Transaction`
- `impl RefUnwindSafe for Transaction`
- `impl Send for Transaction`
- `impl Sync for Transaction`
- `impl Unpin for Transaction`
- `impl UnsafeUnpin for Transaction`
- `impl UnwindSafe for Transaction`

## Blanket Implementations

### `impl Any for T`
where T: 'static + ?Sized
- `fn type_id(&self) -> TypeId`

### `impl Borrow<T> for T`
where T: ?Sized
- `fn borrow(&self) -> &T`

### `impl BorrowMut<T> for T`
where T: ?Sized
- `fn borrow_mut(&mut self) -> &mut T`

### `impl Downcast for T`
where T: Any
- `fn into_any(self: Box<Self>) -> Box<dyn Any>`
- `fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>`
- `fn as_any(&self) -> &(dyn Any + 'static)`
- `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`

### `impl DowncastSend for T`
where T: Any + Send
- `fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>`

### `impl DowncastSync for T`
where T: Any + Send + Sync
- `fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>`
- `fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>`

### `impl From<T> for T`
- `fn from(t: T) -> T`

### `impl Instrument for T`
- `fn instrument(self, span: Span) -> Instrumented<Self>`
- `fn in_current_span(self) -> Instrumented<Self>`

### `impl Into<U> for T`
where U: From<T>
- `fn into(self) -> U`

### `impl IntoEither for T`
- `fn into_either(self, into_left: bool) -> Either<Self, Self>`
- `fn into_either_with(self, into_left: F) -> Either<Self, Self>` where F: FnOnce(&Self) -> bool

### `impl Pointable for T`
- `const ALIGN: usize`
- `type Init = T`
- `unsafe fn init(init: T) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### `impl Same for T`
- `type Output = T`

### `impl TryFrom<U> for T`
where U: Into<T>
- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Infallible>`

### `impl TryInto<U> for T`
where U: TryFrom<T>
- `type Error = U::Error`
- `fn try_into(self) -> Result<U, U::Error>`

### `impl VZip<V> for T`
where V: MultiLane
- `fn vzip(self) -> V`

### `impl WithSubscriber for T`
- `fn with_subscriber(self, subscriber: S) -> WithDispatch<Self>` where S: Into<Dispatch>
- `fn with_current_subscriber(self) -> WithDispatch<Self>`

### `impl Fruit for T`
where T: Send + Downcast
