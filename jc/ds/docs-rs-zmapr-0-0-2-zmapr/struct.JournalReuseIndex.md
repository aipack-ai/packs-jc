# `JournalReuseIndex`

`JournalReuseIndex` is part of **zmapr 0.0.2**.

Successful file and folder entries recovered from a compatible journal.

```rust
pub struct JournalReuseIndex {
    /* private fields */
}
```

## Methods

### `new`

Creates an empty reuse index.

```rust
pub fn new() -> Self
```

### `get_file`

Returns a cached file entry when both its path and source hash match.

```rust
pub fn get_file(
    &self,
    path: &str,
    current_hash: &str,
) -> Option<&FileMapEntry>
```

### `get_folder`

Returns a cached folder entry when both its path and source hash match.

```rust
pub fn get_folder(
    &self,
    path: &str,
    current_hash: &str,
) -> Option<&FolderMapEntry>
```

### `file_count`

Returns the number of successful file entries in the index.

```rust
pub fn file_count(&self) -> usize
```

### `folder_count`

Returns the number of successful folder entries in the index.

```rust
pub fn folder_count(&self) -> usize
```

### `record_file_ok`

Inserts or replaces a successful file entry.

```rust
pub fn record_file_ok(
    &mut self,
    path: impl Into<String>,
    source_hash: impl Into<String>,
    entry: FileMapEntry,
) -> ()
```

### `record_file_failed`

Removes any cached file entry for the path.

```rust
pub fn record_file_failed(&mut self, path: &str) -> ()
```

### `record_folder_ok`

Inserts or replaces a successful folder entry.

```rust
pub fn record_folder_ok(
    &mut self,
    path: impl Into<String>,
    source_hash: impl Into<String>,
    entry: FolderMapEntry,
) -> ()
```

### `record_folder_failed`

Removes any cached folder entry for the path.

```rust
pub fn record_folder_failed(&mut self, path: &str) -> ()
```

### `apply_record`

Applies a file or folder record, invalidating its cached entry on failure. Header records do not change the index.

```rust
pub fn apply_record(&mut self, record: &JournalRecord) -> ()
```

## Trait implementations

`JournalReuseIndex` implements `Clone`, `Debug`, `Default`, `Eq`, and `PartialEq`.

## Auto traits

`JournalReuseIndex` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
