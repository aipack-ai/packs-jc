# CompactionOptions in lancedb::table::optimize - Rust

[lancedb](../../index.html):: [table](../index.html):: [optimize](index.html)

# Struct CompactionOptions

[Source](https://docs.rs/lance/7.0.0/x86_64-unknown-linux-gnu/src/lance/dataset/optimize.rs.html#152)

```text
pub struct CompactionOptions {
    pub target_rows_per_fragment: usize,
    pub max_rows_per_group: usize,
    pub max_bytes_per_file: Option<usize>,
    pub materialize_deletions: bool,
    pub materialize_deletions_threshold: f32,
    pub num_threads: Option<usize>,
    pub batch_size: Option<usize>,
    pub defer_index_remap: bool,
    pub compaction_mode: Option<CompactionMode>,
    pub enable_binary_copy: bool,
    pub enable_binary_copy_force: bool,
    pub binary_copy_read_batch_bytes: Option<usize>,
    pub max_source_fragments: Option<usize>,
    pub transaction_properties: Option<Arc<HashMap<String, String>>>,
}
```

Options to be passed to [compact_files](https://docs.rs/lance/7.0.0/x86_64-unknown-linux-gnu/lance/dataset/optimize/fn.compact_files.html "fn lance::dataset::optimize::compact_files").

## Fields

- `target_rows_per_fragment: usize` — Target number of rows per file. Defaults to 1 million. This is used to determine which fragments need compaction.
- `max_rows_per_group: usize` — Max number of rows per group. Does not affect which fragments need compaction.
- `max_bytes_per_file: Option<usize>` — Max number of bytes per file. If not specified, the default (see `WriteParams`) will be used.
- `materialize_deletions: bool` — Whether to compact fragments with deletions so there are no deletions. Defaults to true.
- `materialize_deletions_threshold: f32` — The fraction of rows that need to be deleted in a fragment before materializing the deletions. Defaults to 10% (0.1).
- `num_threads: Option<usize>` — The number of threads to use. Defaults to the number of compute-intensive CPUs.
- `batch_size: Option<usize>` — The batch size to use when scanning input fragments.
- `defer_index_remap: bool` — Whether to defer remapping indices during compaction.
- `compaction_mode: Option<CompactionMode>` — The compaction mode to use. When set, takes priority over deprecated fields. Defaults to `None`.
- `enable_binary_copy: bool` — Deprecated: use `compaction_mode` instead.
- `enable_binary_copy_force: bool` — Deprecated: use `compaction_mode` instead.
- `binary_copy_read_batch_bytes: Option<usize>` — The batch size in bytes for reading during binary copy operations. Defaults to 16MB.
- `max_source_fragments: Option<usize>` — Maximum number of source fragments to compact in a single run. Defaults to `None` (no limit).
- `transaction_properties: Option<Arc<HashMap<String, String>>>` — Transaction properties to store with this commit. Key-value pairs stored in the transaction file.

## Implementations

### impl CompactionOptions

- `pub fn from_dataset_config(config: &HashMap<String, String>) -> Result<CompactionOptions, Error>` — Create CompactionOptions by starting with defaults and applying any overrides found in the dataset manifest config. Config keys are prefixed with `lance.compaction.`.

- `pub fn apply_dataset_config(&mut self, config: &HashMap<String, String>) -> Result<(), Error>` — Apply overrides from the dataset manifest config to this options struct. Only fields with corresponding config keys are modified.

- `pub fn validate(&mut self)` — (No description provided.)

- `pub fn compaction_mode(&self) -> CompactionMode` — Returns the effective CompactionMode, preferring the new `compaction_mode` field and falling back to the deprecated boolean fields.

- `pub fn transaction_properties(self, properties: HashMap<String, String>) -> CompactionOptions` — Set transaction properties to store in the commit manifest.

## Trait Implementations

### impl Clone for CompactionOptions

- `fn clone(&self) -> CompactionOptions`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for CompactionOptions

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### impl Default for CompactionOptions

- `fn default() -> CompactionOptions`

### impl<'de> Deserialize<'de> for CompactionOptions

- `fn deserialize<__D>(__deserializer: __D) -> Result<CompactionOptions, __D::Error> where __D: Deserializer<'de>`

### impl PartialEq for CompactionOptions

- `fn eq(&self, other: &CompactionOptions) -> bool`
- `fn ne(&self, other: &CompactionOptions) -> bool`

### impl Serialize for CompactionOptions

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error> where __S: Serializer`

### impl StructuralPartialEq for CompactionOptions

(No methods)

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation`
- `Any`
- `ArchivePointee`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `Conv`
- `DeserializeOwned`
- `DropFlavorWrapper<T>`
- `DynClone`
- `ErasedDestructor`
- `FmtForward`
- `From<T>`
- `FromRef<T>`
- `HasTypeWitness<W>`
- `Identity`
- `Instrument`
- `Into<U>`
- `IntoEither`
- `IntoShared<Shared>`
- `LayoutRaw`
- `MaybeSend` (multiple)
- `Niching<NichedOption<T, N1>>`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError`
- `ResultType`
- `Same`
- `Tap`
- `ToOwned`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>`
- `VZip<V>`
- `WithSubscriber`
