# MergeInsertBuilder

A builder used to create and run a merge insert operation.  
See [`super::Table::merge_insert`](../struct.Table.html#method.merge_insert) for more context.

## Implementations

### `impl MergeInsertBuilder`

[Source](../../../src/lancedb/table/merge.rs.html#62-160)

#### `pub fn when_matched_update_all(&mut self, condition: Option<String>) -> &mut Self`

Rows that exist in both the source table (new data) and the target table (old data) will be updated, replacing the old row with the corresponding matching row.

If there are multiple matches then the behavior is undefined. Currently this causes multiple copies of the row to be created but that behavior is subject to change.

An optional condition may be specified. If it is, then only matched rows that satisfy the condition will be updated. Any rows that do not satisfy the condition will be left as they are. Failing to satisfy the condition does not cause a "matched row" to become a "not matched" row.

The condition should be an SQL string. Use the prefix `target.` to refer to rows in the target table (old data) and the prefix `source.` to refer to rows in the source table (new data). For example, `"target.last_update < source.last_update"`.

[Source](../../../src/lancedb/table/merge.rs.html#97-101)

#### `pub fn when_not_matched_insert_all(&mut self) -> &mut Self`

Rows that exist only in the source table (new data) should be inserted into the target table.

[Source](../../../src/lancedb/table/merge.rs.html#105-108)

#### `pub fn when_not_matched_by_source_delete(&mut self, filter: Option<String>) -> &mut Self`

Rows that exist only in the target table (old data) will be deleted. An optional condition can be provided to limit what data is deleted.

**Arguments**
- `condition` – If `None` then all such rows will be deleted. Otherwise the condition will be used as an SQL filter to limit what rows are deleted.

[Source](../../../src/lancedb/table/merge.rs.html#119-123)

#### `pub fn timeout(&mut self, timeout: Duration) -> &mut Self`

Maximum time to run the operation before cancelling it.  
By default, there is a 30-second timeout that is only enforced after the first attempt. This is to prevent spending too long retrying to resolve conflicts. For example, if a write attempt takes 20 seconds and fails, the second attempt will be cancelled after 10 seconds, hitting the 30-second timeout. However, a write that takes one hour and succeeds on the first attempt will not be cancelled. When this is set, the timeout is enforced on all attempts, including the first.

[Source](../../../src/lancedb/table/merge.rs.html#135-138)

#### `pub fn use_index(&mut self, use_index: bool) -> &mut Self`

Controls whether to use indexes for the merge operation.  
When set to `true` (the default), the operation will use an index if available on the join key for improved performance. When set to `false`, it forces a full table scan even if an index exists. This can be useful for benchmarking or when the query optimizer chooses a suboptimal path. If not set, defaults to `true` (use index if available).

[Source](../../../src/lancedb/table/merge.rs.html#148-151)

#### `pub async fn execute(self, new_data: Box<dyn RecordBatchReader + Send>) -> Result<MergeResult>`

Executes the merge insert operation. Returns version and statistics about the merge operation including the number of rows inserted, updated, and deleted.

[Source](../../../src/lancedb/table/merge.rs.html#157-159)

## Trait Implementations

### `impl Clone for MergeInsertBuilder`

[Source](../../../src/lancedb/table/merge.rs.html#49)

- `fn clone(&self) -> MergeInsertBuilder` – Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` – Performs copy-assignment from `source`.

### `impl Debug for MergeInsertBuilder`

[Source](../../../src/lancedb/table/merge.rs.html#49)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` – Formats the value using the given formatter.

## Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `impl ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata`
- `impl Borrow<T> for T` where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T` where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl CloneToUninit for T` where `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl Conv for T`
  - `fn conv(self) -> T`
- `impl DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`
- `impl DynClone for T` where `T: Clone`
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- `impl FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`
- `impl From<T> for T`
  - `fn from(t: T) -> T`
- `impl FromRef<T> for T` where `T: Clone`
  - `fn from_ref(input: &T) -> T`
- `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness`, `T: ?Sized`
  - `const WITNESS: W = W::MAKE`
- `impl Identity for T` where `T: ?Sized`
  - `const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`
  - `type Type = T`
- `impl Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- `impl Into<U> for T` where `U: From<T>`
  - `fn into(self) -> U`
- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`
- `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`
- `impl LayoutRaw for T`
  - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `impl Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching`, `N1: Niching`, `N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- `impl Pipe for T` where `T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`
- `impl Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: <T as Pointable>::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl Pointee for T`
  - `type Metadata = ()`
- `impl PolicyExt for T` where `T: ?Sized`
  - `fn and(self, other: P) -> And<T, P>`
  - `fn or(self, other: P) -> Or<T, P>`
- `impl Same for T`
  - `type Output = T`
- `impl Tap for T`
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
- `impl ToOwned for T` where `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `impl TryConv for T`
  - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>`
- `impl TryFrom<U> for T` where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>`
- `impl TryInto<U> for T` where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
- `impl TryInto<U> for T` where `U: TryFrom<T>` (async version)
  - `type Error = <U as TryFrom<T>>::Error`
  - `async fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
- `impl VZip<V> for T` where `V: MultiLane`
  - `fn vzip(self) -> V`
- `impl WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
- `impl ErasedDestructor for T` where `T: 'static`
- `impl MaybeSend for T` where `T: Send`
- `impl MaybeSend for T` where `T: Send` (duplicate from different crate)
- `impl ResultError for E` where `E: Send + Debug + Sync`
- `impl ResultType for T` where `T: Send + Clone + Sync + Debug`
