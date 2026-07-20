# NewTableConfig in lancedb::database::listing - Rust

## Overview

Controls how new tables should be created.

**Source:** [listing.rs#49-65](https://github.com/lancedb/lancedb/blob/0.30.0/lancedb/src/database/listing.rs#L49-L65)

### Struct Definition

```rust
pub struct NewTableConfig {
    pub data_storage_version: Option<LanceFileVersion>,
    pub enable_v2_manifest_paths: Option<bool>,
    pub enable_stable_row_ids: Option<bool>,
}
```

## Fields

### `data_storage_version: Option<LanceFileVersion>`

The storage version to use for new tables.  
If unset, then the latest stable version will be used.

### `enable_v2_manifest_paths: Option<bool>`

Whether to enable V2 manifest paths for new tables.  
V2 manifest paths are more efficient than V1 manifest paths but are not supported by old clients.

### `enable_stable_row_ids: Option<bool>`

Whether to enable stable row IDs for new tables.  
When enabled, row IDs remain stable after compaction, update, delete, and merges. This is useful for materialized views and other use cases that need to track source rows across these operations.

## Trait Implementations

### impl Clone for NewTableConfig

- `fn clone(&self) -> NewTableConfig`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for NewTableConfig

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Default for NewTableConfig

- `fn default() -> NewTableConfig`

## Auto Trait Implementations

- impl Freeze for NewTableConfig
- impl RefUnwindSafe for NewTableConfig
- impl Send for NewTableConfig
- impl Sync for NewTableConfig
- impl Unpin for NewTableConfig
- impl UnsafeUnpin for NewTableConfig
- impl UnwindSafe for NewTableConfig

## Blanket Implementations

### impl Any for T

- `fn type_id(&self) -> TypeId`

### impl ArchivePointee for T

- Associated type `ArchivedMetadata = ()`
- `fn pointer_metadata(_: &Self::ArchivedMetadata) -> <Pointee>::Metadata`

### impl Borrow for T

- `fn borrow(&self) -> &T`

### impl BorrowMut for T

- `fn borrow_mut(&mut self) -> &mut T`

### impl CloneToUninit for T

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl Conv for T

- `fn conv(self) -> T`

### impl DropFlavorWrapper for T

- Associated type `Flavor = MayDrop`

### impl DynClone for T

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl FmtForward for T

- `fn fmt_binary(self) -> FmtBinary`
- `fn fmt_display(self) -> FmtDisplay`
- `fn fmt_lower_exp(self) -> FmtLowerExp`
- `fn fmt_lower_hex(self) -> FmtLowerHex`
- `fn fmt_octal(self) -> FmtOctal`
- `fn fmt_pointer(self) -> FmtPointer`
- `fn fmt_upper_exp(self) -> FmtUpperExp`
- `fn fmt_upper_hex(self) -> FmtUpperHex`
- `fn fmt_list(self) -> FmtList`

### impl From for T

- `fn from(t: T) -> T`

### impl FromRef for T

- `fn from_ref(input: &T) -> T`

### impl HasTypeWitness for T

- Associated constant `WITNESS: W = W::MAKE`

### impl Identity for T

- Associated constant `TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW`
- Associated type `Type = T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into for T

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### impl IntoShared for Unshared

- `fn into_shared(self) -> Shared`

### impl LayoutRaw for T

- `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`

### impl Niching<NichedOption<T, N1>> for N2

- `unsafe fn is_niched(niched: *const NichedOption) -> bool`
- `fn resolve_niched(out: Place<NichedOption>)`

### impl Pipe for T

- `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
- `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
- `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
- `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
- `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
- `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
- `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
- `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
- `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`

### impl Pointable for T

- Associated constant `ALIGN: usize`
- Associated type `Init = T`
- `unsafe fn init(init: Self::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### impl Pointee for T

- Associated type `Metadata = ()`

### impl PolicyExt for T

- `fn and(self, other: P) -> And`
- `fn or(self, other: P) -> Or`

### impl Same for T

- Associated type `Output = T`

### impl Tap for T

- `fn tap(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self`
- `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self`
- `fn tap_ref(self, func: impl FnOnce(&R)) -> Self`
- `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self`
- `fn tap_deref(self, func: impl FnOnce(&T)) -> Self`
- `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self`
- `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self`
- `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self`
- `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self`
- `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self`
- `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self`
- `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self`

### impl ToOwned for T

- Associated type `Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl TryConv for T

- `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>`

### impl TryFrom for T

- Associated type `Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### impl TryInto for T (core)

- Associated type `Error = <U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, Self::Error>`

### impl TryInto for T (async-convert)

- Associated type `Error = <U as TryFrom<T>>::Error`
- `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`

### impl VZip for T

- `fn vzip(self) -> V`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl Allocation for T

- Blanket implementation for `T: RefUnwindSafe + Send + Sync`

### impl ErasedDestructor for T

- Blanket implementation for `T: 'static`

### impl MaybeSend for T (opendal-core)

- Blanket implementation for `T: Send`

### impl MaybeSend for T (reqsign-core)

- Blanket implementation for `T: Send`

### impl ResultError for E

- Blanket implementation for `E: Send + Debug + Sync`

### impl ResultType for T

- Blanket implementation for `T: Send + Clone + Sync + Debug`
