# FileMapEntry

`FileMapEntry` is a struct in `zmapr` 0.0.2. It contains guidance generated for an individual source file.

```rust
pub struct FileMapEntry {
    pub summary: String,
    pub when_to_use: String,
    pub public_types: Vec<String>,
    pub public_functions: Vec<String>,
    pub topics: Vec<String>,
}
```

## Fields

- `summary: String` — Concise description of the file’s content.
- `when_to_use: String` — Guidance for when a reader should consult the file.
- `public_types: Vec<String>` — Public types exposed by the file, when applicable.
- `public_functions: Vec<String>` — Public functions exposed by the file, when applicable.
- `topics: Vec<String>` — Searchable subject labels.

## Trait Implementations

`FileMapEntry` implements `Clone`, `Debug`, `Default`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

### Clone

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### Debug

```rust
fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result;
```

### Default

```rust
fn default() -> Self;
```

### Deserialize

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: serde::Deserializer<'de>;
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
    S: serde::Serializer;
```

## Auto Traits

`FileMapEntry` implements the following auto traits: `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
