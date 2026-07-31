# SWatcher

**Crate:** `simple_fs` 0.12.3

## Description

`SWatcher` is a simplified file-system watcher containing a receiver for file-system events and an internal debouncer.

[Source](../src/simple_fs/watch.rs.html#49-53)

```text
pub struct SWatcher {
    pub rx: Receiver<Vec<SEvent>>,
    /* private fields */
}
```

## Fields

### `rx`

```text
pub rx: Receiver<Vec<SEvent>>
```

The receiver for batches of [`SEvent`](struct.SEvent.html) file-system events.

## Auto Trait Implementations

- `!RefUnwindSafe`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

### `Any`

Implemented for `T` where `T: 'static + ?Sized`.

```text
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `Borrow<T>`

Implemented for `T` where `T: ?Sized`.

```text
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

Implemented for `T` where `T: ?Sized`.

```text
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `From<T>`

```text
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into<U>`

Implemented for `T` where `U: From<T>`.

```text
fn into(self) -> U
```

Calls `U::from(self)`.

### `TryFrom<U>`

Implemented for `T` where `U: Into<T>`.

```text
type Error = Infallible;

fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto<U>`

Implemented for `T` where `U: TryFrom<T>`.

```text
type Error = <U as TryFrom<T>>::Error;

fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
