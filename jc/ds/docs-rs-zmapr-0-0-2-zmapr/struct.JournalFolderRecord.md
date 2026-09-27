# `JournalFolderRecord`

`JournalFolderRecord` is a journal record for the mapping result of one folder in `zmapr` 0.0.2.

[Source](../src/zmapr/mapr/mapr_journal.rs.html#73-90)

## Definition

```rust
pub struct JournalFolderRecord {
    pub path: String,
    pub source_hash: String,
    pub status: JournalRecordStatus,
    pub entry: Option<FolderMapEntry>,
    pub error: Option<String>,
}
```

## Fields

- `path: String` — Source-relative path of the folder.
- `source_hash: String` — Hash representing the folder source used to generate the result.
- `status: JournalRecordStatus` — Whether mapping succeeded or failed.
- `entry: Option<FolderMapEntry>` — Generated entry, present for successful records.
- `error: Option<String>` — Failure detail, present when available for failed records.

## Trait Implementations

`JournalFolderRecord` implements `Clone`, `Debug`, `Eq`, `PartialEq`, `Serialize`, and `Deserialize<'de>`.

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

Returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result;
```

Formats the value using the given formatter.

### `Deserialize<'de>`

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

Deserializes this value from the given Serde deserializer.

### `Eq` and `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

`eq` tests equality, and `ne` tests inequality.

### `Serialize`

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

Serializes this value into the given Serde serializer.

## Auto Traits

The type implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
