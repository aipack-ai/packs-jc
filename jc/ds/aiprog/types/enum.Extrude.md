# Enum Extrude

- [Source](../../src/aiprog/types/extrude.rs.html#8-10)

```rust
pub enum Extrude {
    Content,
}
```

The type of "extrude" to be performed.

- `Content` - Concatenate all lines outside of marked blocks into one string.
- `Fragments` - (NOT SUPPORTED YET): Have a vector of strings for Before, In Between, and After

## Variants

### Content

## Implementations

### impl Extrude

- [Source](../../src/aiprog/types/extrude.rs.html#13-26)

#### pub fn extract_from_table_value

```rust
pub fn extract_from_table_value(value: &Table) -> Result<Option<Extrude>>
```

## Trait Implementations

### impl Clone for Extrude

#### fn clone

```rust
fn clone(&self) -> Extrude
```

Returns a duplicate of the value.

#### fn clone_from

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### impl Debug for Extrude

#### fn fmt

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### impl Copy for Extrude

## Auto Trait Implementations

### impl Freeze for Extrude

### impl RefUnwindSafe for Extrude

### impl Send for Extrude

### impl Sync for Extrude

### impl Unpin for Extrude

### impl UnsafeUnpin for Extrude

### impl UnwindSafe for Extrude

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized

#### fn type_id

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### impl Borrow for T

where T: ?Sized

#### fn borrow

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### impl BorrowMut for T

where T: ?Sized

#### fn borrow_mut

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### impl CloneToUninit for T

where T: Clone

#### unsafe fn clone_to_uninit

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

Performs copy-assignment from `self` to `dest`.

### impl DynClone for T

where T: Clone

#### fn __clone_box

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### impl From for T

#### fn from

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### impl Instrument for T

#### fn instrument

```rust
fn instrument(self, span: Span) -> Instrumented
```

Instruments this type with the provided `Span`, returning an `Instrumented` wrapper.

#### fn in_current_span

```rust
fn in_current_span(self) -> Instrumented
```

Instruments this type with the current `Span`, returning an `Instrumented` wrapper.

### impl Into for T

where U: From

#### fn into

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### impl IntoEither for T

#### fn into_either

```rust
fn into_either(self, into_left: bool) -> Either
```

Converts `self` into a `Left` variant of `Either` if `into_left` is `true`. Converts `self` into a `Right` variant of `Either` otherwise.

#### fn into_either_with

```rust
fn into_either_with(self, into_left: F) -> Either
where
    F: FnOnce(&Self) -> bool,
```

Converts `self` into a `Left` variant of `Either` if `into_left(&self)` returns `true`. Converts `self` into a `Right` variant of `Either` otherwise.

### impl PolicyExt for T

where T: ?Sized

#### fn and

```rust
fn and(self, other: P) -> And
where
    T: Policy,
    P: Policy,
```

Create a new `Policy` that returns `Action::Follow` only if `self` and `other` return `Action::Follow`.

#### fn or

```rust
fn or(self, other: P) -> Or
where
    T: Policy,
    P: Policy,
```

Create a new `Policy` that returns `Action::Follow` if either `self` or `other` returns `Action::Follow`.

### impl ToOwned for T

where T: Clone

#### type Owned

```rust
type Owned = T
```

The resulting type after obtaining ownership.

#### fn to_owned

```rust
fn to_owned(&self) -> T
```

Creates owned data from borrowed data, usually by cloning.

#### fn clone_into

```rust
fn clone_into(&self, target: &mut T)
```

Uses borrowed data to replace owned data, usually by cloning.

### impl TryFrom for T

where U: Into

#### type Error

```rust
type Error = Infallible
```

The type returned in the event of a conversion error.

#### fn try_from

```rust
fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### impl TryInto for T

where U: TryFrom

#### type Error

```rust
type Error = U::Error
```

The type returned in the event of a conversion error.

#### fn try_into

```rust
fn try_into(self) -> Result<T, Self::Error>
```

Performs the conversion.

### impl WithSubscriber for T

#### fn with_subscriber

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
where
    S: Into,
```

Attaches the provided `Subscriber` to this type, returning a `WithDispatch` wrapper.

#### fn with_current_subscriber

```rust
fn with_current_subscriber(self) -> WithDispatch
```

Attaches the current default `Subscriber` to this type, returning a `WithDispatch` wrapper.

### impl AutoreleaseSafe for T

where T: ?Sized

### impl MaybeSend for T

### impl MaybeSync for T
