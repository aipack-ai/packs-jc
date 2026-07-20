# ListingDatabaseOptionsBuilder

**Module:** [lancedb::database::listing](index.html)

## Struct Definition

```text
pub struct ListingDatabaseOptionsBuilder { /* private fields */ }
```

## Implementations

### Associated Functions

```text
pub fn new() -> Self
```

### Methods

```text
pub fn data_storage_version(self, data_storage_version: LanceFileVersion) -> Self
```

Set the storage version to use for new tables.

**Arguments**

- `data_storage_version` – The storage version to use for new tables

---

```text
pub fn enable_v2_manifest_paths(self, enable_v2_manifest_paths: bool) -> Self
```

Enable V2 manifest paths for new tables.

**Arguments**

- `enable_v2_manifest_paths` – Whether to enable V2 manifest paths for new tables

---

```text
pub fn storage_option(self, key: impl Into<String>, value: impl Into<String>) -> Self
```

Set an option for the storage layer. See available options at [https://docs.lancedb.com/storage/](https://docs.lancedb.com/storage/).

---

```text
pub fn storage_options(self, pairs: impl IntoIterator<Item = (impl Into<String>, impl Into<String>)>) -> Self
```

Set multiple options for the storage layer. See available options at [https://docs.lancedb.com/storage/](https://docs.lancedb.com/storage/).

---

```text
pub fn build(self) -> ListingDatabaseOptions
```

Build the options.

## Trait Implementations

### impl Clone for ListingDatabaseOptionsBuilder

```text
fn clone(&self) -> ListingDatabaseOptionsBuilder
fn clone_from(&mut self, source: &Self)
```

### impl Debug for ListingDatabaseOptionsBuilder

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### impl Default for ListingDatabaseOptionsBuilder

```text
fn default() -> ListingDatabaseOptionsBuilder
```

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- **impl Any for T** where T: 'static + ?Sized  
  ```text
  fn type_id(&self) -> TypeId
  ```

- **impl ArchivePointee for T**  
  ```text
  type ArchivedMetadata = ()
  fn pointer_metadata(_: &Self::ArchivedMetadata) -> <Self as Pointee>::Metadata
  ```

- **impl Borrow<T> for T** where T: ?Sized  
  ```text
  fn borrow(&self) -> &T
  ```

- **impl BorrowMut<T> for T** where T: ?Sized  
  ```text
  fn borrow_mut(&mut self) -> &mut T
  ```

- **impl CloneToUninit for T** where T: Clone  
  ```text
  unsafe fn clone_to_uninit(&self, dest: *mut u8)
  ```

- **impl Conv for T**  
  ```text
  fn conv(self) -> T where Self: Into<T>
  ```

- **impl DropFlavorWrapper<T> for T**  
  ```text
  type Flavor = MayDrop
  ```

- **impl DynClone for T** where T: Clone  
  ```text
  fn __clone_box(&self, _: Private) -> *mut ()
  ```

- **impl FmtForward for T**  
  - `fn fmt_binary(self) -> FmtBinary where Self: Binary`  
  - `fn fmt_display(self) -> FmtDisplay where Self: Display`  
  - `fn fmt_lower_exp(self) -> FmtLowerExp where Self: LowerExp`  
  - `fn fmt_lower_hex(self) -> FmtLowerHex where Self: LowerHex`  
  - `fn fmt_octal(self) -> FmtOctal where Self: Octal`  
  - `fn fmt_pointer(self) -> FmtPointer where Self: Pointer`  
  - `fn fmt_upper_exp(self) -> FmtUpperExp where Self: UpperExp`  
  - `fn fmt_upper_hex(self) -> FmtUpperHex where Self: UpperHex`  
  - `fn fmt_list(self) -> FmtList where &'a Self: for<'a> IntoIterator`

- **impl From<T> for T**  
  ```text
  fn from(t: T) -> T
  ```

- **impl FromRef<T> for T** where T: Clone  
  ```text
  fn from_ref(input: &T) -> T
  ```

- **impl HasTypeWitness<W> for T** where W: MakeTypeWitness, T: ?Sized  
  ```text
  const WITNESS: W = W::MAKE
  ```

- **impl Identity for T** where T: ?Sized  
  ```text
  type Type = T
  const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW
  ```

- **impl Instrument for T**  
  - `fn instrument(self, span: Span) -> Instrumented`  
  - `fn in_current_span(self) -> Instrumented`

- **impl Into<U> for T** where U: From<T>  
  ```text
  fn into(self) -> U
  ```

- **impl IntoEither for T**  
  - `fn into_either(self, into_left: bool) -> Either`  
  - `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`

- **impl IntoShared<Shared> for Unshared** where Shared: FromUnshared  
  ```text
  fn into_shared(self) -> Shared
  ```

- **impl LayoutRaw for T**  
  ```text
  fn layout_raw(_: <Self as Pointee>::Metadata) -> Result<Layout, LayoutError>
  ```

- **impl Niching<NichedOption<T, N1>> for N2** where T: SharedNiching, N1: Niching, N2: Niching  
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`  
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

- **impl Pipe for T** where T: ?Sized  
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R where Self: Sized`  
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R where R: 'a`  
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R where R: 'a`  
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R where Self: Borrow<B>, B: 'a + ?Sized, R: 'a`  
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a`  
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R where Self: AsRef<U>, U: 'a + ?Sized, R: 'a`  
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R where Self: AsMut<U>, U: 'a + ?Sized, R: 'a`  
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R where Self: Deref<Target=T>, T: 'a + ?Sized, R: 'a`  
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a`

- **impl Pointable for T**  
  ```text
  const ALIGN: usize = …
  type Init = T
  unsafe fn init(init: Self::Init) -> usize
  unsafe fn deref<'a>(ptr: usize) -> &'a T
  unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
  unsafe fn drop(ptr: usize)
  ```

- **impl Pointee for T**  
  ```text
  type Metadata = ()
  ```

- **impl PolicyExt for T** where T: ?Sized  
  - `fn and(self, other: P) -> And where T: Policy, P: Policy`  
  - `fn or(self, other: P) -> Or where T: Policy, P: Policy`

- **impl Same for T**  
  ```text
  type Output = T
  ```

- **impl Tap for T**  
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`  
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`  
  - `fn tap_borrow<B>(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`  
  - `fn tap_borrow_mut<B>(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`  
  - `fn tap_ref<R>(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`  
  - `fn tap_ref_mut<R>(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`  
  - `fn tap_deref<T>(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target=T>, T: ?Sized`  
  - `fn tap_deref_mut<T>(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized`  
  - Debug variants: `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`

- **impl ToOwned for T** where T: Clone  
  ```text
  type Owned = T
  fn to_owned(&self) -> T
  fn clone_into(&self, target: &mut T)
  ```

- **impl TryConv for T**  
  ```text
  fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error> where Self: TryInto<T>
  ```

- **impl TryFrom<U> for T** where U: Into<T>  
  ```text
  type Error = Infallible
  fn try_from(value: U) -> Result<T, Self::Error>
  ```

- **impl TryInto<U> for T** where U: TryFrom<T>  
  ```text
  type Error = <U as TryFrom<T>>::Error
  fn try_into(self) -> Result<U, Self::Error>
  ```

- **impl TryInto<U> for T** (async) where U: TryFrom<T>  
  ```text
  type Error = <U as TryFrom<T>>::Error
  fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>
  ```

- **impl VZip<V> for T** where V: MultiLane  
  ```text
  fn vzip(self) -> V
  ```

- **impl WithSubscriber for T**  
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into<Dispatch>`  
  - `fn with_current_subscriber(self) -> WithDispatch`

- **impl Allocation for T** where T: RefUnwindSafe + Send + Sync

- **impl ErasedDestructor for T** where T: 'static

- **impl MaybeSend for T** where T: Send (multiple sources)

- **impl ResultError for E** where E: Send + Debug + Sync

- **impl ResultType for T** where T: Send + Clone + Sync + Debug
