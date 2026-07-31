# DebouncedEvent in `simple_fs` 0.12.3

A debounced file-system event emitted after a short delay.

## Struct Definition

```text
pub struct DebouncedEvent {
    pub event: Event,
    pub time: Instant,
}
```

**Source:** [notify-types `debouncer_full.rs`](https://docs.rs/notify-types/2.1.0/x86_64-unknown-linux-gnu/src/notify_types/debouncer_full.rs.html#13)

## Fields

- `event: Event`
  - The original event.
- `time: Instant`
  - The time at which the event occurred.

## Associated Functions

### `new`

```text
pub fn new(event: Event, time: Instant) -> DebouncedEvent
```

Creates a new [`DebouncedEvent`](struct.DebouncedEvent.html) from an [`Event`](https://docs.rs/notify-types/2.1.0/x86_64-unknown-linux-gnu/notify_types/event/struct.Event.html) and an [`Instant`](https://doc.rust-lang.org/nightly/std/time/struct.Instant.html).

## Methods from `Deref<Target = Event>`

Because `DebouncedEvent` dereferences to `Event`, it provides the following methods.

### `need_rescan`

```text
pub fn need_rescan(&self) -> bool
```

Returns whether some events may have been missed. If `true`, assume that any file or folder might have been modified.

See [`Flag::Rescan`](https://docs.rs/notify-types/2.1.0/x86_64-unknown-linux-gnu/notify_types/event/enum.Flag.html#variant.Rescan) for more information.

### `tracker`

```text
pub fn tracker(&self) -> Option<usize>
```

Retrieves the tracker ID for the event directly, if present.

### `flag`

```text
pub fn flag(&self) -> Option<Flag>
```

Retrieves the Notify flag for the event directly, if present.

### `info`

```text
pub fn info(&self) -> Option<&str>
```

Retrieves additional information for the event directly, if present.

### `source`

```text
pub fn source(&self) -> Option<&str>
```

Retrieves the source for the event directly, if present.

## Trait Implementations

### `Clone`

```text
impl Clone for DebouncedEvent {
    fn clone(&self) -> DebouncedEvent;
    fn clone_from(&mut self, source: &Self);
}
```

### `Debug`

```text
impl Debug for DebouncedEvent {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>;
}
```

### `Deref`

```text
impl Deref for DebouncedEvent {
    type Target = Event;

    fn deref(&self) -> &Self::Target;
}
```

### `DerefMut`

```text
impl DerefMut for DebouncedEvent {
    fn deref_mut(&mut self) -> &mut Self::Target;
}
```

### `Eq`

```text
impl Eq for DebouncedEvent
```

### `PartialEq`

```text
impl PartialEq for DebouncedEvent {
    fn eq(&self, other: &DebouncedEvent) -> bool;
    fn ne(&self, other: &Rhs) -> bool;
}
```

### `StructuralPartialEq`

```text
impl StructuralPartialEq for DebouncedEvent
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `Any`

```text
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> TypeId;
}
```

### `Borrow`

```text
impl<T: ?Sized> Borrow<T> for T {
    fn borrow(&self) -> &T;
}
```

### `BorrowMut`

```text
impl<T: ?Sized> BorrowMut<T> for T {
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `CloneToUninit`

```text
impl<T: Clone> CloneToUninit for T {
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}
```

This is a nightly-only experimental API.

### `From`

```text
impl<T> From<T> for T {
    fn from(t: T) -> T;
}
```

Returns the argument unchanged.

### `Into`

```text
impl<T, U: From<T>> Into<U> for T {
    fn into(self) -> U;
}
```

Calls `U::from(self)`.

### `Receiver`

```text
impl<P, T> Receiver for P
where
    P: Deref<Target = T> + ?Sized,
    T: ?Sized,
{
    type Target = T;
}
```

This is a nightly-only experimental API.

### `ToOwned`

```text
impl<T: Clone> ToOwned for T {
    type Owned = T;

    fn to_owned(&self) -> T;
    fn clone_into(&self, target: &mut T);
}
```

### `TryFrom`

```text
impl<T, U: Into<T>> TryFrom<U> for T {
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

### `TryInto`

```text
impl<T, U: TryFrom<T>> TryInto<U> for T {
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```
