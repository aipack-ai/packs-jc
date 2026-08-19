# Struct ResolvedDirPath

A policy-authorized path and the allowed root that contains it.

[Source](../../src/aiprog/modules/aip_file/file_types.rs.html#196-199)

```rust
pub struct ResolvedDirPath { /* private fields */ }
```

## Methods

- [path](#method.path)
- [root](#method.root)

### impl ResolvedDirPath

[Source](../../src/aiprog/modules/aip_file/file_types.rs.html#201-209)

[Source](../../src/aiprog/modules/aip_file/file_types.rs.html#202-204)
- `pub fn path(&self) -> &SPath`

[Source](../../src/aiprog/modules/aip_file/file_types.rs.html#206-208)
- `pub fn root(&self) -> &SPath`

## Trait Implementations

### impl Clone for ResolvedDirPath

[Source](../../src/aiprog/modules/aip_file/file_types.rs.html#195)

- `fn clone(&self) -> ResolvedDirPath`
  Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)

- `fn clone_from(&mut self, source: &Self)`
  Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)

### impl Debug for ResolvedDirPath

[Source](../../src/aiprog/modules/aip_file/file_types.rs.html#195)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
  Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

## Auto Trait Implementations

- `impl Freeze for ResolvedDirPath`
- `impl RefUnwindSafe for ResolvedDirPath`
- `impl Send for ResolvedDirPath`
- `impl Sync for ResolvedDirPath`
- `impl Unpin for ResolvedDirPath`
- `impl UnsafeUnpin for ResolvedDirPath`
- `impl UnwindSafe for ResolvedDirPath`

## Blanket Implementations

### impl Any for T
where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId`
  Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

### impl Borrow for T
where T: ?Sized

- `fn borrow(&self) -> &T`
  Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

### impl BorrowMut for T
where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T`
  Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### impl CloneToUninit for T
where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
  🔬This is a nightly-only experimental API. (`clone_to_uninit`) Performs copy-assignment from `self` to `dest`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)

### impl DynClone for T
where T: Clone

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl From for T

- `fn from(t: T) -> T`
  Returns the argument unchanged.

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
  where T: Policy, P: Policy,
  Instruments this type with the provided `Span`, returning an `Instrumented` wrapper.

- `fn in_current_span(self) -> Instrumented`
  Instruments this type with the current `Span`, returning an `Instrumented` wrapper.

### impl Into for T
where U: From

- `fn into(self) -> U`
  Calls `U::from(self)`.

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
  Converts `self` into a `Left` variant of `Either` if `into_left` is `true`. Converts `self` into a `Right` variant of `Either` otherwise.

- `fn into_either_with(self, into_left: F) -> Either`
  where F: FnOnce(&Self) -> bool,
  Converts `self` into a `Left` variant of `Either` if `into_left(&self)` returns `true`. Converts `self` into a `Right` variant of `Either` otherwise.

### impl PolicyExt for T
where T: ?Sized

- `fn and(self, other: P) -> And`
  where T: Policy, P: Policy,
  Create a new `Policy` that returns `Action::Follow` only if `self` and `other` return `Action::Follow`.

- `fn or(self, other: P) -> Or`
  where T: Policy, P: Policy,
  Create a new `Policy` that returns `Action::Follow` if either `self` or `other` returns `Action::Follow`.

### impl ToOwned for T
where T: Clone

- `type Owned = T`
  The resulting type after obtaining ownership.

- `fn to_owned(&self) -> T`
  Creates owned data from borrowed data, usually by cloning.

- `fn clone_into(&self, target: &mut T)`
  Uses borrowed data to replace owned data, usually by cloning.

### impl TryFrom for T
where U: Into

- `type Error = Infallible`
  The type returned in the event of a conversion error.

- `fn try_from(value: U) -> Result`
  Performs the conversion.

### impl TryInto for T
where U: TryFrom

- `type Error`
  The type returned in the event of a conversion error.

- `fn try_into(self) -> Result`
  Performs the conversion.

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  where S: Into,
  Attaches the provided `Subscriber` to this type, returning a `WithDispatch` wrapper.

- `fn with_current_subscriber(self) -> WithDispatch`
  Attaches the current default `Subscriber` to this type, returning a `WithDispatch` wrapper.

### impl AutoreleaseSafe for T
where T: ?Sized

- `impl MaybeSend for T`
- `impl MaybeSync for T`
