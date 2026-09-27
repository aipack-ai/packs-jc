# JournalFileRecord

`JournalFileRecord` is a journal record containing the mapping result for one file.

## Definition

```rust
pub struct JournalFileRecord {
    pub path: String,
    pub source_hash: String,
    pub status: JournalRecordStatus,
    pub entry: Option<FileMapEntry>,
    pub error: Option<String>,
}
```

## Fields

- `path: String` — Source-relative path of the file.
- `source_hash: String` — Hash of the source content used to generate the result.
- `status: JournalRecordStatus` — Whether mapping succeeded or failed.
- `entry: Option<FileMapEntry>` — Generated entry, present for successful records.
- `error: Option<String>` — Failure detail, present when available for failed records.

## Trait Implementations

`JournalFileRecord` implements `Clone`, `Debug`, `Deserialize<'de>`, `Eq`, `PartialEq`, and `Serialize`, as well as `StructuralPartialEq`.

### Clone

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### Debug

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

### Deserialize

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

### PartialEq

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

### Serialize

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

## Auto Traits

The type implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
