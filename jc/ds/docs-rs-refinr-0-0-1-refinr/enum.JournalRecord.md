# JournalRecord

`JournalRecord` is an enum in the `refinr` 0.0.1 crate. It represents a header or result record in the newline-delimited journal format.

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

All associated functions return `Self`.

```rust
pub fn header(
    journal_version: u32,
    model: impl Into<String>,
    prompt_version: u32,
    artifact_root: impl Into<String>,
    fingerprint: impl Into<String>,
) -> Self;

pub fn file_ok(
    path: impl Into<String>,
    source_hash: impl Into<String>,
    entry: FileMapEntry,
) -> Self;

pub fn file_failed(
    path: impl Into<String>,
    source_hash: impl Into<String>,
    error: impl Into<String>,
) -> Self;

pub fn folder_ok(
    path: impl Into<String>,
    source_hash: impl Into<String>,
    entry: FolderMapEntry,
) -> Self;

pub fn folder_failed(
    path: impl Into<String>,
    source_hash: impl Into<String>,
    error: impl Into<String>,
) -> Self;
```

- `header` — Creates a header record with the supplied journal identity fields.
- `file_ok` — Creates a successful file record.
- `file_failed` — Creates a failed file record.
- `folder_ok` — Creates a successful folder record.
- `folder_failed` — Creates a failed folder record.

## Trait implementations

`JournalRecord` implements `Clone`, `Debug`, `Eq`, `PartialEq`, `StructuralPartialEq`, `Serialize`, and `Deserialize<'de>`.

Relevant method signatures include:

```rust
impl Clone for JournalRecord {
    fn clone(&self) -> Self;
    fn clone_from(&mut self, source: &Self);
}

impl Debug for JournalRecord {
    fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result;
}

impl<'de> Deserialize<'de> for JournalRecord {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: Deserializer<'de>;
}

impl PartialEq for JournalRecord {
    fn eq(&self, other: &Self) -> bool;
    fn ne(&self, other: &Self) -> bool;
}

impl Serialize for JournalRecord {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer;
}
```

## Auto traits

`JournalRecord` implements the auto traits `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket implementations

The type also receives blanket implementations for `Any`, `Borrow<T>`, `BorrowMut<T>`, `CloneToUninit`, `DeserializeOwned`, `Equivalent<K>` (from both `hashbrown` and `equivalent`), `From<T>`, `Instrument`, `Into<U>`, `PolicyExt`, `ToOwned`, `TryFrom<U>`, `TryInto<U>`, and `WithSubscriber`.
