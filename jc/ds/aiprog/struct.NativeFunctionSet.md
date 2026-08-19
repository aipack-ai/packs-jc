# Struct NativeFunctionSet

```rust
pub struct NativeFunctionSet { /* private fields */ }
```

## Associated Functions

- [`new`](#method.new)
- [`append_installer`](#method.append_installer)

## Trait Implementations

- [`Clone`](#impl-Clone-for-NativeFunctionSet)
- [`Default`](#impl-Default-for-NativeFunctionSet)

## Auto Trait Implementations

- [`Freeze`](#impl-Freeze-for-NativeFunctionSet)
- [`!RefUnwindSafe`](#impl-RefUnwindSafe-for-NativeFunctionSet)
- [`Send`](#impl-Send-for-NativeFunctionSet)
- [`Sync`](#impl-Sync-for-NativeFunctionSet)
- [`Unpin`](#impl-Unpin-for-NativeFunctionSet)
- [`UnsafeUnpin`](#impl-UnsafeUnpin-for-NativeFunctionSet)
- [`!UnwindSafe`](#impl-UnwindSafe-for-NativeFunctionSet)

## Blanket Implementations

- [`Any`](#impl-Any-for-T)
- [`AutoreleaseSafe`](#impl-AutoreleaseSafe-for-T)
- [`Borrow`](#impl-Borrow%3CT%3E-for-T)
- [`BorrowMut`](#impl-BorrowMut%3CT%3E-for-T)
- [`CloneToUninit`](#impl-CloneToUninit-for-T)
- [`DynClone`](#impl-DynClone-for-T)
- [`From`](#impl-From%3CT%3E-for-T)
- [`Instrument`](#impl-Instrument-for-T)
- [`Into`](#impl-Into%3CU%3E-for-T)
- [`IntoEither`](#impl-IntoEither-for-T)
- [`MaybeSend`](#impl-MaybeSend-for-T)
- [`MaybeSync`](#impl-MaybeSync-for-T)
- [`PolicyExt`](#impl-PolicyExt-for-T)
- [`ToOwned`](#impl-ToOwned-for-T)
- [`TryFrom`](#impl-TryFrom%3CU%3E-for-T)
- [`TryInto`](#impl-TryInto%3CU%3E-for-T)
- [`WithSubscriber`](#impl-WithSubscriber-for-T)

## Implementations

### impl NativeFunctionSet

- [`pub fn new(installers: impl Into<Arc<[NativeFunctionInstaller]>>) -> Self`](#method.new)
- [`pub fn append_installer(self, installer: NativeFunctionInstaller) -> Self`](#method.append_installer)

## Trait Implementations

### impl Clone for NativeFunctionSet

- [`fn clone(&self) -> NativeFunctionSet`](#method.clone)
- [`fn clone_from(&mut self, source: &Self)`](#method.clone_from)

### impl Default for NativeFunctionSet

- [`fn default() -> Self`](#method.default)

## Auto Trait Implementations

- impl Freeze for NativeFunctionSet
- impl !RefUnwindSafe for NativeFunctionSet
- impl Send for NativeFunctionSet
- impl Sync for NativeFunctionSet
- impl Unpin for NativeFunctionSet
- impl UnsafeUnpin for NativeFunctionSet
- impl UnwindSafe for NativeFunctionSet

## Blanket Implementations

### impl Any for T

- [`fn type_id(&self) -> TypeId`](#method.type_id)

### impl Borrow for T

- [`fn borrow(&self) -> &T`](#method.borrow)

### impl BorrowMut for T

- [`fn borrow_mut(&mut self) -> &mut T`](#method.borrow_mut)

### impl CloneToUninit for T

- [`unsafe fn clone_to_uninit(&self, dest: *mut u8)`](#method.clone_to_uninit)

### impl DynClone for T

- [`fn __clone_box(&self, _: Private) -> *mut ()`](#method.__clone_box)

### impl From for T

- [`fn from(t: T) -> T`](#method.from)

### impl Instrument for T

- [`fn instrument(self, span: Span) -> Instrumented`](#method.instrument)
- [`fn in_current_span(self) -> Instrumented`](#method.in_current_span)

### impl Into for T

- [`fn into(self) -> U`](#method.into)

### impl IntoEither for T

- [`fn into_either(self, into_left: bool) -> Either`](#method.into_either)
- [`fn into_either_with(self, into_left: F) -> Either`](#method.into_either_with)

### impl PolicyExt for T

- [`fn and(self, other: P) -> And`](#method.and)
- [`fn or(self, other: P) -> Or`](#method.or)

### impl ToOwned for T

- [`type Owned = T`](#associatedtype.Owned)
- [`fn to_owned(&self) -> T`](#method.to_owned)
- [`fn clone_into(&self, target: &mut T)`](#method.clone_into)

### impl TryFrom for T

- [`type Error = Infallible`](#associatedtype.Error-1)
- [`fn try_from(value: U) -> Result`](#method.try_from)

### impl TryInto for T

- [`type Error = TryFrom::Error`](#associatedtype.Error)
- [`fn try_into(self) -> Result`](#method.try_into)

### impl WithSubscriber for T

- [`fn with_subscriber(self, subscriber: S) -> WithDispatch`](#method.with_subscriber)
- [`fn with_current_subscriber(self) -> WithDispatch`](#method.with_current_subscriber)

### impl AutoreleaseSafe for T
### impl MaybeSend for T
### impl MaybeSync for T
