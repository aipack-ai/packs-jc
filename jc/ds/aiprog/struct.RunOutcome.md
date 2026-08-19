# Struct RunOutcome

The result of one script execution together with its recovered context.

```rust
pub struct RunOutcome<T, E> {
    pub result: Result<T, E>,
    pub context: RunningContext,
}
```

## Fields

- [context](#structfield.context)
- [result](#structfield.result)

## Associated Functions

- [new](#method.new)

## Methods

- [into_parts](#method.into_parts)

## Implementations

### impl<T, E> RunOutcome<T, E>

- `pub fn new(result: Result<T, E>, context: RunningContext) -> Self`
- `pub fn into_parts(self) -> (Result<T, E>, RunningContext)`

## Trait Implementations

### impl<T, E> Debug for RunOutcome<T, E> where T: Debug, E: Debug

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

Formats the value using the given formatter.

## Auto Trait Implementations

- impl Freeze for RunOutcome<T, E> where T: Freeze, E: Freeze
- impl<T, E> !RefUnwindSafe for RunOutcome<T, E>
- impl<T, E> Send for RunOutcome<T, E> where T: Send, E: Send
- impl<T, E> Sync for RunOutcome<T, E> where T: Sync, E: Sync
- impl<T, E> Unpin for RunOutcome<T, E> where T: Unpin, E: Unpin
- impl<T, E> UnsafeUnpin for RunOutcome<T, E> where T: UnsafeUnpin, E: UnsafeUnpin
- impl<T, E> !UnwindSafe for RunOutcome<T, E>

## Blanket Implementations

- impl<T> Any for T where T: 'static + ?Sized
- impl<T> Borrow<T> for T where T: ?Sized
- impl<T> BorrowMut<T> for T where T: ?Sized
- impl<T> From<T> for T
- impl<T> Instrument for T
- impl<T, U> Into<U> for T where U: From<T>
- impl<T> IntoEither for T
- impl<T> MaybeSend for T
- impl<T> MaybeSync for T
- impl<T> PolicyExt for T where T: ?Sized
- impl<T, U> TryFrom<U> for T where U: Into<T>
- impl<T, U> TryInto<U> for T where U: TryFrom<T>
- impl<T> WithSubscriber for T
- impl<T> AutoreleaseSafe for T where T: ?Sized
