# `ContentMapDocument`

`ContentMapDocument` is a serialized document written to `content-map.json`. It stores content-map data along with provenance metadata.

## Definition

```rust
pub struct ContentMapDocument {
    pub version: u32,
    pub model: String,
    pub prompt_version: u32,
    pub generated_at: String,
    pub file_map: BTreeMap<String, FileMapEntry>,
    pub folder_map: BTreeMap<String, FolderMapEntry>,
    pub file_metadata: BTreeMap<String, FileMapMetadata>,
}
```

## Fields

- `version: u32` — Schema version of the serialized document.
- `model: String` — Model used to generate the content map.
- `prompt_version: u32` — Version of the prompt used to generate the content map.
- `generated_at: String` — Timestamp recorded when the document was generated.
- `file_map: BTreeMap<String, FileMapEntry>` — Guidance indexed by source-relative file path.
- `folder_map: BTreeMap<String, FolderMapEntry>` — Guidance indexed by source-relative directory path.
- `file_metadata: BTreeMap<String, FileMapMetadata>` — Provenance metadata indexed by source-relative file path.

## Associated Functions

```rust
pub fn new(
    model: impl Into<String>,
    prompt_version: u32,
    generated_at: impl Into<String>,
    file_map: BTreeMap<String, FileMapEntry>,
    folder_map: BTreeMap<String, FolderMapEntry>,
) -> Self
```

Creates a document with schema version `1` and no file metadata.

```rust
pub fn from_content_map(
    model: impl Into<String>,
    prompt_version: u32,
    generated_at: impl Into<String>,
    content_map: ContentMap,
) -> Self
```

Creates a document from an in-memory content map.

## Methods

```rust
pub fn with_file_metadata(
    self,
    file_metadata: BTreeMap<String, FileMapMetadata>,
) -> Self
```

Replaces the document’s file provenance metadata and returns the updated document.

## Trait Implementations

`ContentMapDocument` implements `Clone`, `Debug`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

Notable trait method signatures:

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result;
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

## Auto Traits

The type implements the following auto traits: `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
