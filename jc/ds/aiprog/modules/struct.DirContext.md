# Struct DirContext

Execution-scoped filesystem capability policy.

```rust
pub struct DirContext { /* private fields */ }
```

## Associated Functions

- [new](#method.new)
- [current_dir](#method.current_dir)

## Methods

- [assert_read](#method.assert_read)
- [assert_write](#method.assert_write)
- [resolve_read](#method.resolve_read)
- [resolve_write](#method.resolve_write)

## Trait Implementations

- [Clone](#impl-Clone-for-DirContext)
- [Debug](#impl-Debug-for-DirContext)
- [Default](#impl-Default-for-DirContext)

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-DirContext)
- [RefUnwindSafe](#impl-RefUnwindSafe-for-DirContext)
- [Send](#impl-Send-for-DirContext)
- [Sync](#impl-Sync-for-DirContext)
- [Unpin](#impl-Unpin-for-DirContext)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-DirContext)
- [UnwindSafe](#impl-UnwindSafe-for-DirContext)

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T)
- [Borrow](#impl-Borrow%3CT%3E-for-T)
- [BorrowMut](#impl-BorrowMut%3CT%3E-for-T)
- [CloneToUninit](#impl-CloneToUninit-for-T)
- [DynClone](#impl-DynClone-for-T)
- [From](#impl-From%3CT%3E-for-T)
- [Instrument](#impl-Instrument-for-T)
- [Into](#impl-Into%3CU%3E-for-T)
- [IntoEither](#impl-IntoEither-for-T)
- [MaybeSend](#impl-MaybeSend-for-T)
- [MaybeSync](#impl-MaybeSync-for-T)
- [PolicyExt](#impl-PolicyExt-for-T)
- [ToOwned](#impl-ToOwned-for-T)
- [TryFrom](#impl-TryFrom%3CU%3E-for-T)
- [TryInto](#impl-TryInto%3CU%3E-for-T)
- [WithSubscriber](#impl-WithSubscriber-for-T)

## Implementations

### impl [DirContext](struct.DirContext.html)

- `pub fn new(read_policy: PathPolicy, write_policy: PathPolicy) -> Self`
- `pub fn current_dir() -> Result<DirContext, DirPolicyError>`
- `pub fn resolve_read(&self, path: &str, base_dir: Option<&str>) -> Result<ResolvedDirPath, DirPolicyError>`
- `pub fn resolve_write(&self, path: &str, base_dir: Option<&str>) -> Result<ResolvedDirPath, DirPolicyError>`
- `pub fn assert_write(&self, path: &SPath) -> Result<bool, DirPolicyError>`
- `pub fn assert_read(&self, path: &SPath) -> Result<bool, DirPolicyError>`

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html) for [DirContext](struct.DirContext.html)

- `fn clone(&self) -> DirContext`
- `fn clone_from(&mut self, source: &Self)`

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html) for [DirContext](struct.DirContext.html)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl [Default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html) for [DirContext](struct.DirContext.html)

- `fn default() -> Self`

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html) for [DirContext](struct.DirContext.html)
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html) for [DirContext](struct.DirContext.html)
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html) for [DirContext](struct.DirContext.html)
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html) for [DirContext](struct.DirContext.html)
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html) for [DirContext](struct.DirContext.html)
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html) for [DirContext](struct.DirContext.html)
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html) for [DirContext](struct.DirContext.html)

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html) for T where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId`

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html) for T where T: ?Sized

- `fn borrow(&self) -> &T`

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html) for T where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T`

### impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html) for T where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl [DynClone](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html) for T where T: Clone

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html) for T where U: From

- `fn into(self) -> U`

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html) for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`

### impl PolicyExt for T where T: ?Sized

- `fn and(self, other: P) -> And where T: Policy, P: Policy`
- `fn or(self, other: P) -> Or where T: Policy, P: Policy`

### impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html) for T where T: Clone

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html) for T where U: Into

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html) for T where U: TryFrom

- `type Error = U::Error`
- `fn try_into(self) -> Result<T, Self::Error>`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html) for T where T: ?Sized

### impl MaybeSend for T

### impl MaybeSync for T
