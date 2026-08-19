# Struct RegistrySelectionOptions

Copy item path

[Source](../../src/aiprog/registry/registry_types.rs.html#115-117)

```rust
pub struct RegistrySelectionOptions {
    pub unmatched_patterns: UnmatchedPatternPolicy,
}
```

## Fields

- [`unmatched_patterns`](#structfield.unmatched_patterns): `UnmatchedPatternPolicy`

## Trait Implementations

### impl Clone for RegistrySelectionOptions

- `fn clone(&self) -> RegistrySelectionOptions`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for RegistrySelectionOptions

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Default for RegistrySelectionOptions

- `fn default() -> RegistrySelectionOptions`

### impl PartialEq for RegistrySelectionOptions

- `fn eq(&self, other: &RegistrySelectionOptions) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### impl Copy for RegistrySelectionOptions

### impl Eq for RegistrySelectionOptions

### impl StructuralPartialEq for RegistrySelectionOptions

## Auto Trait Implementations

- `impl Freeze for RegistrySelectionOptions`
- `impl RefUnwindSafe for RegistrySelectionOptions`
- `impl Send for RegistrySelectionOptions`
- `impl Sync for RegistrySelectionOptions`
- `impl Unpin for RegistrySelectionOptions`
- `impl UnsafeUnpin for RegistrySelectionOptions`
- `impl UnwindSafe for RegistrySelectionOptions`

## Blanket Implementations

### impl Any for T

where `T: 'static + ?Sized`

- `fn type_id(&self) -> TypeId`

### impl Borrow for T

where `T: ?Sized`

- `fn borrow(&self) -> &T`

### impl BorrowMut for T

where `T: ?Sized`

- `fn borrow_mut(&mut self) -> &mut T`

### impl CloneToUninit for T

where `T: Clone`

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl DynClone for T

where `T: Clone`

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl Equivalent for Q

where `Q: Eq + ?Sized`, `K: Borrow + ?Sized`

- `fn equivalent(&self, key: &K) -> bool`

### impl Equivalent for Q

where `Q: Eq + ?Sized`, `K: Borrow + ?Sized`

- `fn equivalent(&self, key: &K) -> bool`

### impl From for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into for T

where `U: From`

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either` where `F: FnOnce(&Self) -> bool`

### impl PolicyExt for T

where `T: ?Sized`

- `fn and(self, other: P) -> And` where `T: Policy`, `P: Policy`
- `fn or(self, other: P) -> Or` where `T: Policy`, `P: Policy`

### impl ToOwned for T

where `T: Clone`

- type `Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl TryFrom for T

where `U: Into`

- type `Error = Infallible`
- `fn try_from(value: U) -> Result`

### impl TryInto for T

where `U: TryFrom`

- type `Error`
- `fn try_into(self) -> Result`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where `S: Into`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T

where `T: ?Sized`

### impl MaybeSend for T

### impl MaybeSync for T
