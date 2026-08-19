# Struct SchemaPropRef

- [Methods](#methods)
- [Auto Trait Implementations](#auto-trait-implementations)
- [Blanket Implementations](#blanket-implementations)

## Overview

```js
pub struct SchemaPropRef<'s> { /* private fields */ }
```

## Methods

### impl<'s> SchemaPropRef<'s>

- `pub fn name(&self) -> &str`
- `pub fn desc(&self) -> Option<&str>`

  Returns the `description` field of the property, if present.

- `pub fn typ(&self) -> Option<&str>`

  Returns the `type` field of the property, if present.

- `pub fn default(&self) -> Option<&Value>`

  Returns the `default` field of the property, if present.

- `pub fn is_required(&self) -> bool`
- `pub fn raw_value(&self) -> &Value`

  Returns the underlying JSON value of the property.

## Auto Trait Implementations

- `impl<'s> Freeze for SchemaPropRef<'s>`
- `impl<'s> RefUnwindSafe for SchemaPropRef<'s>`
- `impl<'s> Send for SchemaPropRef<'s>`
- `impl<'s> Sync for SchemaPropRef<'s>`
- `impl<'s> Unpin for SchemaPropRef<'s>`
- `impl<'s> UnsafeUnpin for SchemaPropRef<'s>`
- `impl<'s> UnwindSafe for SchemaPropRef<'s>`

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`

- `impl Borrow for T` where `T: ?Sized`
  - `fn borrow(&self) -> &T`

- `impl BorrowMut for T` where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`

- `impl From for T`
  - `fn from(t: T) -> T`

- `impl Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`

- `impl Into for T` where `U: From`
  - `fn into(self) -> U`

- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either` where `F: FnOnce(&Self) -> bool`

- `impl PolicyExt for T` where `T: ?Sized`
  - `fn and(self, other: P) -> And` where `T: Policy, P: Policy`
  - `fn or(self, other: P) -> Or` where `T: Policy, P: Policy`

- `impl TryFrom for T` where `U: Into`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result`

- `impl TryInto for T` where `U: TryFrom`
  - `type Error = TryFrom::Error`
  - `fn try_into(self) -> Result`

- `impl WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch` where `S: Into`
  - `fn with_current_subscriber(self) -> WithDispatch`

- `impl AutoreleaseSafe for T` where `T: ?Sized`
- `impl MaybeSend for T`
- `impl MaybeSync for T`
