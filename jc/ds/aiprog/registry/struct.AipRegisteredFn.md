# AipRegisteredFn

## Overview

In `aiprog::registry`, `AipRegisteredFn` represents a registered function within the application program registry, holding schema and metadata information.

## Struct Definition

```rust
pub struct AipRegisteredFn {
    pub path: String,
    pub params_schema: Schema,
    pub output_schema: Schema,
    pub error_schema: Schema,
    pub kind: AipFnKind,
    pub description: Option<String>,
    pub title: Option<String>,
}
```

## Fields

- `path: String`
- `params_schema: Schema`
- `output_schema: Schema`
- `error_schema: Schema`
- `kind: AipFnKind`
- `description: Option<String>`
- `title: Option<String>`

## Trait Implementations

### impl Clone for AipRegisteredFn

- `fn clone(&self) -> AipRegisteredFn`
  - Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)`
  - Performs copy-assignment from `source`.

### impl Debug for AipRegisteredFn

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
  - Formats the value using the given formatter.

## Auto Trait Implementations

- `impl Freeze for AipRegisteredFn`
- `impl RefUnwindSafe for AipRegisteredFn`
- `impl Send for AipRegisteredFn`
- `impl Sync for AipRegisteredFn`
- `impl Unpin for AipRegisteredFn`
- `impl UnsafeUnpin for AipRegisteredFn`
- `impl UnwindSafe for AipRegisteredFn`

## Blanket Implementations

### impl Any for T

where `T: 'static + ?Sized`

- `fn type_id(&self) -> TypeId`
  - Gets the `TypeId` of `self`.

### impl Borrow for T

where `T: ?Sized`

- `fn borrow(&self) -> &T`
  - Immutably borrows from an owned value.

### impl BorrowMut for T

where `T: ?Sized`

- `fn borrow_mut(&mut self) -> &mut T`
  - Mutably borrows from an owned value.

### impl CloneToUninit for T

where `T: Clone`

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
  - Performs copy-assignment from `self` to `dest`.

### impl DynClone for T

where `T: Clone`

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl From for T

- `fn from(t: T) -> T`
  - Returns the argument unchanged.

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
  - Instruments this type with the provided span.
- `fn in_current_span(self) -> Instrumented`
  - Instruments this type with the current span.

### impl Into for T

where `U: From`

- `fn into(self) -> U`
  - Calls `U::from(self)`.

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
  - Converts `self` into a `Left` or `Right` variant of `Either`.
- `fn into_either_with(self, into_left: F) -> Either`
  - where `F: FnOnce(&Self) -> bool`
  - Converts `self` into `Either` variants using a closure.

### impl PolicyExt for T

where `T: ?Sized`

- `fn and(self, other: P) -> And`
  - where `T: Policy`, `P: Policy`
  - Create a new `Policy` returning `Action::Follow` only if both return it.
- `fn or(self, other: P) -> Or`
  - where `T: Policy`, `P: Policy`
  - Create a new `Policy` returning `Action::Follow` if either returns it.

### impl ToOwned for T

where `T: Clone`

- type `Owned = T`
  - The resulting type after obtaining ownership.
- `fn to_owned(&self) -> T`
  - Creates owned data from borrowed data.
- `fn clone_into(&self, target: &mut T)`
  - Uses borrowed data to replace owned data.

### impl TryFrom for T

where `U: Into`

- type `Error = Infallible`
  - The type returned in the event of a conversion error.
- `fn try_from(value: U) -> Result`
  - Performs the conversion.

### impl TryInto for T

where `U: TryFrom`

- type `Error = TryFrom::Error`
  - The type returned in the event of a conversion error.
- `fn try_into(self) -> Result`
  - Performs the conversion.

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - where `S: Into`
  - Attaches the provided subscriber to this type.
- `fn with_current_subscriber(self) -> WithDispatch`
  - Attaches the current default subscriber to this type.

### impl AutoreleaseSafe for T

where `T: ?Sized`

### impl MaybeSend for T

### impl MaybeSync for T
