# Enum HeaderValue

Per-request header value. `Single` sets one value; `Many` sends multiple values for the same header name.

## Overview

```rust
pub enum HeaderValue {
    Single(String),
    Many(Vec<String>),
}
```

## Variants

- `Single(String)`
- `Many(Vec<String>)`

## Trait Implementations

### impl Clone for HeaderValue

```rust
fn clone(&self) -> HeaderValue
```
Returns a duplicate of the value.

```rust
fn clone_from(&mut self, source: &Self)
```
Performs copy-assignment from `source`.

### impl Debug for HeaderValue

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```
Formats the value using the given formatter.

### impl<'de> Deserialize<'de> for HeaderValue

```rust
fn deserialize<__D>(__deserializer: __D) -> Result<HeaderValue, __D::Error>
where
    __D: Deserializer<'de>,
```
Deserialize this value from the given Serde deserializer.

### impl Serialize for HeaderValue

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where
    __S: Serializer,
```
Serialize this value into the given Serde serializer.

## Auto Trait Implementations

- `impl Freeze for HeaderValue`
- `impl RefUnwindSafe for HeaderValue`
- `impl Send for HeaderValue`
- `impl Sync for HeaderValue`
- `impl Unpin for HeaderValue`
- `impl UnsafeUnpin for HeaderValue`
- `impl UnwindSafe for HeaderValue`

## Blanket Implementations

### impl Any for T
where `T: 'static + ?Sized`

```rust
fn type_id(&self) -> TypeId
```
Gets the `TypeId` of `self`.

### impl Borrow<T> for T
where `T: ?Sized`

```rust
fn borrow(&self) -> &T
```
Immutably borrows from an owned value.

### impl BorrowMut<T> for T
where `T: ?Sized`

```rust
fn borrow_mut(&mut self) -> &mut T
```
Mutably borrows from an owned value.

### impl CloneToUninit for T
where `T: Clone`

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```
Performs copy-assignment from `self` to `dest`.

### impl DynClone for T
where `T: Clone`

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### impl From for T

```rust
fn from(t: T) -> T
```
Returns the argument unchanged.

### impl Instrument for T

```rust
fn instrument(self, span: Span) -> Instrumented
```
Instruments this type with the provided `Span`, returning an `Instrumented` wrapper.

```rust
fn in_current_span(self) -> Instrumented
```
Instruments this type with the current `Span`, returning an `Instrumented` wrapper.

### impl Into<U> for T
where `U: From<T>`

```rust
fn into(self) -> U
```
Calls `U::from(self)`.

### impl IntoEither for T

```rust
fn into_either(self, into_left: bool) -> Either
```
Converts `self` into a `Left` or `Right` variant of `Either` based on `into_left`.

```rust
fn into_either_with(self, into_left: F) -> Either
where
    F: FnOnce(&Self) -> bool,
```
Converts `self` into a `Left` or `Right` variant of `Either` based on `into_left(&self)`.

### impl PolicyExt for T
where `T: ?Sized`

```rust
fn and(self, other: P) -> And
where
    T: Policy,
    P: Policy,
```
Create a new `Policy` that returns `Action::Follow` only if both return `Action::Follow`.

```rust
fn or(self, other: P) -> Or
where
    T: Policy,
    P: Policy,
```
Create a new `Policy` that returns `Action::Follow` if either returns `Action::Follow`.

### impl Serialize for T
where `T: Serialize + ?Sized`

```rust
fn erased_serialize(&self, serializer: &mut dyn Serializer) -> Result<(), Error>
```

```rust
fn do_erased_serialize(&self, serializer: &mut dyn Serializer) -> Result<(), ErrorImpl>
```

### impl ToOwned for T
where `T: Clone`

- Type `Owned = T`

```rust
fn to_owned(&self) -> T
```
Creates owned data from borrowed data, usually by cloning.

```rust
fn clone_into(&self, target: &mut T)
```
Uses borrowed data to replace owned data.

### impl TryFrom<U> for T
where `U: Into<T>`

- Type `Error = Infallible`

```rust
fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>
```
Performs the conversion.

### impl TryInto<U> for T
where `U: TryFrom<T>`

- Type `Error = <U as TryFrom<T>>::Error`

```rust
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```
Performs the conversion.

### impl WithSubscriber for T

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
where
    S: Into<Subscriber>,
```
Attaches the provided `Subscriber` to this type.

```rust
fn with_current_subscriber(self) -> WithDispatch
```
Attaches the current default `Subscriber` to this type.

### impl AutoreleaseSafe for T
where `T: ?Sized`

### impl DeserializeOwned for T
where `T: for<'de> Deserialize<'de>`

### impl MaybeSend for T

### impl MaybeSync for T
