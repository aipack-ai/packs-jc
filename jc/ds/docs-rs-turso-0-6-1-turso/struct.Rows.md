# Struct Rows

Results of a prepared statement query.

## Source

```rust
pub struct Rows { /* private fields */ }
```

## Implementations

### impl Rows

- `pub fn column_count(&self) -> usize`
  Returns the number of columns in the result set.

- `pub fn column_name(&self, idx: usize) -> Result<String>`
  Returns the name of the column at the given index.

- `pub fn column_names(&self) -> Vec<String>`
  Returns the names of all columns in the result set.

- `pub fn column_index(&self, name: &str) -> Result<usize>`
  Returns the index of the column with the given name.

- `pub fn columns(&self) -> Vec<Column>`
  Returns columns of the result set.

- `pub async fn next(&mut self) -> Result<Option<Row>>`
  Fetch the next row of this result set.

## Auto Trait Implementations

- `!Freeze`
- `!RefUnwindSafe`
- `!UnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

### impl Any for T
where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId`
  Gets the `TypeId` of `self`.

### impl Borrow<T> for T
where T: ?Sized

- `fn borrow(&self) -> &T`
  Immutably borrows from an owned value.

### impl BorrowMut<T> for T
where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T`
  Mutably borrows from an owned value.

### impl Downcast for T
where T: Any

- `fn into_any(self: Box<Self>) -> Box<dyn Any>`
  Converts `Box<dyn Trait>` to `Box<dyn Any>`.

- `fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>`
  Converts `Rc<dyn Trait>` to `Rc<dyn Any>`.

- `fn as_any(&self) -> &(dyn Any + 'static)`
  Converts `&dyn Trait` to `&dyn Any`.

- `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`
  Converts `&mut dyn Trait` to `&mut dyn Any`.

### impl DowncastSend for T
where T: Any + Send

- `fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>`
  Converts `Box<dyn Trait>` to `Box<dyn Any + Send>`.

### impl DowncastSync for T
where T: Any + Send + Sync

- `fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>`
  Converts `Box<dyn Trait>` to `Box<dyn Any + Sync + Send>`.

- `fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>`
  Converts `Arc<dyn Trait>` to `Arc<dyn Any + Sync + Send>`.

### impl From<T> for T

- `fn from(t: T) -> T`
  Returns the argument unchanged.

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented<Self>`
  Instruments this type with the provided `Span`.

- `fn in_current_span(self) -> Instrumented<Self>`
  Instruments this type with the current `Span`.

### impl Into<U> for T
where U: From<T>

- `fn into(self) -> U`
  Calls `U::from(self)`.

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either<Self, Self>`
  Converts `self` into a `Left` variant if `into_left` is true, otherwise `Right`.

- `fn into_either_with(self, into_left: F) -> Either<Self, Self>`
  where F: FnOnce(&Self) -> bool
  Converts `self` into a `Left` or `Right` based on a predicate.

### impl Pointable for T

- `const ALIGN: usize`
  The alignment of pointer.

- `type Init = T`
  The type for initializers.

- `unsafe fn init(init: Self::Init) -> usize`
  Initializes a pointer with the given initializer.

- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  Dereferences the given pointer.

- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  Mutably dereferences the given pointer.

- `unsafe fn drop(ptr: usize)`
  Drops the object pointed to by the given pointer.

### impl Same for T

- `type Output = T`
  Should always be `Self`.

### impl TryFrom<U> for T
where U: Into<T>

- `type Error = Infallible`
  The type returned in the event of a conversion error.

- `fn try_from(value: U) -> Result<T, Self::Error>`
  Performs the conversion.

### impl TryInto<U> for T
where U: TryFrom<T>

- `type Error = <U as TryFrom<T>>::Error`
  The type returned in the event of a conversion error.

- `fn try_into(self) -> Result<U, Self::Error>`
  Performs the conversion.

### impl VZip<V> for T
where V: MultiLane

- `fn vzip(self) -> V`

### impl WithSubscriber for T

- `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch`
  where S: Into<Dispatch>
  Attaches the provided `Subscriber` to this type.

- `fn with_current_subscriber(self) -> WithDispatch`
  Attaches the current default `Subscriber` to this type.

### impl Fruit for T
where T: Send + Downcast
