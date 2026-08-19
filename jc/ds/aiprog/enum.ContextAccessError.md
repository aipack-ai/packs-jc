# ContextAccessError in aiprog - Rust

## Enum ContextAccessError

```js
pub enum ContextAccessError {
    MissingValue {
        type_name: &'static str,
    },
    ContextUnavailable,
    LockPoisoned,
}
```

## Variants

- [ContextUnavailable](#variant.ContextUnavailable)
- [LockPoisoned](#variant.LockPoisoned)
- [MissingValue](#variant.MissingValue)

### MissingValue

#### Fields

- `type_name: &'static str`

### ContextUnavailable

### LockPoisoned

## Trait Implementations

### impl Clone for ContextAccessError

- `fn clone(&self) -> ContextAccessError`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for ContextAccessError

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Display for ContextAccessError

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Error for ContextAccessError

- `fn source(&self) -> Option<&(dyn Error + 'static)>`
- `fn description(&self) -> &str`
- `fn cause(&self) -> Option<&dyn Error>`
- `fn provide<'a>(&'a self, request: &mut Request<'a>)`

### impl From<ContextAccessError> for HandlerError

- `fn from(e: ContextAccessError) -> Self`

### impl PartialEq for ContextAccessError

- `fn eq(&self, other: &ContextAccessError) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### impl Copy for ContextAccessError

### impl Eq for ContextAccessError

### impl StructuralPartialEq for ContextAccessError

## Auto Trait Implementations

- [Freeze for ContextAccessError](#synthetic-implementations)
- [RefUnwindSafe for ContextAccessError](#synthetic-implementations)
- [Send for ContextAccessError](#synthetic-implementations)
- [Sync for ContextAccessError](#synthetic-implementations)
- [Unpin for ContextAccessError](#synthetic-implementations)
- [UnsafeUnpin for ContextAccessError](#synthetic-implementations)
- [UnwindSafe for ContextAccessError](#synthetic-implementations)

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
