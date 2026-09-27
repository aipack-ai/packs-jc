# JournalFolderRecord

`JournalFolderRecord` is a struct in the `refinr` crate. It records the mapping result for one folder.

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

The struct implements `Clone`, `Debug`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

Returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result;
```

Formats the value using the given formatter.

### `Deserialize<'de>`

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

Deserializes the value from the given Serde deserializer.

### `Eq`

`JournalFolderRecord` implements `Eq`.

### `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

Compares values for equality or inequality.

### `Serialize`

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

Serializes the value into the given Serde serializer.

### `StructuralPartialEq`

`JournalFolderRecord` implements `StructuralPartialEq`.

## Auto Traits

`JournalFolderRecord` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`
