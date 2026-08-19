# Struct HandlerError

## Overview

Generic handler error.

When `K` is `KindNone` (the default), the serialized output is `{"message": "..."}`. When `K` is a custom kind implementing `Display`, the output is `{"kind": "...", "message": "..."}`.

```rust
pub struct HandlerErrorDisplay + 'static = 
          KindNone> { /* private fields */ }
```

## Implementations

### impl HandlerError<KindNone>

- [pub fn new(message: impl Into<String>) -> Self](#method.new) - Create a new `HandlerError` with no kind (KindNone) and the given message.

### impl Display> HandlerError

- [pub fn with_kind(kind: K, message: impl Into<String>) -> Self](#method.with_kind) - Create a new `HandlerError` with a specific kind and message.

### impl HandlerError<KindNone>

- [pub fn custom(val: impl Into<String>) -> Self](#method.custom)
- [pub fn custom_from_err(err: impl Error) -> Self](#method.custom_from_err)
- [pub fn cc(context: impl Into<String>, cause: impl Display) -> Self](#method.cc)

### impl HandlerError<KindNone>

- [pub fn into_lua_error(self) -> Error](#method.into_lua_error) - Convert a normalized `HandlerError` into an `mlua::Error`.
- [pub fn from_lua_error_with_script(lua_error: &Error, script: &str) -> Self](#method.from_lua_error_with_script) - Build a `HandlerError` from a Lua error, enriching stack traces with the provided script source.

## Trait Implementations

### impl Clone + Display + 'static> Clone for HandlerError

- [fn clone(&self) -> HandlerError](#method.clone) - Returns a duplicate of the value.
- [fn clone_from(&mut self, source: &Self)](#method.clone_from) - Performs copy-assignment from `source`.

### impl Debug + Display + 'static> Debug for HandlerError

- [fn fmt(&self, f: &mut Formatter<'_>) -> Result](#method.fmt) - Formats the value using the given formatter.

### impl Display + 'static> Display for HandlerError

- [fn fmt(&self, f: &mut Formatter<'_>) -> Result](#method.fmt-1) - Formats the value using the given formatter.

### impl Debug + Display> Error for HandlerError

- [fn source(&self) -> Option<&(dyn Error + 'static)>](#method.source) - Returns the lower-level source of this error, if any.
- [fn description(&self) -> &str](#method.description) - Deprecated since 1.42.0.
- [fn cause(&self) -> Option<&dyn Error>](#method.cause) - Deprecated since 1.33.0.
- [fn provide<'a>(&'a self, request: &mut Request<'a>)](#method.provide) - Provides type-based access to context intended for error reports.

### impl From<&String> for HandlerError<KindNone>

- [fn from(s: &String) -> Self](#method.from-3) - Converts to this type from the input type.

### impl From<&str> for HandlerError<KindNone>

- [fn from(s: &str) -> Self](#method.from-2) - Converts to this type from the input type.

### impl From<ContextAccessError> for HandlerError

- [fn from(e: ContextAccessError) -> Self](#method.from-5) - Converts to this type from the input type.

### impl From<Error> for HandlerError

- [fn from(e: Error) -> Self](#method.from-4) - Converts to this type from the input type.

### impl From for HandlerError

- [fn from(e: Error) -> Self](#method.from-7) - Converts to this type from the input type.

### impl From<HandlerError> for Error

- [fn from(err: HandlerError) -> Self](#method.from) - Converts to this type from the input type.

### impl From<String> for HandlerError<KindNone>

- [fn from(s: String) -> Self](#method.from-1) - Converts to this type from the input type.

### impl From<Value> for HandlerError

- [fn from(v: Value) -> Self](#method.from-6) - Converts to this type from the input type.

### impl JsonSchema for HandlerError

- [fn schema_name() -> Cow<'static, str>](#method.schema_name) - The name of the generated JSON Schema.
- [fn schema_id() -> Cow<'static, str>](#method.schema_id) - Returns a string that uniquely identifies the schema produced by this type.
- [fn json_schema(generator: &mut SchemaGenerator) -> Schema](#method.json_schema) - Generates a JSON Schema for this type.
- [fn inline_schema() -> bool](#method.inline_schema) - Whether JSON Schemas generated for this type should be included directly in parent schemas.

### impl Display + 'static> Serialize for HandlerError

- [fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>](#method.serialize) - Serialize this value into the given Serde serializer.

## Auto Trait Implementations

- impl Freeze for HandlerError
- impl RefUnwindSafe for HandlerError
- impl Send for HandlerError
- impl Sync for HandlerError
- impl Unpin for HandlerError
- impl UnsafeUnpin for HandlerError
- impl UnwindSafe for HandlerError

## Blanket Implementations

- [impl Any for T](#impl-Any-for-T)
  - [fn type_id(&self) -> TypeId](#method.type_id)
- [impl Borrow for T](#impl-Borrow%3CT%3E-for-T)
  - [fn borrow(&self) -> &T](#method.borrow)
- [impl BorrowMut for T](#impl-BorrowMut%3CT%3E-for-T)
  - [fn borrow_mut(&mut self) -> &mut T](#method.borrow_mut)
- [impl CloneToUninit for T](#impl-CloneToUninit-for-T)
  - [unsafe fn clone_to_uninit(&self, dest: *mut u8)](#method.clone_to_uninit)
- [impl DynClone for T](#impl-DynClone-for-T)
  - [fn __clone_box(&self, _: Private) -> *mut ()](#method.__clone_box)
- [impl ExternalError for E](#impl-ExternalError-for-E)
  - [fn into_lua_err(self) -> Error](#method.into_lua_err)
- [impl From for T](#impl-From%3CT%3E-for-T)
  - [fn from(t: T) -> T](#method.from-8)
- [impl Instrument for T](#impl-Instrument-for-T)
  - [fn instrument(self, span: Span) -> Instrumented](#method.instrument)
  - [fn in_current_span(self) -> Instrumented](#method.in_current_span)
- [impl Into for T](#impl-Into%3CU%3E-for-T)
  - [fn into(self) -> U](#method.into)
- [impl IntoEither for T](#impl-IntoEither-for-T)
  - [fn into_either(self, into_left: bool) -> Either](#method.into_either)
  - [fn into_either_with(self, into_left: F) -> Either](#method.into_either_with)
- [impl PolicyExt for T](#impl-PolicyExt-for-T)
  - [fn and(self, other: P) -> And](#method.and)
  - [fn or(self, other: P) -> Or](#method.or)
- [impl Serialize for T](#impl-Serialize-for-T)
  - [fn erased_serialize(&self, serializer: &mut dyn Serializer) -> Result<(), Error>](#method.erased_serialize)
  - [fn do_erased_serialize(&self, serializer: &mut dyn Serializer) -> Result<(), ErrorImpl>](#method.do_erased_serialize)
- [impl ToOwned for T](#impl-ToOwned-for-T)
  - [type Owned = T](#associatedtype.Owned)
  - [fn to_owned(&self) -> T](#method.to_owned)
  - [fn clone_into(&self, target: &mut T)](#method.clone_into)
- [impl ToString for T](#impl-ToString-for-T)
  - [fn to_string(&self) -> String](#method.to_string)
- [impl TryFrom for T](#impl-TryFrom%3CU%3E-for-T)
  - [type Error = Infallible](#associatedtype.Error-1)
  - [fn try_from(value: U) -> Result<T, TryFrom::Error>](#method.try_from)
- [impl TryInto for T](#impl-TryInto%3CU%3E-for-T)
  - [type Error = TryFrom::Error](#associatedtype.Error)
  - [fn try_into(self) -> Result<U, TryFrom::Error>](#method.try_into)
- [impl WithSubscriber for T](#impl-WithSubscriber-for-T)
  - [fn with_subscriber(self, subscriber: S) -> WithDispatch](#method.with_subscriber)
  - [fn with_current_subscriber(self) -> WithDispatch](#method.with_current_subscriber)
- impl AutoreleaseSafe for T
- impl MaybeSend for T
- impl MaybeSync for T
