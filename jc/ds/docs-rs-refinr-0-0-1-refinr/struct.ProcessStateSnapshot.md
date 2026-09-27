# ProcessStateSnapshot

`ProcessStateSnapshot` is a point-in-time copy of workflow state and retained progress history.

## Definition

```rust
pub struct ProcessStateSnapshot {
    pub stats: ProgressStats,
    pub items: Vec<ItemState>,
}
```

## Fields

- `stats: ProgressStats` — Current stage statistics.
- `items: Vec<ItemState>` — Current state of all registered items.

## Trait implementations

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result;
```

### `Default`

```rust
fn default() -> Self;
```

## Auto traits

`ProcessStateSnapshot` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket implementations

### `Any`

Implemented for `T` where `T: 'static + ?Sized`.

```rust
fn type_id(&self) -> TypeId;
```

### `Borrow<T>`

Implemented for `T` where `T: ?Sized`.

```rust
fn borrow(&self) -> &T;
```

### `BorrowMut<T>`

Implemented for `T` where `T: ?Sized`.

```rust
fn borrow_mut(&mut self) -> &mut T;
```

### `CloneToUninit`

Implemented for `T` where `T: Clone`. This is a nightly-only experimental API.

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8);
```

### `From<T> for T`

```rust
fn from(t: T) -> T;
```

Returns the argument unchanged.

### `Instrument`

```rust
fn instrument(self, span: Span) -> Instrumented<Self>;
fn in_current_span(self) -> Instrumented<Self>;
```

### `Into<U> for T`

Implemented where `U: From<T>`.

```rust
fn into(self) -> U;
```

### `PolicyExt`

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

`and` creates a policy that follows only when both policies return `Action::Follow`. `or` creates a policy that follows when either policy returns `Action::Follow`.

### `ToOwned`

Implemented for `T` where `T: Clone`. The associated type is `Owned = T`.

```rust
fn to_owned(&self) -> T;
fn clone_into(&self, target: &mut T);
```

### `TryFrom<U> for T`

Implemented where `U: Into<T>`. The associated error type is `Infallible`.

```rust
fn try_from(value: U) -> Result<T, Infallible>;
```

### `TryInto<U> for T`

Implemented where `U: TryFrom<T>`. The associated error type is `<U as TryFrom<T>>::Error`.

```rust
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>;
```

### `WithSubscriber`

```rust
fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>
where
    S: Into<Dispatch>;

fn with_current_subscriber(self) -> WithDispatch<Self>;
```
