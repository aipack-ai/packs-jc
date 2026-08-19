# Struct WebClientBuilder

```rust
pub struct WebClientBuilder { /* private fields */ }
```

## Associated Functions

- [`new`](#method.new)
- [`with_default_user_agent`](#method.with_default_user_agent)
- [`with_redirect_limit`](#method.with_redirect_limit)
- [`build`](#method.build)

## Implementations

### impl [WebClientBuilder](struct.WebClientBuilder.html)

- `pub fn new() -> Self`
- `pub fn with_default_user_agent(self, ua: impl Into<String>) -> Self`
- `pub fn with_redirect_limit(self, limit: usize) -> Self`
- `pub fn build(self) -> Result<WebClient>`

## Trait Implementations

### impl Default for [WebClientBuilder](struct.WebClientBuilder.html)

- `fn default() -> Self`

Returns the "default value" for a type.

## Auto Trait Implementations

- `impl Freeze for WebClientBuilder`
- `impl RefUnwindSafe for WebClientBuilder`
- `impl Send for WebClientBuilder`
- `impl Sync for WebClientBuilder`
- `impl Unpin for WebClientBuilder`
- `impl UnsafeUnpin for WebClientBuilder`
- `impl UnwindSafe for WebClientBuilder`

## Blanket Implementations

### impl Any for T

where `T: 'static + ?Sized`,

- `fn type_id(&self) -> TypeId`

### impl Borrow for T

where `T: ?Sized`,

- `fn borrow(&self) -> &T`

### impl BorrowMut for T

where `T: ?Sized`,

- `fn borrow_mut(&mut self) -> &mut T`

### impl From for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into for T

where `U: From`,

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`

### impl PolicyExt for T

where `T: ?Sized`,

- `fn and(self, other: P) -> And where T: Policy, P: Policy`
- `fn or(self, other: P) -> Or where T: Policy, P: Policy`

### impl TryFrom for T

where `U: Into`,

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<...>`

### impl TryInto for T

where `U: TryFrom`,

- `type Error = ...`
- `fn try_into(self) -> Result<...>`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T

where `T: ?Sized`,

### impl MaybeSend for T

### impl MaybeSync for T
