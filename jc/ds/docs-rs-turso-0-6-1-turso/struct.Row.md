# Row

Query result row.

## Struct Definition

```rust
pub struct Row { /* private fields */ }
```

## Implementations

### get_value

```rust
pub fn get_value(&self, idx: usize) -> Result<Value>
```

### get

```rust
pub fn get<T: FromValue>(&self, idx: usize) -> Result<T>
```

### column_count

```rust
pub fn column_count(&self) -> usize
```

## Trait Implementations

### Debug

```rust
impl Debug for Row
```

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### PartialEq

```rust
impl PartialEq for Row
```

```rust
fn eq(&self, other: &Row) -> bool
fn ne(&self, other: &Rhs) -> bool
```

### StructuralPartialEq

```rust
impl StructuralPartialEq for Row
```

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

### Any

```rust
impl<T: 'static + ?Sized> Any for T
```

```rust
fn type_id(&self) -> TypeId
```

### Borrow

```rust
impl<T: ?Sized> Borrow<T> for T
```

```rust
fn borrow(&self) -> &T
```

### BorrowMut

```rust
impl<T: ?Sized> BorrowMut<T> for T
```

```rust
fn borrow_mut(&mut self) -> &mut T
```

### Downcast

```rust
impl<T: Any> Downcast for T
```

```rust
fn into_any(self: Box<Self>) -> Box<dyn Any>
fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>
fn as_any(&self) -> &(dyn Any + 'static)
fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)
```

### DowncastSend

```rust
impl<T: Any + Send> DowncastSend for T
```

```rust
fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>
```

### DowncastSync

```rust
impl<T: Any + Send + Sync> DowncastSync for T
```

```rust
fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>
fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>
```

### From

```rust
impl<T> From<T> for T
```

```rust
fn from(t: T) -> T
```

### Fruit

```rust
impl<T: Send + Downcast> Fruit for T
```

### Instrument

```rust
impl<T> Instrument for T
```

```rust
fn instrument(self, span: Span) -> Instrumented<Self>
fn in_current_span(self) -> Instrumented<Self>
```

### Into

```rust
impl<T, U> Into<U> for T where U: From<T>
```

```rust
fn into(self) -> U
```

### IntoEither

```rust
impl<T> IntoEither for T
```

```rust
fn into_either(self, into_left: bool) -> Either<Self, Self>
fn into_either_with<F>(self, into_left: F) -> Either<Self, Self> where F: FnOnce(&Self) -> bool
```

### Pointable

```rust
impl<T> Pointable for T
```

- `const ALIGN: usize`
- `type Init = T`
- `unsafe fn init(init: Self::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### Same

```rust
impl<T> Same for T
```

- `type Output = T`

### TryFrom

```rust
impl<T, U> TryFrom<U> for T where U: Into<T>
```

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### TryInto

```rust
impl<T, U> TryInto<U> for T where U: TryFrom<T>
```

- `type Error = U::Error`
- `fn try_into(self) -> Result<U, Self::Error>`

### VZip

```rust
impl<T, V> VZip<V> for T where V: MultiLane
```

```rust
fn vzip(self) -> V
```

### WithSubscriber

```rust
impl<T> WithSubscriber for T
```

```rust
fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self> where S: Into<Dispatch>
fn with_current_subscriber(self) -> WithDispatch<Self>
```
