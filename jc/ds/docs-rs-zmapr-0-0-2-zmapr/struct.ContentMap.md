# ContentMap in zmapr - Rust

`ContentMap` stores in-memory guidance for source files and directories.

## Definition

```rust
pub struct ContentMap {
    pub file_map: BTreeMap<String, FileMapEntry>,
    pub folder_map: BTreeMap<String, FolderMapEntry>,
}
```

Source: [`mapr_types.rs`](../src/zmapr/mapr/mapr_types.rs.html#10-15)

## Fields

- `file_map: BTreeMap<String, FileMapEntry>` — maps source-relative file paths to file guidance.
- `folder_map: BTreeMap<String, FolderMapEntry>` — maps source-relative directory paths to folder guidance.

## Trait implementations

`ContentMap` implements `Clone`, `Debug`, `Default`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

### Clone

- `fn clone(&self) -> Self` — returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — copies from `source`.

### Debug

- `fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result` — formats the value.

### Default

- `fn default() -> Self` — returns the default value.

### Deserialize

- `fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>`
  - `D: Deserializer<'de>`

Deserializes the value from a Serde deserializer.

### PartialEq

- `fn eq(&self, other: &Self) -> bool` — checks equality.
- `fn ne(&self, other: &Self) -> bool` — checks inequality.

### Serialize

- `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>`
  - `S: Serializer`

Serializes the value into a Serde serializer.

## Auto traits

`ContentMap` implements the auto traits `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
