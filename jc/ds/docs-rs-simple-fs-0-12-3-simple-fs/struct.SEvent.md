# SEvent in `simple_fs`

## Crate

[`simple_fs`](../simple_fs/index.html) 0.12.3

## Struct `SEvent`

```text
pub struct SEvent {
    pub spath: SPath,
    pub skind: SEventKind,
}
```

A greatly simplified file event struct containing one path and one simplified event kind. Events are additionally debounced on top of the debouncer to ensure only one path and event kind occur per debounced event list.

## Fields

- `spath: SPath`
- `skind: SEventKind`

## Trait Implementations

### `Debug`

Implements [`Debug`](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for `SEvent`.

#### `fmt`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

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

Implemented for `T` where `T: 'static + ?Sized`.

#### `type_id`

```text
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `Borrow<T>`

Implemented for `T` where `T: ?Sized`.

#### `borrow`

```text
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

Implemented for `T` where `T: ?Sized`.

#### `borrow_mut`

```text
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `From<T>`

Implemented for `T`.

#### `from`

```text
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into<U>`

Implemented for `T` where `U: From<T>`.

#### `into`

```text
fn into(self) -> U
```

Calls `U::from(self)`.

### `TryFrom<U>`

Implemented for `T` where `U: Into<T>`.

#### Associated type `Error`

```text
type Error = Infallible
```

The type returned in the event of a conversion error.

#### `try_from`

```text
fn try_from(value: U) -> Result<T, Infallible>
```

Performs the conversion.

### `TryInto<U>`

Implemented for `T` where `U: TryFrom<T>`.

#### Associated type `Error`

```text
type Error = U::Error
```

The type returned in the event of a conversion error.

#### `try_into`

```text
fn try_into(self) -> Result<U, U::Error>
```

Performs the conversion.
