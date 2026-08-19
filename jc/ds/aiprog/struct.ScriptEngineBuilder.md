# Struct ScriptEngineBuilder

- [build](#method.build)
- [with_lua_policy](#method.with_lua_policy)
- [with_native_functions](#method.with_native_functions)
- [with_registry](#method.with_registry)

```rust
pub struct ScriptEngineBuilder { /* private fields */ }
```

## Implementations

### impl ScriptEngineBuilder

- [`pub fn with_registry(self, registry: AipRegistry) -> Self`](#method.with_registry)
- [`pub fn with_lua_policy(self, policy: LuaRuntimePolicy) -> Self`](#method.with_lua_policy)
- [`pub fn with_native_functions(self, native_functions: NativeFunctionSet) -> Self`](#method.with_native_functions)
- [`pub fn build(self) -> Result<ScriptEngine, EngineError>`](#method.build)

## Trait Implementations

### impl Default for ScriptEngineBuilder

- [`fn default() -> ScriptEngineBuilder`](#method.default)

Returns the “default value” for a type. [Read more](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)

## Auto Trait Implementations

- impl Freeze for ScriptEngineBuilder
- impl !RefUnwindSafe for ScriptEngineBuilder
- impl Send for ScriptEngineBuilder
- impl Sync for ScriptEngineBuilder
- impl Unpin for ScriptEngineBuilder
- impl UnsafeUnpin for ScriptEngineBuilder
- impl !UnwindSafe for ScriptEngineBuilder

## Blanket Implementations

### impl Any for T where T: 'static + ?Sized

- [`fn type_id(&self) -> TypeId`](#method.type_id)

### impl Borrow for T where T: ?Sized

- [`fn borrow(&self) -> &T`](#method.borrow)

### impl BorrowMut for T where T: ?Sized

- [`fn borrow_mut(&mut self) -> &mut T`](#method.borrow_mut)

### impl From for T

- [`fn from(t: T) -> T`](#method.from)

### impl Instrument for T

- [`fn instrument(self, span: Span) -> Instrumented`](#method.instrument)
- [`fn in_current_span(self) -> Instrumented`](#method.in_current_span)

### impl Into for T where U: From

- [`fn into(self) -> U`](#method.into)

### impl IntoEither for T

- [`fn into_either(self, into_left: bool) -> Either`](#method.into_either)
- [`fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`](#method.into_either_with)

### impl PolicyExt for T where T: ?Sized

- [`fn and(self, other: P) -> And where T: Policy, P: Policy`](#method.and)
- [`fn or(self, other: P) -> Or where T: Policy, P: Policy`](#method.or)

### impl TryFrom for T where U: Into

- `type Error = Infallible`
- [`fn try_from(value: U) -> Result<T, TryFrom::Error>`](#method.try_from)

### impl TryInto for T where U: TryFrom

- `type Error = TryFrom::Error`
- [`fn try_into(self) -> Result<T, TryFrom::Error>`](#method.try_into)

### impl WithSubscriber for T

- [`fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into`](#method.with_subscriber)
- [`fn with_current_subscriber(self) -> WithDispatch`](#method.with_current_subscriber)

### impl AutoreleaseSafe for T where T: ?Sized

### impl MaybeSend for T

### impl MaybeSync for T
