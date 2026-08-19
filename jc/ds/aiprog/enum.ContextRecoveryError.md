# Enum ContextRecoveryError

[Source](https://doc.rust-lang.org/1.97.1/src/core/clone.rs.html)

```rust
pub enum ContextRecoveryError {
    OutstandingHandles,
    ContextUnavailable,
    LockPoisoned,
}
```

## Variants

- [ContextUnavailable](#variant.ContextUnavailable)
- [LockPoisoned](#variant.LockPoisoned)
- [OutstandingHandles](#variant.OutstandingHandles)

## Trait Implementations

### impl Clone for ContextRecoveryError

- `fn clone(&self) -> ContextRecoveryError`
- `fn clone_from(&mut self, source: &Self)`

### impl Copy for ContextRecoveryError

### impl Debug for ContextRecoveryError

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Display for ContextRecoveryError

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Eq for ContextRecoveryError

### impl Error for ContextRecoveryError

- `fn source(&self) -> Option<&(dyn Error + 'static)>`
- `fn description(&self) -> &str`
- `fn cause(&self) -> Option<&dyn Error>`
- `fn provide<'a>(&'a self, request: &mut Request<'a>)`

### impl PartialEq for ContextRecoveryError

- `fn eq(&self, other: &ContextRecoveryError) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### impl StructuralPartialEq for ContextRecoveryError

## Auto Trait Implementations

- impl Freeze for ContextRecoveryError
- impl RefUnwindSafe for ContextRecoveryError
- impl Send for ContextRecoveryError
- impl Sync for ContextRecoveryError
- impl Unpin for ContextRecoveryError
- impl UnsafeUnpin for ContextRecoveryError
- impl UnwindSafe for ContextRecoveryError

## Blanket Implementations

### impl Any for T

- `fn type_id(&self) -> TypeId`

### impl Borrow for T

- `fn borrow(&self) -> &T`

### impl BorrowMut for T

- `fn borrow_mut(&mut self) -> &mut T`

### impl CloneToUninit for T

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl DynClone for T

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl Equivalent for Q

- `fn equivalent(&self, key: &K) -> bool`

### impl ExternalError for E

- `fn into_lua_err(self) -> Error`

### impl From for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into for T

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### impl PolicyExt for T

- `fn and(self, other: P) -> And`
- `fn or(self, other: P) -> Or`

### impl ToOwned for T

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl ToString for T

- `fn to_string(&self) -> String`

### impl TryFrom for T

- `type Error = Infallible`
- `fn try_from(value: U) -> Result`

### impl TryInto for T

- `type Error = TryFrom::Error`
- `fn try_into(self) -> Result`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T

### impl MaybeSend for T

### impl MaybeSync for T
