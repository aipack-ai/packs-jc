# CompactionOptions in lancedb::table

Options to be passed to [compact_files](https://docs.rs/lance/7.0.0/x86_64-unknown-linux-gnu/lance/dataset/optimize/fn.compact_files.html).

## Fields

- `target_rows_per_fragment: usize` – Target number of rows per file. Defaults to 1 million.
- `max_rows_per_group: usize` – Max number of rows per group.
- `max_bytes_per_file: Option<usize>` – Max number of bytes per file.
- `materialize_deletions: bool` – Whether to compact fragments with deletions. Defaults to true.
- `materialize_deletions_threshold: f32` – Fraction of rows deleted before materializing. Defaults to 0.1.
- `num_threads: Option<usize>` – Number of threads for compaction tasks.
- `batch_size: Option<usize>` – Batch size when scanning input fragments.
- `defer_index_remap: bool` – Whether to defer index remapping.
- `compaction_mode: Option<CompactionMode>` – The compaction mode to use.
- `enable_binary_copy: bool` – (Deprecated) Use `compaction_mode` instead.
- `enable_binary_copy_force: bool` – (Deprecated) Use `compaction_mode` instead.
- `binary_copy_read_batch_bytes: Option<usize>` – Batch size in bytes for binary copy.
- `max_source_fragments: Option<usize>` – Maximum source fragments per run.
- `transaction_properties: Option<Arc<HashMap<String, String>>>` – Key-value pairs stored in transaction file.

## Implementations

### `impl CompactionOptions`

#### `pub fn from_dataset_config(config: &HashMap<String, String>) -> Result<CompactionOptions, Error>`

Create `CompactionOptions` from dataset manifest config overrides.

Config keys prefixed with `lance.compaction.` map to fields:
- `lance.compaction.target_rows_per_fragment`
- `lance.compaction.max_rows_per_group`
- `lance.compaction.max_bytes_per_file`
- `lance.compaction.materialize_deletions`
- `lance.compaction.materialize_deletions_threshold`
- `lance.compaction.defer_index_remap`
- `lance.compaction.batch_size`
- `lance.compaction.compaction_mode`
- `lance.compaction.binary_copy_read_batch_bytes`
- `lance.compaction.max_source_fragments`

#### `pub fn apply_dataset_config(&mut self, config: &HashMap<String, String>) -> Result<(), Error>`

Apply overrides from the dataset manifest config to this options struct.

#### `pub fn validate(&mut self)`

#### `pub fn compaction_mode(&self) -> CompactionMode`

Returns the effective `CompactionMode`, preferring the new `compaction_mode` field and falling back to deprecated boolean fields.

#### `pub fn transaction_properties(self, properties: HashMap<String, String>) -> CompactionOptions`

Set transaction properties to store in the commit manifest.

### Trait Implementations

- **Clone** – `fn clone(&self) -> CompactionOptions`
- **Debug** – `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`
- **Default** – `fn default() -> CompactionOptions`
- **Deserialize<'de>** – `fn deserialize<D>(deserializer: D) -> Result<CompactionOptions, D::Error>`
- **PartialEq** – `fn eq(&self, other: &CompactionOptions) -> bool`
- **Serialize** – `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>`
- **StructuralPartialEq** – Marker trait.

### Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

### Blanket Implementations (selected)

- `Any` – `fn type_id(&self) -> TypeId`
- `Borrow<T>` – `fn borrow(&self) -> &T`
- `BorrowMut<T>` – `fn borrow_mut(&mut self) -> &mut T`
- `From<T>` – `fn from(t: T) -> T`
- `Into<U>` – `fn into(self) -> U`
- `ToOwned` – `type Owned = T; fn to_owned(&self) -> T`
- `CloneToUninit` – `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- And others (e.g., `Pipe`, `Tap`, `TryFrom`, `TryInto`, `Instrument`, etc.)

## Struct Definition (source)

```rust
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
