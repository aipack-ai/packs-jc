# CloneTableBuilder

**Module:** `lancedb::connection`

**Source:** [`src/lancedb/connection.rs`](https://github.com/lancedb/lancedb/blob/main/src/lancedb/connection.rs) (lines 281-284)

**Expand description**

Builder for cloning a table.

A shallow clone creates a new table that shares the underlying data files with the source table but has its own independent manifest. Both the source and cloned tables can evolve independently while initially sharing the same data, deletion, and index files.

Use this builder to configure the clone operation before executing it.

## Implementations

### `impl CloneTableBuilder`

#### Methods

- **`source_version`**

  ```text
  pub fn source_version(self, version: u64) -> Self
  ```

  Set the source version to clone from.

- **`source_tag`**

  ```text
  pub fn source_tag(self, tag: impl Into<String>) -> Self
  ```

  Set the source tag to clone from.

- **`target_namespace`**

  ```text
  pub fn target_namespace(self, namespace_path: Vec<String>) -> Self
  ```

  Set the target namespace path for the cloned table.

- **`is_shallow`**

  ```text
  pub fn is_shallow(self, is_shallow: bool) -> Self
  ```

  Set whether to perform a shallow clone (default: true).
  When true, the cloned table shares data files with the source table. When false, performs a deep clone (not yet implemented).

- **`namespace_client`**

  ```text
  pub fn namespace_client(self, client: Arc<LanceNamespace>) -> Self
  ```

  Set a namespace client for managed versioning support.

- **`execute`**

  ```text
  pub async fn execute(self) -> Result<Table>
  ```

  Execute the clone operation.

## Auto Trait Implementations

- `Freeze` for `CloneTableBuilder`
- `!RefUnwindSafe` for `CloneTableBuilder`
- `Send` for `CloneTableBuilder`
- `Sync` for `CloneTableBuilder`
- `Unpin` for `CloneTableBuilder`
- `UnsafeUnpin` for `CloneTableBuilder`
- `!UnwindSafe` for `CloneTableBuilder`

## Blanket Implementations

- **`Any`** for T where T: 'static + ?Sized

  ```text
  fn type_id(&self) -> TypeId
  ```

- **`ArchivePointee`** for T

  - Associated type `ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata`

- **`Borrow<T>`** for T where T: ?Sized

  ```text
  fn borrow(&self) -> &T
  ```

- **`BorrowMut<T>`** for T where T: ?Sized

  ```text
  fn borrow_mut(&mut self) -> &mut T
  ```

- **`Conv`** for T

  ```text
  fn conv(self) -> T
  ```

- **`DropFlavorWrapper<T>`** for T

  - Associated type `Flavor = MayDrop`

- **`ErasedDestructor`** for T where T: 'static

- **`FmtForward`** for T

  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`

- **`From<T>`** for T

  ```text
  fn from(t: T) -> T
  ```

- **`HasTypeWitness<W>`** for T where W: MakeTypeWitness, T: ?Sized

  - Associated constant `WITNESS: W = W::MAKE`

- **`Identity`** for T where T: ?Sized

  - Associated constant `TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW`
  - Associated type `Type = T`

- **`Instrument`** for T

  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`

- **`Into<U>`** for T where U: From<T>

  ```text
  fn into(self) -> U
  ```

- **`IntoEither`** for T

  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`

- **`IntoShared<Shared>`** for Unshared where Shared: FromUnshared

  ```text
  fn into_shared(self) -> Shared
  ```

- **`LayoutRaw`** for T

  ```text
  fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>
  ```

- **`MaybeSend`** for T where T: Send

- **`Niching<NichedOption<T, N1>>`** for N2

  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

- **`Pipe`** for T where T: ?Sized

  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`

- **`Pointable`** for T

  - Associated constant `ALIGN: usize`
  - Associated type `Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`

- **`Pointee`** for T

  - Associated type `Metadata = ()`

- **`PolicyExt`** for T where T: ?Sized

  - `fn and(self, other: P) -> And`
  - `fn or(self, other: P) -> Or`

- **`Same`** for T

  - Associated type `Output = T`

- **`Tap`** for T

  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self`
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self`
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self`
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self`
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self`
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self`
  - plus `_dbg` variants

- **`TryConv`** for T

  ```text
  fn try_conv(self) -> Result<T, Error>
  ```

- **`TryFrom<U>`** for T where U: Into<T>

  - Associated type `Error = Infallible`

  ```text
  fn try_from(value: U) -> Result<T, Infallible>
  ```

- **`TryInto<U>`** for T where U: TryFrom<T>

  - Associated type `Error = <U as TryFrom<T>>::Error`

  ```text
  fn try_into(self) -> Result<U, Error>
  ```

- **`TryInto<U>`** (async-convert) for T where U: TryFrom<T>

  - Associated type `Error = <U as TryFrom<T>>::Error`

  ```text
  fn try_into(self) -> Pin<Box<dyn Future<Output = Result<U, Error>> + 'async_trait>>
  ```

- **`VZip<V>`** for T where V: MultiLane

  ```text
  fn vzip(self) -> V
  ```

- **`WithSubscriber`** for T

  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
