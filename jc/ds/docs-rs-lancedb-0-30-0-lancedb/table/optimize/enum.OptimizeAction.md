# OptimizeAction

`in lancedb::table::optimize`

[Source](../../../src/lancedb/table/optimize.rs.html#30-90)

```text
pub enum OptimizeAction {
    All,
    Compact {
        options: CompactionOptions,
        remap_options: Option<Arc<IndexRemapperOptions>>,
    },
    Prune {
        older_than: Option<Duration>,
        delete_unverified: Option<bool>,
        error_if_tagged_old_versions: Option<bool>,
    },
    Index(OptimizeOptions),
}
```

## Description

Optimize the dataset.

Similar to `VACUUM` in PostgreSQL, it offers different options to optimize different parts of the table on disk. By default, it optimizes everything, as `OptimizeAction::All`.

## Variants

- **All** – Run all optimizations with default values.
- **Compact** – Compacts files in the dataset. LanceDb uses a readonly filesystem for performance and safe concurrency. Every time new data is added it will be added into new files. Small files can hurt both read and write performance. Compaction will merge small files into larger ones. All operations that modify data (add, delete, update, merge insert, etc.) will create new files. If these operations are run frequently then compaction should run frequently. If these operations are never run (search only) then compaction is not necessary.

  - `options: CompactionOptions`
  - `remap_options: Option<Arc<IndexRemapperOptions>>`
- **Prune** – Prune old version of datasets. Every change in LanceDb is additive. When data is removed from a dataset a new version is created that doesn’t contain the removed data. However, the old version, which does contain the removed data, is left in place. This is necessary for consistency and concurrency and also enables time travel functionality like the ability to checkout an older version of the dataset to undo changes. Over time, these old versions can consume a lot of disk space. The prune operation will remove versions of the dataset that are older than a certain age. This will free up the space used by that old data. Once a version is pruned it can no longer be checked out.

  - `older_than: Option<Duration>` – The duration of time to keep versions of the dataset.
  - `delete_unverified: Option<bool>` – Because they may be part of an in-progress transaction, files newer than 7 days old are not deleted by default. If you are sure that there are no in-progress transactions, then you can set this to True to delete all files older than `older_than`. **WARNING**: This should only be set to true if you can guarantee that no other process is currently working on this dataset. Otherwise the dataset could be put into a corrupted state.
  - `error_if_tagged_old_versions: Option<bool>` – If true, an error will be returned if there are any old versions that are still tagged.
- **Index**(OptimizeOptions) – Optimize the indices. This operation optimizes all indices in the table. When new data is added to LanceDb it is not added to the indices. However, it can still turn up in searches because the search function will scan both the indexed data and the unindexed data in parallel. Over time, the unindexed data can become large enough that the search performance is slow. This operation will add the unindexed data to the indices without rerunning the full index creation process. Optimizing an index is faster than re-training the index but it does not typically adjust the underlying model relied upon by the index. This can eventually lead to poor search accuracy and so users may still want to occasionally retrain the index after adding a large amount of data. For example, when using IVF, an index will create clusters. Optimizing an index assigns unindexed data to the existing clusters, but it does not move the clusters or create new clusters.

## Trait Implementations

### impl Default for OptimizeAction

```text
fn default() -> OptimizeAction
```

Returns the “default value” for a type. (Returns `OptimizeAction::All`.)

### Auto Trait Implementations

- `impl Freeze for OptimizeAction`
- `impl Send for OptimizeAction`
- `impl Sync for OptimizeAction`
- `impl Unpin for OptimizeAction`
- `impl UnsafeUnpin for OptimizeAction`
- `impl !RefUnwindSafe for OptimizeAction`
- `impl !UnwindSafe for OptimizeAction`

### Blanket Implementations

- `impl<T> Any for T where T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `impl<T> ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &Self::ArchivedMetadata) -> <T as Pointee>::Metadata`
- `impl<T> Borrow<T> for T where T: ?Sized`
  - `fn borrow(&self) -> &T`
- `impl<T> BorrowMut<T> for T where T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl<T> Conv for T`
  - `fn conv(self) -> T where Self: Into<T>`
- `impl<T> DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`
- `impl<T> FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`
- `impl<T> From<T> for T`
  - `fn from(t: T) -> T`
- `impl<T, W> HasTypeWitness<W> for T where W: MakeTypeWitness, T: ?Sized`
  - `const WITNESS: W = W::MAKE`
- `impl<T> Identity for T where T: ?Sized`
  - `const TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW`
  - `type Type = T`
- `impl<T> Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`
- `impl<T> Into<U> for T where U: From<T>`
  - `fn into(self) -> U`
- `impl<T> IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either<Self, Self>`
  - `fn into_either_with(self, into_left: F) -> Either<Self, Self>`
- `impl<Unshared, Shared> IntoShared<Shared> for Unshared where Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`
- `impl<T> LayoutRaw for T`
  - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `impl<T, N1, N2> Niching<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching, N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- `impl<T> Pipe for T where T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`
- `impl<T> Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl<T> Pointee for T`
  - `type Metadata = ()`
- `impl<T> PolicyExt for T where T: ?Sized`
  - `fn and(self, other: P) -> And<Self, P>`
  - `fn or(self, other: P) -> Or<Self, P>`
- `impl<T> Same for T`
  - `type Output = T`
- `impl<T> Tap for T`
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
- `impl<T> TryConv for T`
  - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>`
- `impl<T, U> TryFrom<U> for T where U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl<T, U> TryInto<U> for T where U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- `impl<T, U> TryInto<U> for T where U: async_convert::TryFrom<T>`
  - `type Error = <U as async_convert::TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`
- `impl<T, V> VZip<V> for T where V: MultiLane`
  - `fn vzip(self) -> V`
- `impl<T> WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch<Self>`
  - `fn with_current_subscriber(self) -> WithDispatch<Self>`
- `impl<T> ErasedDestructor for T where T: 'static`
- `impl<T> MaybeSend for T where T: Send`
