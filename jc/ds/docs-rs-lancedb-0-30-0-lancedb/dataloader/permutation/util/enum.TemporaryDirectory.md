# TemporaryDirectory

**Location:** `lancedb::dataloader::permutation::util`

**Source:** [View source](https://github.com/lancedb/lancedb/blob/main/lancedb/dataloader/permutation/util.rs#L20-L28)

**Description:** Directory to use for temporary files.

## Code Definition

```text
pub enum TemporaryDirectory {
    OsDefault,
    Specific(PathBuf),
    None,
}
```

## Variants

- `OsDefault` – Use the operating system’s default temporary directory (e.g., `/tmp`).
- `Specific(PathBuf)` – Use the specified directory (must be an absolute path).
- `None` – If spilling is required, then error out.

## Implementations

### `impl TemporaryDirectory`

- `pub fn create_temp_dir(&self) -> Result<TempDir>`  
  Creates a temporary directory based on the variant.
- `pub fn to_disk_manager_mode(&self) -> DiskManagerMode`  
  Converts to the corresponding `DiskManagerMode` for DataFusion execution.

## Trait Implementations

- **`Clone`** – `fn clone(&self) -> TemporaryDirectory`
- **`Debug`** – `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
- **`Default`** – `fn default() -> TemporaryDirectory`

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

(Standard blanket implementations for `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `Conv`, `DropFlavorWrapper`, `DynClone`, `FmtForward`, `From`, `FromRef`, `HasTypeWitness`, `Identity`, `Instrument`, `Into`, `IntoEither`, `IntoShared`, `LayoutRaw`, `MaybeSend`, `Niching`, `Pipe`, `Pointable`, `Pointee`, `PolicyExt`, `ResultError`, `ResultType`, `Same`, `Tap`, `ToOwned`, `TryConv`, `TryFrom`, `TryInto`, `VZip`, `WithSubscriber`, `Allocation`, `ErasedDestructor`, and others.)
