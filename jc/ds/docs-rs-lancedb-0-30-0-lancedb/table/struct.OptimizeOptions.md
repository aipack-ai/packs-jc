# OptimizeOptions in lancedb::table

## Struct Definition

Options for optimizing all indices.

```rust
#[non_exhaustive]
pub struct OptimizeOptions {
    pub num_indices_to_merge: Option<usize>,
    pub index_names: Option<Vec<String>>,
    pub retrain: bool,
    pub transaction_properties: Option<Arc<HashMap<String, String>>>,
    pub progress: Arc<dyn IndexBuildProgress>,
}
```

## Fields (Non-exhaustive)

This struct is marked as non-exhaustive. Non-exhaustive structs could have additional fields added in future. Therefore, non-exhaustive structs cannot be constructed in external crates using the traditional `Struct { .. }` syntax; cannot be matched against without a wildcard `..`; and struct update syntax will not work.

- `num_indices_to_merge: Option<usize>` — Number of delta indices to merge for one column. Default: 1. If `None`, Lance will create a new delta index if no partition is split, otherwise it will merge all delta indices. If `Some(N)`, the delta updates and latest N indices will be merged into one single index. It is up to the caller to decide how many indices to merge/keep. Callers can find out how many indices are there by calling `Dataset::index_statistics`. A common usage pattern: keep a large snapshot of the index of the base version, accumulate a few delta indices, then merge them into the snapshot.

- `index_names: Option<Vec<String>>` — The index names to optimize. If `None`, all indices will be optimized.

- `retrain: bool` — Whether to retrain the whole index. Default: false. If true, the index will be retrained based on the current data, `num_indices_to_merge` will be ignored, and all indices will be merged into one. If false, the index will be optimized by merging `num_indices_to_merge` indices. This is useful when the data distribution has changed significantly, and retraining is faster than recreating the index from scratch. NOTE: this option is only supported for v3 vector indices.

- `transaction_properties: Option<Arc<HashMap<String, String>>>` — Transaction properties to store with this commit. These key-value pairs are stored in the transaction file and can be read later to identify the source of the commit (e.g., job_id for tracking completed index jobs).

- `progress: Arc<dyn IndexBuildProgress>` — Progress callback for index building during optimization.

## Implementations

### `impl OptimizeOptions`

- `pub fn new() -> OptimizeOptions` — Creates a new `OptimizeOptions` with default values.

- `pub fn merge(num: usize) -> OptimizeOptions` — Sets the number of indices to merge and returns the updated options.

- `pub fn append() -> OptimizeOptions` — Sets the optimization mode to append (equivalent to `num_indices_to_merge = 1`).

- `pub fn retrain() -> OptimizeOptions` — Sets the optimization mode to retrain (equivalent to `retrain = true`).

- `pub fn num_indices_to_merge(self, num: Option<usize>) -> OptimizeOptions` — Builder method to set the number of indices to merge.

- `pub fn index_names(self, names: Vec<String>) -> OptimizeOptions` — Builder method to set the index names to optimize.

- `pub fn transaction_properties(self, properties: HashMap<String, String>) -> OptimizeOptions` — Set transaction properties to store in the commit manifest.

- `pub fn progress(self, progress: Arc<dyn IndexBuildProgress>) -> OptimizeOptions` — Set progress callback for index building during optimization.

## Trait Implementations

### `Clone`

- `fn clone(&self) -> OptimizeOptions` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### `Debug`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>` — Formats the value using the given formatter.

### `Default`

- `fn default() -> OptimizeOptions` — Returns the "default value" for a type.

## Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

- `Any`
- `ArchivePointee`
- `Borrow`
- `BorrowMut`
- `CloneToUninit`
- `Conv`
- `DropFlavorWrapper`
- `DynClone`
- `ErasedDestructor`
- `FmtForward`
- `From`
- `FromRef`
- `HasTypeWitness`
- `Identity`
- `Instrument`
- `Into`
- `IntoEither`
- `IntoShared`
- `LayoutRaw`
- `MaybeSend` (2 implementations)
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
- `TryFrom`
- `TryInto` (2 implementations)
- `VZip`
- `WithSubscriber`
