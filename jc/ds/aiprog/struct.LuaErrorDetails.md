# Struct LuaErrorDetails

Script-aware error container carried by `Error::LuaScript`.

The full script is retained via a cheap `Arc` for consumers that need the whole source, while `surround_code` is precomputed at construction time so that `Display` and serialization do not need to re-derive it.

```js
pub struct LuaErrorDetails { /* private fields */ }
```

## Implementations

### impl LuaErrorDetails

- `pub fn new(script: impl Into<Arc<str>>, line_number: Option<u32>, message: impl Into<String>, stack_trace: Option<String>) -> Self`
  
  Create the details from the full script, an optional failing line number, the message, and an optional stack traceback. `surround_code` is derived from `script` and `line_number` at construction time.

- `pub fn from_lua_error(lua_error: &Error, script: impl Into<Arc<str>>) -> Self`
  
  Build the details from an `mlua::Error` and the executed script source. The engine loads scripts with the chunk name `=script`, so error locations look like `script:12:`. The first such location found while walking the error chain is used as the failing line number. The error message and stack traceback are split at the `stack traceback:` boundary: `message` contains only the human-readable cause, while `stack_trace` carries the traceback block (if present).

### impl LuaErrorDetails

- `pub fn script(&self) -> &str`
- `pub fn line_number(&self) -> Option<u32>`
- `pub fn surround_code(&self) -> Option<&str>`
- `pub fn message(&self) -> &str`
- `pub fn stack_trace(&self) -> Option<&str>`

## Trait Implementations

### impl Clone for LuaErrorDetails

- `fn clone(&self) -> LuaErrorDetails`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for LuaErrorDetails

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Display for LuaErrorDetails

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl From<LuaErrorDetails> for Error

- `fn from(value: LuaErrorDetails) -> Self`

### impl Serialize for LuaErrorDetails

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>`

## Auto Trait Implementations

- `impl Freeze for LuaErrorDetails`
- `impl RefUnwindSafe for LuaErrorDetails`
- `impl Send for LuaErrorDetails`
- `impl Sync for LuaErrorDetails`
- `impl Unpin for LuaErrorDetails`
- `impl UnsafeUnpin for LuaErrorDetails`
- `impl UnwindSafe for LuaErrorDetails`

## Blanket Implementations

### impl Any for T

- `fn type_id(&self) -> TypeId`

### impl Borrow<T> for T

- `fn borrow(&self) -> &T`

### impl BorrowMut<T> for T

- `fn borrow_mut(&mut self) -> &mut T`

### impl CloneToUninit for T

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl DynClone for T

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl From<T> for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into<U> for T

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### impl PolicyExt for T

- `fn and(self, other: P) -> And`
- `fn or(self, other: P) -> Or`

### impl Serialize for T

- `fn erased_serialize(&self, serializer: &mut dyn Serializer) -> Result<(), Error>`
- `fn do_erased_serialize(&self, serializer: &mut dyn Serializer) -> Result<(), ErrorImpl>`

### impl ToOwned for T

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl ToString for T

- `fn to_string(&self) -> String`

### impl TryFrom<U> for T

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, TryFrom::Error>`

### impl TryInto<U> for T

- `type Error = TryFrom::Error`
- `fn try_into(self) -> Result<T, TryFrom::Error>`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T
### impl MaybeSend for T
### impl MaybeSync for T
