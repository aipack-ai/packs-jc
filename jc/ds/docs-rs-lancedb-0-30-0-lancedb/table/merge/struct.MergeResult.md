# MergeResult in lancedb::table::merge - Rust

[lancedb](../../lancedb/index.html):: [table](../index.html):: [merge](index.html)

## Struct MergeResult

[Source](../../../src/lancedb/table/merge.rs.html#22-44)

```text
pub struct MergeResult {
    pub version: u64,
    pub num_inserted_rows: u64,
    pub num_updated_rows: u64,
    pub num_deleted_rows: u64,
    pub num_attempts: u32,
}
```

## Fields

- `version: u64` — a commit version.
- `num_inserted_rows: u64` — Number of inserted rows (for user statistics)
- `num_updated_rows: u64` — Number of updated rows (for user statistics)
- `num_deleted_rows: u64` — Number of deleted rows (for user statistics) Note: This is different from internal references to ‘deleted\_rows’, since we technically “delete” updated rows during processing. However those rows are not shared with the user.
- `num_attempts: u32` — Number of attempts performed during the merge operation. This includes the initial attempt plus any retries due to transaction conflicts. A value of 1 means the operation succeeded on the first try.

## Trait Implementations

### impl `Clone` for `MergeResult`

[Source](../../../src/lancedb/table/merge.rs.html#21)

- `fn clone(&self) -> MergeResult` — Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#tymethod.clone)
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#method.clone_from)

### impl `Debug` for `MergeResult`

[Source](../../../src/lancedb/table/merge.rs.html#21)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)

### impl `Default` for `MergeResult`

[Source](../../../src/lancedb/table/merge.rs.html#21)

- `fn default() -> MergeResult` — Returns the “default value” for a type. [Read more](https://doc.rust-lang.org/nightly/core/default/trait.Default.html#tymethod.default)

### impl<'de> `Deserialize<'de>` for `MergeResult`

[Source](../../../src/lancedb/table/merge.rs.html#21)

- `fn deserialize<__D>(__deserializer: __D) -> Result<__D::Error>` where `__D: Deserializer<'de>` — Deserialize this value from the given Serde deserializer. [Read more](https://docs.rs/serde_core/1.0.228/x86_64-unknown-linux-gnu/serde_core/de/trait.Deserialize.html#tymethod.deserialize)

### impl `PartialEq` for `MergeResult`

[Source](../../../src/lancedb/table/merge.rs.html#21)

- `fn eq(&self, other: &MergeResult) -> bool` — Tests for `self` and `other` values to be equal, and is used by `==`.
- `fn ne(&self, other: &Rhs) -> bool` — Tests for `!=`. The default implementation is almost always sufficient, and should not be overridden without very good reason.

### impl `Serialize` for `MergeResult`

[Source](../../../src/lancedb/table/merge.rs.html#21)

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where `__S: Serializer` — Serialize this value into the given Serde serializer. [Read more](https://docs.rs/serde_core/1.0.228/x86_64-unknown-linux-gnu/serde_core/ser/trait.Serialize.html#tymethod.serialize)

### impl `Eq` for `MergeResult`

[Source](../../../src/lancedb/table/merge.rs.html#21)

### impl `StructuralPartialEq` for `MergeResult`

[Source](../../../src/lancedb/table/merge.rs.html#21)

## Auto Trait Implementations

- `impl Freeze for MergeResult`
- `impl RefUnwindSafe for MergeResult`
- `impl Send for MergeResult`
- `impl Sync for MergeResult`
- `impl Unpin for MergeResult`
- `impl UnsafeUnpin for MergeResult`
- `impl UnwindSafe for MergeResult`

## Blanket Implementations

(Many blanket implementations are listed, see [source](https://doc.rust-lang.org/nightly/src/core/any.rs.html#141) for full details.)

- `impl Any for T`
- `impl ArchivePointee for T`
- `impl Borrow<T> for T`
- `impl BorrowMut<T> for T`
- `impl CloneToUninit for T`
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T`
- `impl DynEq for T`
- `impl Equivalent<K> for Q` (multiple)
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl FromRef<T> for T`
- `impl HasTypeWitness<W> for T`
- `impl Identity for T`
- `impl Instrument for T`
- `impl Into<U> for T`
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared`
- `impl LayoutRaw for T`
- `impl MaybeSend for T` (multiple)
- `impl Niching<NichedOption<T, N1>> for N2`
- `impl Pipe for T`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T`
- `impl ResultError for E`
- `impl ResultType for T`
- `impl Same for T`
- `impl Tap for T`
- `impl ToOwned for T`
- `impl TryConv for T`
- `impl TryFrom<U> for T`
- `impl TryInto<U> for T` (multiple)
- `impl VZip<V> for T`
- `impl WithSubscriber for T`
- `impl Allocation for T`
- `impl DeserializeOwned for T`
- `impl ErasedDestructor for T`
