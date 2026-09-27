# `JournalReuseIndex`

`JournalReuseIndex` is a type in the `refinr` 0.0.1 crate. It stores successful file and folder entries recovered from a compatible journal.

```rust
pub struct JournalReuseIndex {
    /* private fields */
}
```

## Associated functions and methods

```rust
impl JournalReuseIndex {
    /// Creates an empty reuse index.
    pub fn new() -> Self;

    /// Returns a cached file entry when both its path and source hash match.
    pub fn get_file(
        &self,
        path: &str,
        current_hash: &str,
    ) -> Option<&FileMapEntry>;

    /// Returns a cached folder entry when both its path and source hash match.
    pub fn get_folder(
        &self,
        path: &str,
        current_hash: &str,
    ) -> Option<&FolderMapEntry>;

    /// Returns the number of successful file entries in the index.
    pub fn file_count(&self) -> usize;

    /// Returns the number of successful folder entries in the index.
    pub fn folder_count(&self) -> usize;

    /// Inserts or replaces a successful file entry.
    pub fn record_file_ok(
        &mut self,
        path: impl Into<String>,
        source_hash: impl Into<String>,
        entry: FileMapEntry,
    );

    /// Removes any cached file entry for the path.
    pub fn record_file_failed(&mut self, path: &str);

    /// Inserts or replaces a successful folder entry.
    pub fn record_folder_ok(
        &mut self,
        path: impl Into<String>,
        source_hash: impl Into<String>,
        entry: FolderMapEntry,
    );

    /// Removes any cached folder entry for the path.
    pub fn record_folder_failed(&mut self, path: &str);

    /// Applies a file or folder record, invalidating its cached entry on failure.
    ///
    /// Header records do not change the index.
    pub fn apply_record(&mut self, record: &JournalRecord);
}
```

## Trait implementations

`JournalReuseIndex` implements `Clone`, `Debug`, `Default`, `Eq`, `PartialEq`, and `StructuralPartialEq`.

Key trait method signatures include:

```rust
impl Clone for JournalReuseIndex {
    fn clone(&self) -> Self;
    fn clone_from(&mut self, source: &Self);
}

impl Debug for JournalReuseIndex {
    fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result;
}

impl Default for JournalReuseIndex {
    fn default() -> Self;
}

impl PartialEq for JournalReuseIndex {
    fn eq(&self, other: &Self) -> bool;
    fn ne(&self, other: &Self) -> bool;
}
```

## Auto traits

The type implements these auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`
