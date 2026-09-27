# JournalFileRecord

`JournalFileRecord` is a journal record for the mapping result of one file, in the `refinr` crate.

**Source:** `refinr/mapr/mapr_journal.rs` (lines 52–69)

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

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

Returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

Formats the value using the given formatter.

### `Deserialize<'de>`

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

Deserializes this value from the given Serde deserializer.

### `Eq`

Implemented for `JournalFileRecord`.

### `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

Compares records for equality or inequality.

### `Serialize`

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

Serializes this value using the given Serde serializer.

### `StructuralPartialEq`

Implemented for `JournalFileRecord`.

## Auto Traits

`JournalFileRecord` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
