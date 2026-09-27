# JournalRecord

`JournalRecord` is an enum in the `zmapr` crate, version `0.0.2`. It represents a header or result record in the newline-delimited journal format.

## Definition

```rust
pub enum JournalRecord {
    Header(JournalHeader),
    File(JournalFileRecord),
    Folder(JournalFolderRecord),
}
```

## Variants

- `Header(JournalHeader)` — Journal identity and compatibility information.
- `File(JournalFileRecord)` — Mapping result for a source file.
- `Folder(JournalFolderRecord)` — Mapping result for a source folder.

## Associated functions

- `pub fn header(journal_version: u32, model: impl Into<String>, prompt_version: u32, artifact_root: impl Into<String>, fingerprint: impl Into<String>) -> Self`  
  Creates a header record with the supplied journal identity fields.

- `pub fn file_ok(path: impl Into<String>, source_hash: impl Into<String>, entry: FileMapEntry) -> Self`  
  Creates a successful file record.

- `pub fn file_failed(path: impl Into<String>, source_hash: impl Into<String>, error: impl Into<String>) -> Self`  
  Creates a failed file record.

- `pub fn folder_ok(path: impl Into<String>, source_hash: impl Into<String>, entry: FolderMapEntry) -> Self`  
  Creates a successful folder record.

- `pub fn folder_failed(path: impl Into<String>, source_hash: impl Into<String>, error: impl Into<String>) -> Self`  
  Creates a failed folder record.

## Trait implementations

`JournalRecord` implements `Clone`, `Debug`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

## Auto traits

`JournalRecord` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
