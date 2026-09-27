# `FolderMapEntry` in zmapr

`FolderMapEntry` contains guidance generated for a source directory.

## Struct Definition

```rust
pub struct FolderMapEntry {
    pub summary: String,
    pub when_to_use: String,
    pub topics: Vec<String>,
}
```

## Fields

- `summary: String` — Concise description of the folder’s responsibility.
- `when_to_use: String` — Guidance for when a reader should inspect the folder.
- `topics: Vec<String>` — Searchable subject labels.

## Trait Implementations

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result;
```

Formats the value using the given formatter.

### `Default`

```rust
fn default() -> Self;
```

### `Deserialize<'de>`

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

Deserializes the value using the given Serde deserializer.

### `Eq`

`FolderMapEntry` implements `Eq`.

### `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

### `Serialize`

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

Serializes the value using the given Serde serializer.

### `StructuralPartialEq`

`FolderMapEntry` implements `StructuralPartialEq`.

## Auto Traits

`FolderMapEntry` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`
