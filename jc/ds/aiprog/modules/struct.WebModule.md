# WebModule in aiprog::modules

[Source](../../src/aiprog/modules/mod.rs.html#20)

```rust
pub struct WebModule;
```

## Methods

- [native_functions](#method.native_functions)

## Trait Implementations

- [AipModule](#impl-AipModule-for-WebModule)
- [Clone](#impl-Clone-for-WebModule)
- [Copy](#impl-Copy-for-WebModule)
- [Debug](#impl-Debug-for-WebModule)
- [Default](#impl-Default-for-WebModule)

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-WebModule)
- [RefUnwindSafe](#impl-RefUnwindSafe-for-WebModule)
- [Send](#impl-Send-for-WebModule)
- [Sync](#impl-Sync-for-WebModule)
- [Unpin](#impl-Unpin-for-WebModule)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-WebModule)
- [UnwindSafe](#impl-UnwindSafe-for-WebModule)

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T)
- [Borrow&lt;T&gt;](#impl-Borrow%3CT%3E-for-T)
- [BorrowMut&lt;T&gt;](#impl-BorrowMut%3CT%3E-for-T)
- [CloneToUninit](#impl-CloneToUninit-for-T)
- [DynClone](#impl-DynClone-for-T)
- [From&lt;T&gt;](#impl-From%3CT%3E-for-T)
- [Instrument](#impl-Instrument-for-T)
- [Into&lt;U&gt;](#impl-Into%3CU%3E-for-T)
- [IntoEither](#impl-IntoEither-for-T)
- [MaybeSend](#impl-MaybeSend-for-T)
- [MaybeSync](#impl-MaybeSync-for-T)
- [PolicyExt](#impl-PolicyExt-for-T)
- [ToOwned](#impl-ToOwned-for-T)
- [TryFrom&lt;U&gt;](#impl-TryFrom%3CU%3E-for-T)
- [TryInto&lt;U&gt;](#impl-TryInto%3CU%3E-for-T)
- [WithSubscriber](#impl-WithSubscriber-for-T)

## Implementations

### impl WebModule

- [Source](../../src/aiprog/modules/mod.rs.html#42-44)
- `pub fn native_functions(&self) -> NativeFunctionSet`

## Trait Implementations

### impl AipModule for WebModule

- [Source](../../src/aiprog/modules/mod.rs.html#35-37)
- `fn register(&self, builder: AipRegistryBuilder) -> Result<AipRegistryBuilder>`

### impl Clone for WebModule

- [Source](../../src/aiprog/modules/mod.rs.html#19)
- `fn clone(&self) -> WebModule`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for WebModule

- [Source](../../src/aiprog/modules/mod.rs.html#19)
- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Default for WebModule

- [Source](../../src/aiprog/modules/mod.rs.html#19)
- `fn default() -> WebModule`

### impl Copy for WebModule

- [Source](../../src/aiprog/modules/mod.rs.html#19)

## Auto Trait Implementations

- impl Freeze for WebModule
- impl RefUnwindSafe for WebModule
- impl Send for WebModule
- impl Sync for WebModule
- impl Unpin for WebModule
- impl UnsafeUnpin for WebModule
- impl UnwindSafe for WebModule

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId`

### impl Borrow for T

where T: ?Sized

- `fn borrow(&self) -> &T`

### impl BorrowMut for T

where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T`

### impl CloneToUninit for T

where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl DynClone for T

where T: Clone

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl From for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into for T

where U: From

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`

### impl PolicyExt for T

where T: ?Sized

- `fn and(self, other: P) -> And where T: Policy, P: Policy`
- `fn or(self, other: P) -> Or where T: Policy, P: Policy`

### impl ToOwned for T

where T: Clone

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl TryFrom for T

where U: Into

- `type Error = Infallible`
- `fn try_from(value: U) -> Result`

### impl TryInto for T

where U: TryFrom

- `type Error = TryFrom::Error`
- `fn try_into(self) -> Result`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T

where T: ?Sized

### impl MaybeSend for T

### impl MaybeSync for T
