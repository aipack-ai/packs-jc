# `ItemStatus`

`ItemStatus` is an enum in the `refinr` crate, version `0.0.1`. It represents the lifecycle status of a processing stage for an item.

## Definition

```rust
pub enum ItemStatus {
    Pending,
    Running,
    Completed,
    Reused,
    Skipped,
    Failed,
}
```

## Variants

- `Pending` — The stage has not started.
- `Running` — The stage is currently running.
- `Completed` — The stage completed successfully.
- `Reused` — The stage output was reused rather than produced again.
- `Skipped` — The stage was skipped.
- `Failed` — The stage failed.

## Trait implementations

`ItemStatus` implements `Clone`, `Copy`, `Debug`, `Eq`, `PartialEq`, and `StructuralPartialEq`.

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

Returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Copy`

`ItemStatus` is `Copy`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

Formats the value using the given formatter.

### `Eq`

`ItemStatus` implements `Eq`.

### `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

Compares two values for equality or inequality.

### `StructuralPartialEq`

`ItemStatus` implements `StructuralPartialEq`.

## Auto traits

`ItemStatus` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

The following blanket implementations apply to `ItemStatus` through its standard traits and dependencies.

### `Any`

For `T: 'static + ?Sized`:

```rust
fn type_id(&self) -> TypeId;
```

Returns the `TypeId` of the value.

### `Borrow`

For `T: ?Sized`:

```rust
fn borrow(&self) -> &T;
```

Immutably borrows from an owned value.

### `BorrowMut`

For `T: ?Sized`:

```rust
fn borrow_mut(&mut self) -> &mut T;
```

Mutably borrows from an owned value.

### `CloneToUninit`

For `T: Clone`:

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8);
```

This is a nightly-only experimental API. It performs copy-assignment from `self` to `dest`.

### `Equivalent`

The `hashbrown::Equivalent` and `equivalent::Equivalent` implementations have the same method signature. For `Q: Eq + ?Sized` and `K: Borrow + ?Sized`:

```rust
fn equivalent(&self, key: &K) -> bool;
```

Checks whether this value is equivalent to the given key.

### `From`

```rust
fn from(t: T) -> T;
```

Returns the argument unchanged.

### `Instrument`

```rust
fn instrument(self, span: Span) -> Instrumented<Self>;
fn in_current_span(self) -> Instrumented<Self>;
```

Wraps the value in an `Instrumented` value using the provided span or the current span.

### `Into`

For `U: From<T>`:

```rust
fn into(self) -> U;
```

Converts the value by calling `U::from(self)`.

### `PolicyExt`

For `T: ?Sized`:

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

- `and` creates a policy that follows only if both policies return `Action::Follow`.
- `or` creates a policy that follows if either policy returns `Action::Follow`.

### `ToOwned`

For `T: Clone`:

```rust
type Owned = T;

fn to_owned(&self) -> T;
fn clone_into(&self, target: &mut T);
```

Creates owned data from borrowed data, usually by cloning, or uses borrowed data to replace owned data.

### `TryFrom`

For `U: Into<T>`:

```rust
type Error = !;

fn try_from(value: U) -> Result<T, Self::Error>;
```

Performs the conversion.

### `TryInto`

For `U: TryFrom<T>`:

```rust
type Error = <U as TryFrom<T>>::Error;

fn try_into(self) -> Result<U, Self::Error>;
```

Performs the conversion.

### `WithSubscriber`

```rust
fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>
where
    S: Into<Dispatch>;

fn with_current_subscriber(self) -> WithDispatch<Self>;
```

Attaches the provided subscriber or the current default subscriber to the value, returning a `WithDispatch` wrapper.
