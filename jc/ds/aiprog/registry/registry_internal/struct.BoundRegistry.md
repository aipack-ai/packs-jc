# Struct BoundRegistry

```rust
pub struct BoundRegistry { /* private fields */ }
```

## Implementations

### impl BoundRegistry

- [Source](https://doc.rust-lang.org/1.97.1/src/...)

```rust
pub fn from_definitions(
    definitions: &[Arc],
    call_context: HandlerCallContext,
) -> Self
```

## Trait Implementations

### impl IntoIterator for BoundRegistry

- type Item = BoundRegistryEntry
- type IntoIter = IntoIter<BoundRegistryEntry>

```rust
fn into_iter(self) -> Self::IntoIter
```

## Auto Trait Implementations

- impl Freeze for BoundRegistry
- impl !RefUnwindSafe for BoundRegistry
- impl Send for BoundRegistry
- impl Sync for BoundRegistry
- impl Unpin for BoundRegistry
- impl UnsafeUnpin for BoundRegistry
- impl !UnwindSafe for BoundRegistry

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized,

```rust
fn type_id(&self) -> TypeId
```

### impl Borrow for T

where T: ?Sized,

```rust
fn borrow(&self) -> &T
```

### impl BorrowMut for T

where T: ?Sized,

```rust
fn borrow_mut(&mut self) -> &mut T
```

### impl From for T

```rust
fn from(t: T) -> T
```

### impl Instrument for T

```rust
fn instrument(self, span: Span) -> Instrumented
fn in_current_span(self) -> Instrumented
```

### impl Into for T

where U: From,

```rust
fn into(self) -> U
```

### impl IntoEither for T

```rust
fn into_either(self, into_left: bool) -> Either
fn into_either_with(self, into_left: F) -> Either
where
    F: FnOnce(&Self) -> bool,
```

### impl PolicyExt for T

where T: ?Sized,

```rust
fn and(self, other: P) -> And
where
    T: Policy,
    P: Policy,

fn or(self, other: P) -> Or
where
    T: Policy,
    P: Policy,
```

### impl TryFrom for T

where U: Into,

- type Error = Infallible

```rust
fn try_from(value: U) -> Result<T, <U as TryFrom<T>>::Error>
```

### impl TryInto for T

where U: TryFrom,

- type Error = <U as TryFrom<T>>::Error

```rust
fn try_into(self) -> Result<T, <U as TryFrom<T>>::Error>
```

### impl WithSubscriber for T

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
where
    S: Into,

fn with_current_subscriber(self) -> WithDispatch
```

### impl AutoreleaseSafe for T

where T: ?Sized,

### impl MaybeSend for T

### impl MaybeSync for T
