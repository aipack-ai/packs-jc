# Enum UnmatchedPatternPolicy

Item path: [Source](../../src/aiprog/registry/registry_types.rs.html#108-112)

```rust
pub enum UnmatchedPatternPolicy {
    Allow,
    Error,
}
```

## Variants

- Allow
- Error

## Trait Implementations

### impl Clone for UnmatchedPatternPolicy

[Source](../../src/aiprog/registry/registry_types.rs.html#107)

- `fn clone(&self) -> UnmatchedPatternPolicy`
  - Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)
- `fn clone_from(&mut self, source: &Self)`
  - Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)

### impl Debug for UnmatchedPatternPolicy

[Source](../../src/aiprog/registry/registry_types.rs.html#107)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
  - Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

### impl Default for UnmatchedPatternPolicy

[Source](../../src/aiprog/registry/registry_types.rs.html#107)

- `fn default() -> UnmatchedPatternPolicy`
  - Returns the "default value" for a type. [Read more](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)

### impl PartialEq for UnmatchedPatternPolicy

[Source](../../src/aiprog/registry/registry_types.rs.html#107)

- `fn eq(&self, other: &UnmatchedPatternPolicy) -> bool`
  - Tests for `self` and `other` values to be equal, and is used by `==`.
- `fn ne(&self, other: &Rhs) -> bool`
  - Tests for `!=`. The default implementation is almost always sufficient.

### impl Copy for UnmatchedPatternPolicy

[Source](../../src/aiprog/registry/registry_types.rs.html#107)

### impl Eq for UnmatchedPatternPolicy

[Source](../../src/aiprog/registry/registry_types.rs.html#107)

### impl StructuralPartialEq for UnmatchedPatternPolicy

[Source](../../src/aiprog/registry/registry_types.rs.html#107)

## Auto Trait Implementations

- impl Freeze for UnmatchedPatternPolicy
- impl RefUnwindSafe for UnmatchedPatternPolicy
- impl Send for UnmatchedPatternPolicy
- impl Sync for UnmatchedPatternPolicy
- impl Unpin for UnmatchedPatternPolicy
- impl UnsafeUnpin for UnmatchedPatternPolicy
- impl UnwindSafe for UnmatchedPatternPolicy

## Blanket Implementations

### impl Any for T where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId`
  - Gets the `TypeId` of `self`.

### impl Borrow for T where T: ?Sized

- `fn borrow(&self) -> &T`
  - Immutably borrows from an owned value.

### impl BorrowMut for T where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T`
  - Mutably borrows from an owned value.

### impl CloneToUninit for T where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
  - Performs copy-assignment from `self` to `dest`.

### impl DynClone for T where T: Clone

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl Equivalent for Q where Q: Eq + ?Sized, K: Borrow + ?Sized

- `fn equivalent(&self, key: &K) -> bool`
  - Checks if this value is equivalent to the given key.

### impl Equivalent for Q where Q: Eq + ?Sized, K: Borrow + ?Sized

- `fn equivalent(&self, key: &K) -> bool`
  - Compare self to `key` and return `true` if they are equal.

### impl From for T

- `fn from(t: T) -> T`
  - Returns the argument unchanged.

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
  - Instruments this type with the provided `Span`.
- `fn in_current_span(self) -> Instrumented`
  - Instruments this type with the current `Span`.

### impl Into for T where U: From

- `fn into(self) -> U`
  - Calls `U::from(self)`.

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
  - Converts `self` into a `Left` or `Right` variant of `Either`.
- `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`
  - Converts `self` into a `Left` or `Right` variant based on closure execution.

### impl PolicyExt for T where T: ?Sized

- `fn and(self, other: P) -> And where T: Policy, P: Policy`
  - Create a new `Policy` returning `Action::Follow` only if both succeed.
- `fn or(self, other: P) -> Or where T: Policy, P: Policy`
  - Create a new `Policy` returning `Action::Follow` if either succeeds.

### impl ToOwned for T where T: Clone

- `type Owned = T`
- `fn to_owned(&self) -> T`
  - Creates owned data from borrowed data.
- `fn clone_into(&self, target: &mut T)`
  - Uses borrowed data to replace owned data.

### impl TryFrom for T where U: Into

- `type Error = Infallible`
- `fn try_from(value: U) -> Result`

### impl TryInto for T where U: TryFrom

- `type Error = TryFrom::Error`
- `fn try_into(self) -> Result`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into`
  - Attaches the provided `Subscriber` to this type.
- `fn with_current_subscriber(self) -> WithDispatch`
  - Attaches the current default `Subscriber` to this type.

### impl AutoreleaseSafe for T where T: ?Sized

### impl MaybeSend for T

### impl MaybeSync for T
