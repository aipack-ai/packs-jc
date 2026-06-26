# TransactionBehavior

**In `turso::transaction`** (version 0.6.1)

## Description

Options for transaction behavior. See [BEGIN TRANSACTION](http://www.sqlite.org/lang_transaction.html) for details.

## Enum Definition

```text
#[non_exhaustive]
pub enum TransactionBehavior {
    Deferred,
    Immediate,
    Exclusive,
}
```

This enum is non-exhaustive – additional variants may be added in the future. When matching, an extra wildcard arm must be used.

## Variants

- **Deferred** – DEFERRED means the transaction does not actually start until the database is first accessed.
- **Immediate** – IMMEDIATE causes the database connection to start a new write immediately, without waiting for a write statement.
- **Exclusive** – EXCLUSIVE prevents other database connections from reading the database while the transaction is underway.

## Trait Implementations

### `Clone`

- `fn clone(&self) -> TransactionBehavior`
- `fn clone_from(&mut self, source: &Self)`

### `Copy`

*(No methods – marker trait)*

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `Any` (where `T: 'static + ?Sized`)

- `fn type_id(&self) -> TypeId`

### `Borrow` (where `T: ?Sized`)

- `fn borrow(&self) -> &T`

### `BorrowMut` (where `T: ?Sized`)

- `fn borrow_mut(&mut self) -> &mut T`

### `CloneToUninit` (where `T: Clone`)

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### `Downcast` (where `T: Any`)

- `fn into_any(self: Box<Self>) -> Box<dyn Any>`
- `fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>`
- `fn as_any(&self) -> &(dyn Any + 'static)`
- `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`

### `DowncastSend` (where `T: Any + Send`)

- `fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>`

### `DowncastSync` (where `T: Any + Send + Sync`)

- `fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>`
- `fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>`

### `From<T>`

- `fn from(t: T) -> T`

### `Fruit` (where `T: Send + Downcast`)

*(no methods listed)*

### `Instrument`

- `fn instrument(self, span: Span) -> Instrumented<Self>`
- `fn in_current_span(self) -> Instrumented<Self>`

### `Into<U>` (where `U: From<T>`)

- `fn into(self) -> U`

### `IntoEither`

- `fn into_either(self, into_left: bool) -> Either<Self, Self>`
- `fn into_either_with<F>(self, into_left: F) -> Either<Self, Self>` where `F: FnOnce(&Self) -> bool`

### `Pointable`

- `const ALIGN: usize`
- `type Init = T`
- `unsafe fn init(init: <T as Pointable>::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### `Same`

- `type Output = T`

### `ToOwned` (where `T: Clone`)

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### `TryFrom<U>` (where `U: Into<T>`)

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### `TryInto<U>` (where `U: TryFrom<T>`)

- `type Error = <U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, Self::Error>`

### `VZip` (where `V: MultiLane`)

- `fn vzip(self) -> V`

### `WithSubscriber`

- `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>` where `S: Into<Dispatch>`
- `fn with_current_subscriber(self) -> WithDispatch<Self>`

## Source

`turso_core/src/transaction.rs` (lines 9–19)
