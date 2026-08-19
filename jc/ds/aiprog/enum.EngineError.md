# Enum EngineError

## Overview

- [Variants](#variants)
- [Trait Implementations](#trait-implementation)
- [Auto Trait Implementations](#auto-trait-implementations)
- [Blanket Implementations](#blanket-implementations)

## Variants

- [Build](#variant.Build)
- [Context](#variant.Context)
- [Custom](#variant.Custom)
- [FinishRecovery](#variant.FinishRecovery)
- [Start](#variant.Start)

```rust
pub enum EngineError {
    Build(EngineBuildError),
    Start(EngineStartError),
    FinishRecovery(Box<RunningEngineFinishError<Value>>),
    Context(RunningEngineContextError),
    Custom(String),
}
```

## Trait Implementations

### impl Debug for EngineError

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

### impl Display for EngineError

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html#tymethod.fmt)

### impl Error for EngineError

```rust
fn source(&self) -> Option<&(dyn Error + 'static)>
```

Returns the lower-level source of this error, if any. [Read more](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.source)

```rust
fn description(&self) -> &str
```

Deprecated since 1.42.0: use the Display impl or to_string() [Read more](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.description)

```rust
fn cause(&self) -> Option<&dyn Error>
```

Deprecated since 1.33.0: replaced by Error::source, which can support downcasting

```rust
fn provide<'a>(&'a self, request: &mut Request<'a>)
```

This is a nightly-only experimental API. (`error_generic_member_access`) Provides type-based access to context intended for error reports. [Read more](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.provide)

### impl From<&str> for EngineError

```rust
fn from(value: &str) -> Self
```

Converts to this type from the input type.

### impl From<Box<RunningEngineFinishError<Value>>> for EngineError

```rust
fn from(value: Box<RunningEngineFinishError<Value>>) -> Self
```

Converts to this type from the input type.

### impl From<EngineError> for Error

```rust
fn from(value: EngineError) -> Self
```

Converts to this type from the input type.

### impl From<Error> for EngineError

```rust
fn from(err: Error) -> Self
```

Converts to this type from the input type.

### impl From<String> for EngineError

```rust
fn from(value: String) -> Self
```

Converts to this type from the input type.

## Auto Trait Implementations

- impl Freeze for EngineError
- impl !RefUnwindSafe for EngineError
- impl !Send for EngineError
- impl !Sync for EngineError
- impl Unpin for EngineError
- impl UnsafeUnpin for EngineError
- impl !UnwindSafe for EngineError

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized,

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

### impl Borrow<T> for T

where T: ?Sized,

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

### impl BorrowMut<T> for T

where T: ?Sized,

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### impl ExternalError for E

where E: Into<Box<Error>>,

```rust
fn into_lua_err(self) -> Error
```

### impl From<T> for T

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

where U: From,

```rust
fn into(self) -> U
```

Calls `U::from(self)`. That is, this conversion is whatever the implementation of `From for U` chooses to do.

### impl IntoEither for T

```rust
fn into_either(self, into_left: bool) -> Either
```

Converts `self` into a [`Left`](https://docs.rs/either/1/either/enum.Either.html#variant.Left) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html#identity) if `into_left` is `true`. Converts `self` into a [`Right`](https://docs.rs/either/1/either/enum.Either.html#variant.Right) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html#identity) otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)

```rust
fn into_either_with(self, into_left: F) -> Either
```

where F: FnOnce(&Self) -> bool,

Converts `self` into a [`Left`](https://docs.rs/either/1/either/enum.Either.html#variant.Left) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html#identity) if `into_left(&self)` returns `true`. Converts `self` into a [`Right`](https://docs.rs/either/1/either/enum.Either.html#variant.Right) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html#identity) otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)

### impl PolicyExt for T

where T: ?Sized,

```rust
fn and(self, other: P) -> And
```

where T: Policy, P: Policy,

Create a new `Policy` that returns `Action::Follow` only if `self` and `other` return `Action::Follow`.

```rust
fn or(self, other: P) -> Or
```

where T: Policy, P: Policy,

Create a new `Policy` that returns `Action::Follow` if either `self` or `other` returns `Action::Follow`.

### impl ToString for T

where T: Display + ?Sized,

```rust
fn to_string(&self) -> String
```

Converts the given value to a `String`. [Read more](https://doc.rust-lang.org/1.97.1/alloc/string/trait.ToString.html#tymethod.to_string)

### impl TryFrom<U> for T

where U: Into,

```rust
type Error = Infallible
```

The type returned in the event of a conversion error.

```rust
fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>
```

Performs the conversion.

### impl TryInto<U> for T

where U: TryFrom,

```rust
type Error = <U as TryFrom<T>>::Error
```

The type returned in the event of a conversion error.

```rust
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```

Performs the conversion.

### impl WithSubscriber for T

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
```

where S: Into,

Attaches the provided `Subscriber` to this type, returning a `WithDispatch` wrapper.

```rust
fn with_current_subscriber(self) -> WithDispatch
```

Attaches the current default `Subscriber` to this type, returning a `WithDispatch` wrapper.

### impl AutoreleaseSafe for T

where T: ?Sized,

### impl MaybeSend for T

### impl MaybeSync for T
