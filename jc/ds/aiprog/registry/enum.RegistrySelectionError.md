# RegistrySelectionError in aiprog::registry

## Variants

- [InvalidPattern](#variant.InvalidPattern)
- [UnmatchedPattern](#variant.UnmatchedPattern)

## Trait Implementations

- [Clone](#impl-Clone-for-RegistrySelectionError)
- [Debug](#impl-Debug-for-RegistrySelectionError)
- [Display](#impl-Display-for-RegistrySelectionError)
- [Error](#impl-Error-for-RegistrySelectionError)

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-RegistrySelectionError)
- [RefUnwindSafe](#impl-RefUnwindSafe-for-RegistrySelectionError)
- [Send](#impl-Send-for-RegistrySelectionError)
- [Sync](#impl-Sync-for-RegistrySelectionError)
- [Unpin](#impl-Unpin-for-RegistrySelectionError)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-RegistrySelectionError)
- [UnwindSafe](#impl-UnwindSafe-for-RegistrySelectionError)

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T)
- [Borrow](#impl-Borrow%3CT%3E-for-T)
- [BorrowMut](#impl-BorrowMut%3CT%3E-for-T)
- [CloneToUninit](#impl-CloneToUninit-for-T)
- [DynClone](#impl-DynClone-for-T)
- [ExternalError](#impl-ExternalError-for-E)
- [From](#impl-From%3CT%3E-for-T)
- [Instrument](#impl-Instrument-for-T)
- [Into](#impl-Into%3CU%3E-for-T)
- [IntoEither](#impl-IntoEither-for-T)
- [MaybeSend](#impl-MaybeSend-for-T)
- [MaybeSync](#impl-MaybeSync-for-T)
- [PolicyExt](#impl-PolicyExt-for-T)
- [ToOwned](#impl-ToOwned-for-T)
- [ToString](#impl-ToString-for-T)
- [TryFrom](#impl-TryFrom%3CU%3E-for-T)
- [TryInto](#impl-TryInto%3CU%3E-for-T)
- [WithSubscriber](#impl-WithSubscriber-for-T)

# Enum RegistrySelectionError

```rust
pub enum RegistrySelectionError {
    InvalidPattern {
        pattern: String,
        reason: String,
    },
    UnmatchedPattern(String),
}
```

## Variants

### InvalidPattern

#### Fields

- `pattern: String`
- `reason: String`

### UnmatchedPattern

- `UnmatchedPattern(String)`

## Trait Implementations

### impl Clone for RegistrySelectionError

```rust
fn clone(&self) -> RegistrySelectionError
```

Returns a duplicate of the value.

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### impl Debug for RegistrySelectionError

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### impl Display for RegistrySelectionError

```rust
fn fmt(&self, __derive_more_f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### impl Error for RegistrySelectionError

```rust
fn source(&self) -> Option<&(dyn Error + 'static)>
```

Returns the lower-level source of this error, if any.

```rust
fn description(&self) -> &str
```

Deprecated since 1.42.0: use the Display impl or to_string()

```rust
fn cause(&self) -> Option<&dyn Error>
```

Deprecated since 1.33.0: replaced by Error::source, which can support downcasting

```rust
fn provide<'a>(&'a self, request: &mut Request<'a>)
```

Provides type-based access to context intended for error reports.

## Auto Trait Implementations

- impl Freeze for RegistrySelectionError
- impl RefUnwindSafe for RegistrySelectionError
- impl Send for RegistrySelectionError
- impl Sync for RegistrySelectionError
- impl Unpin for RegistrySelectionError
- impl UnsafeUnpin for RegistrySelectionError
- impl UnwindSafe for RegistrySelectionError

## Blanket Implementations

### impl Any for T

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### impl Borrow for T

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### impl BorrowMut for T

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### impl CloneToUninit for T

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

Performs copy-assignment from `self` to `dest`.

### impl DynClone for T

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### impl ExternalError for E

```rust
fn into_lua_err(self) -> Error
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

### impl Into for T

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### impl IntoEither for T

```rust
fn into_either(self, into_left: bool) -> Either
```

Converts `self` into a `Left` variant of `Either` if `into_left` is `true`. Converts `self` into a `Right` variant of `Either` otherwise.

```rust
fn into_either_with(self, into_left: F) -> Either
where
    F: FnOnce(&Self) -> bool,
```

Converts `self` into a `Left` variant of `Either` if `into_left(&self)` returns `true`. Converts `self` into a `Right` variant of `Either` otherwise.

### impl PolicyExt for T

```rust
fn and(self, other: P) -> And
where
    T: Policy,
    P: Policy,
```

Create a new `Policy` that returns `Action::Follow` only if `self` and `other` return `Action::Follow`.

```rust
fn or(self, other: P) -> Or
where
    T: Policy,
    P: Policy,
```

Create a new `Policy` that returns `Action::Follow` if either `self` or `other` returns `Action::Follow`.

### impl ToOwned for T

- `type Owned = T`

```rust
fn to_owned(&self) -> T
```

Creates owned data from borrowed data, usually by cloning.

```rust
fn clone_into(&self, target: &mut T)
```

Uses borrowed data to replace owned data, usually by cloning.

### impl ToString for T

```rust
fn to_string(&self) -> String
```

Converts the given value to a `String`.

### impl TryFrom for T

- `type Error = Infallible`

```rust
fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>
```

Performs the conversion.

### impl TryInto for T

- `type Error = <U as TryFrom<T>>::Error`

```rust
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```

Performs the conversion.

### impl WithSubscriber for T

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
where
    S: Into,
```

Attaches the provided `Subscriber` to this type, returning a `WithDispatch` wrapper.

```rust
fn with_current_subscriber(self) -> WithDispatch
```

Attaches the current default `Subscriber` to this type, returning a `WithDispatch` wrapper.

### impl AutoreleaseSafe for T
### impl MaybeSend for T
### impl MaybeSync for T
