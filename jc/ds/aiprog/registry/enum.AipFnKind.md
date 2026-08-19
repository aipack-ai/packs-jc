# Enum AipFnKind

- [Variants](#variants)
- [Trait Implementations](#trait-implementations)
- [Auto Trait Implementations](#auto-trait-implementations)
- [Blanket Implementations](#blanket-implementations)

## Overview

```rust
pub enum AipFnKind {
    Sync,
    Async,
}
```

## Variants

- `Sync`
- `Async`

## Trait Implementations

### impl Clone for AipFnKind

- Signature: `fn clone(&self) -> AipFnKind`
- Signature: `fn clone_from(&mut self, source: &Self)`

### impl Debug for AipFnKind

- Signature: `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl PartialEq for AipFnKind

- Signature: `fn eq(&self, other: &AipFnKind) -> bool`
- Signature: `fn ne(&self, other: &Rhs) -> bool`

### impl Copy for AipFnKind

### impl Eq for AipFnKind

### impl StructuralPartialEq for AipFnKind

## Auto Trait Implementations

- `impl Freeze for AipFnKind`
- `impl RefUnwindSafe for AipFnKind`
- `impl Send for AipFnKind`
- `impl Sync for AipFnKind`
- `impl Unpin for AipFnKind`
- `impl UnsafeUnpin for AipFnKind`
- `impl UnwindSafe for AipFnKind`

## Blanket Implementations

### impl Any for T

- Signature: `fn type_id(&self) -> TypeId`

### impl Borrow for T

- Signature: `fn borrow(&self) -> &T`

### impl BorrowMut for T

- Signature: `fn borrow_mut(&mut self) -> &mut T`

### impl CloneToUninit for T

- Signature: `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl DynClone for T

- Signature: `fn __clone_box(&self, _: Private) -> *mut ()`

### impl Equivalent for Q

- Signature: `fn equivalent(&self, key: &K) -> bool`

### impl From for T

- Signature: `fn from(t: T) -> T`

### impl Instrument for T

- Signature: `fn instrument(self, span: Span) -> Instrumented`
- Signature: `fn in_current_span(self) -> Instrumented`

### impl Into for T

- Signature: `fn into(self) -> U`

### impl IntoEither for T

- Signature: `fn into_either(self, into_left: bool) -> Either`
- Signature: `fn into_either_with(self, into_left: F) -> Either`

### impl PolicyExt for T

- Signature: `fn and(self, other: P) -> And`
- Signature: `fn or(self, other: P) -> Or`

### impl ToOwned for T

- Associated Type: `type Owned = T`
- Signature: `fn to_owned(&self) -> T`
- Signature: `fn clone_into(&self, target: &mut T)`

### impl TryFrom for T

- Associated Type: `type Error = Infallible`
- Signature: `fn try_from(value: U) -> Result`

### impl TryInto for T

- Associated Type: `type Error`
- Signature: `fn try_into(self) -> Result`

### impl WithSubscriber for T

- Signature: `fn with_subscriber(self, subscriber: S) -> WithDispatch`
- Signature: `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T

### impl MaybeSend for T

### impl MaybeSync for T
