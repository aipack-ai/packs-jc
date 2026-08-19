# AipRegistryError

## Enum AipRegistryError

```rust
pub enum AipRegistryError {
    InvalidPath(String),
    DuplicatePath(String),
    SchemaError(String),
    HandlerSetup(String),
}
```

## Variants

- `InvalidPath(String)`
- `DuplicatePath(String)`
- `SchemaError(String)`
- `HandlerSetup(String)`

## Trait Implementations

### impl Clone for AipRegistryError

- `fn clone(&self) -> AipRegistryError`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for AipRegistryError

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Display for AipRegistryError

- `fn fmt(&self, __derive_more_f: &mut Formatter<'_>) -> Result`

### impl Error for AipRegistryError

- `fn source(&self) -> Option<&(dyn Error + 'static)>`
- `fn description(&self) -> &str`
- `fn cause(&self) -> Option<&dyn Error>`
- `fn provide<'a>(&'a self, request: &mut Request<'a>)`

### impl From<AipRegistryError> for Error

- `fn from(err: AipRegistryError) -> Self`

## Auto Trait Implementations

- `impl Freeze for AipRegistryError`
- `impl RefUnwindSafe for AipRegistryError`
- `impl Send for AipRegistryError`
- `impl Sync for AipRegistryError`
- `impl Unpin for AipRegistryError`
- `impl UnsafeUnpin for AipRegistryError`
- `impl UnwindSafe for AipRegistryError`

## Blanket Implementations

### impl Any for T

where `T: 'static + ?Sized`

- `fn type_id(&self) -> TypeId`

### impl Borrow for T

where `T: ?Sized`

- `fn borrow(&self) -> &T`

### impl BorrowMut for T

where `T: ?Sized`

- `fn borrow_mut(&mut self) -> &mut T`

### impl CloneToUninit for T

where `T: Clone`

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl DynClone for T

where `T: Clone`

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl ExternalError for E

where `E: Into<BoxError>`

- `fn into_lua_err(self) -> Error`

### impl From for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into<u> for T</u>

<u>where `U: From`

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either` where `F: FnOnce(&Self) -> bool`

### impl PolicyExt for T

where `T: ?Sized`

- `fn and(self, other: P) -> And` where `T: Policy, P: Policy`
- `fn or(self, other: P) -> Or` where `T: Policy, P: Policy`

### impl ToOwned for T

where `T: Clone`

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl ToString for T

where `T: Display + ?Sized`

- `fn to_string(&self) -> String`

### impl TryFrom<u> for T</u>

<u>where `U: Into`

- `type Error = Infallible`
- `fn try_from(value: U) -> Result`

### impl TryInto<u> for T</u>

<u>where `U: TryFrom`

- `type Error = TryFrom::Error`
- `fn try_into(self) -> Result`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where `S: Into`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T

where `T: ?Sized`

- `impl MaybeSend for T`
- `impl MaybeSync for T`
</u></u></u>
