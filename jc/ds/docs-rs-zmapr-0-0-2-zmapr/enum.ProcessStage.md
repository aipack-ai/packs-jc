# ProcessStage in zmapr

`zmapr` 0.0.2 · Enum · Copy

Source: `zmapr/process/response.rs`

## Definition

```rust
pub enum ProcessStage {
    Fetch,
    Sanitize,
    Map,
}
```

## Variants

- `Fetch` — Retrieves source content into the workflow destination.
- `Sanitize` — Sanitizes fetched content.
- `Map` — Builds a content map from processed content.

## Trait implementations

### Clone

`ProcessStage` implements `Clone`.

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

`clone` returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### Copy

`ProcessStage` implements `Copy`.

### Debug

`ProcessStage` implements `Debug`.

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result
```

Formats the value using the given formatter.

### Eq

`ProcessStage` implements `Eq`.

### PartialEq

`ProcessStage` implements `PartialEq`.

```rust
fn eq(&self, other: &Self) -> bool
fn ne(&self, other: &Self) -> bool
```

These methods implement the equality (`==`) and inequality (`!=`) operators.

### StructuralPartialEq

`ProcessStage` implements `StructuralPartialEq`.

## Auto traits

`ProcessStage` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

### Any

Implemented for `T` where `T: 'static + ?Sized`.

```rust
fn type_id(&self) -> TypeId
```

Returns the `TypeId` of `self`.

### Borrow

Implemented for `T` where `T: ?Sized`.

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### BorrowMut

Implemented for `T` where `T: ?Sized`.

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### CloneToUninit

Implemented for `T` where `T: Clone`.

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

Performs copy-assignment from `self` to `dest`. This is a nightly-only experimental API.

### Equivalent

The following implementations are available:

- `hashbrown::Equivalent` for `Q`, where `Q: Eq + ?Sized` and `K: Borrow + ?Sized`:

  ```rust
  fn equivalent(&self, key: &K) -> bool
  ```

  Checks whether this value is equivalent to the given key.

- `equivalent::Equivalent` for `Q`, where `Q: Eq + ?Sized` and `K: Borrow + ?Sized`:

  ```rust
  fn equivalent(&self, key: &K) -> bool
  ```

  Compares `self` to `key` and returns `true` if they are equal.

### From

Implemented as `From<T> for T`.

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### Instrument

Implemented for `T`.

```rust
fn instrument(self, span: Span) -> Instrumented<Self>
fn in_current_span(self) -> Instrumented<Self>
```

These methods instrument the value with the provided span or the current span, respectively, and return an `Instrumented` wrapper.

### Into

Implemented for `T` where `U: From<T>`.

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### PolicyExt

Implemented for `T` where `T: ?Sized`.

```rust
fn and<P>(self, other: P) -> And<Self, P>
where
    Self: Sized + Policy,
    P: Policy;

fn or<P>(self, other: P) -> Or<Self, P>
where
    Self: Sized + Policy,
    P: Policy;
```

- `and` creates a policy that returns `Action::Follow` only if both policies return `Action::Follow`.
- `or` creates a policy that returns `Action::Follow` if either policy returns `Action::Follow`.

### ToOwned

Implemented for `T` where `T: Clone`, with `Owned = T`.

```rust
type Owned = T;
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

`to_owned` creates owned data from borrowed data, usually by cloning. `clone_into` uses borrowed data to replace owned data, usually by cloning.

### TryFrom

Implemented as `TryFrom<U> for T` where `U: Into<T>`, with `Error = !`.

```rust
type Error = !;
fn try_from(value: U) -> Result<T, !>
```

Performs the conversion.

### TryInto

Implemented as `TryInto<U> for T` where `U: TryFrom<T>`, with `Error = U::Error`.

```rust
type Error = U::Error;
fn try_into(self) -> Result<U, U::Error>
```

Performs the conversion.

### WithSubscriber

Implemented for `T`.

```rust
fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>
where
    S: Into<Dispatch>;

fn with_current_subscriber(self) -> WithDispatch<Self>
```

`with_subscriber` attaches the provided subscriber. `with_current_subscriber` attaches the current default subscriber. Both return a `WithDispatch` wrapper.
