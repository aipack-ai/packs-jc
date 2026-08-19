# Struct PathPolicy

```rust
pub struct PathPolicy { /* private fields */ }
```

A set of canonical directory roots allowed for one class of operations.

## Implementations

### impl PathPolicy

```rust
pub fn new(allowed_roots: impl IntoIterator, absolute_paths: AbsolutePathPolicy) -> Result<PathPolicy, DirPolicyError>
```

## Trait Implementations

### impl Clone for PathPolicy

```rust
fn clone(&self) -> PathPolicy
```

Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)

### impl Debug for PathPolicy

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

## Auto Trait Implementations

- impl Freeze for PathPolicy
- impl RefUnwindSafe for PathPolicy
- impl Send for PathPolicy
- impl Sync for PathPolicy
- impl Unpin for PathPolicy
- impl UnsafeUnpin for PathPolicy
- impl UnwindSafe for PathPolicy

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized,

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

### impl Borrow for T

where T: ?Sized,

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

### impl BorrowMut for T

where T: ?Sized,

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### impl CloneToUninit for T

where T: Clone,

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

🔬This is a nightly-only experimental API. (`clone_to_uninit`)

Performs copy-assignment from `self` to `dest`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)

### impl DynClone for T

where T: Clone,

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

Instruments this type with the provided [`Span`], returning an `Instrumented` wrapper. Read more

```rust
fn in_current_span(self) -> Instrumented
```

Instruments this type with the current [`Span`], returning an `Instrumented` wrapper. Read more

### impl Into for T

where U: From,

```rust
fn into(self) -> U
```

Calls `U::from(self)`. That is, this conversion is whatever the implementation of [`From` for U](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) chooses to do.

### impl IntoEither for T

```rust
fn into_either(self, into_left: bool) -> Either
```

Converts `self` into a [`Left`](https://docs.rs/either/1/either/enum.Either.html#variant.Left) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html) if `into_left` is `true`. Converts `self` into a [`Right`](https://docs.rs/either/1/either/enum.Either.html#variant.Right) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html) otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)

```rust
fn into_either_with(self, into_left: F) -> Either
```

where F: FnOnce(&Self) -> bool,

Converts `self` into a [`Left`](https://docs.rs/either/1/either/enum.Either.html#variant.Left) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html) if `into_left(&self)` returns `true`. Converts `self` into a [`Right`](https://docs.rs/either/1/either/enum.Either.html#variant.Right) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html) otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)

### impl PolicyExt for T

where T: ?Sized,

```rust
fn and(self, other: P) -> And
```

where T: Policy, P: Policy,

Create a new `Policy` that returns [`Action::Follow`] only if `self` and `other` return `Action::Follow`. Read more

```rust
fn or(self, other: P) -> Or
```

where T: Policy, P: Policy,

Create a new `Policy` that returns [`Action::Follow`] if either `self` or `other` returns `Action::Follow`. Read more

### impl ToOwned for T

where T: Clone,

```rust
type Owned = T
```

The resulting type after obtaining ownership.

```rust
fn to_owned(&self) -> T
```

Creates owned data from borrowed data, usually by cloning. [Read more](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)

```rust
fn clone_into(&self, target: &mut T)
```

Uses borrowed data to replace owned data, usually by cloning. [Read more](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)

### impl TryFrom for T

where U: Into,

```rust
type Error = Infallible
```

The type returned in the event of a conversion error.

```rust
fn try_from(value: U) -> Result
```

Performs the conversion.

### impl TryInto for T

where U: TryFrom,

```rust
type Error = TryFrom::Error
```

The type returned in the event of a conversion error.

```rust
fn try_into(self) -> Result
```

Performs the conversion.

### impl WithSubscriber for T

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
```

where S: Into,

Attaches the provided [`Subscriber`] to this type, returning a [`WithDispatch`] wrapper. Read more

```rust
fn with_current_subscriber(self) -> WithDispatch
```

Attaches the current default [`Subscriber`] to this type, returning a [`WithDispatch`] wrapper. Read more

### impl AutoreleaseSafe for T

where T: ?Sized,

### impl MaybeSend for T

### impl MaybeSync for T
