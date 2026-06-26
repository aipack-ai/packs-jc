# Column in turso - Rust

## Struct Definition

**Source:** `../src/turso/lib.rs.html#541-544`

```text
pub struct Column { /* private fields */ }
```

**Description:** Column information.

## Implementations

### Methods for `Column`

```text
impl Column {
    pub fn name(&self) -> &str;
    pub fn decl_type(&self) -> Option<&str>;
}
```

- `pub fn name(&self) -> &str` — Return the name of the column.  
- `pub fn decl_type(&self) -> Option<&str>` — Returns the type of the column.

## Auto Trait Implementations

The following auto traits are implemented for `Column`:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The following blanket trait implementations are provided for types satisfying certain bounds. For each trait, the associated items (functions, associated types, constants) are listed.

### `Any` (where T: 'static + ?Sized)

- `fn type_id(&self) -> TypeId`

### `Borrow` (where T: ?Sized)

- `fn borrow(&self) -> &T`

### `BorrowMut` (where T: ?Sized)

- `fn borrow_mut(&mut self) -> &mut T`

### `Downcast` (where T: Any)

- `fn into_any(self: Box<T>) -> Box<dyn Any>`
- `fn into_any_rc(self: Rc<T>) -> Rc<dyn Any>`
- `fn as_any(&self) -> &(dyn Any + 'static)`
- `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`

### `DowncastSend` (where T: Any + Send)

- `fn into_any_send(self: Box<T>) -> Box<dyn Any + Send>`

### `DowncastSync` (where T: Any + Send + Sync)

- `fn into_any_sync(self: Box<T>) -> Box<dyn Any + Sync + Send>`
- `fn into_any_arc(self: Arc<T>) -> Arc<dyn Any + Sync + Send>`

### `From<T>` (for T)

- `fn from(t: T) -> T`

### `Into<U>` (where U: From<T>)

- `fn into(self) -> U`

### `IntoEither` (for T)

- `fn into_either(self, into_left: bool) -> Either<L, R>`
- `fn into_either_with(self, into_left: F) -> Either<L, R>`  
  where F: FnOnce(&Self) -> bool

### `Instrument` (for T)

- `fn instrument(self, span: Span) -> Instrumented<T>`
- `fn in_current_span(self) -> Instrumented<T>`

### `Pointable` (for T)

- `const ALIGN: usize`
- `type Init = T`
- `unsafe fn init(init: Self::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### `Same` (for T)

- `type Output = T`

### `TryFrom<U>` (where U: Into<T>)

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### `TryInto<U>` (where U: TryFrom<T>)

- `type Error = U::Error`
- `fn try_into(self) -> Result<U, Self::Error>`

### `VZip` (where V: MultiLane)

- `fn vzip(self) -> V`

### `WithSubscriber` (for T)

- `fn with_subscriber(self, subscriber: S) -> WithDispatch<T>`  
  where S: Into<Dispatch>
- `fn with_current_subscriber(self) -> WithDispatch<T>`

### `Fruit` (where T: Send + Downcast)

- (No additional items beyond trait membership)
