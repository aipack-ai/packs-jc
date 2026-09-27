# `FolderMapEntry`

**Crate:** `refinr` 0.0.1  
**Source:** `refinr/mapr/mapr_types.rs` (lines 34–41)

`FolderMapEntry` contains guidance generated for a source directory.

## Definition

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

`FolderMapEntry` implements `Clone`, `Debug`, `Default`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

Returns a duplicate of the value; `clone_from` copies from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result;
```

Formats the value using the given formatter.

### `Default`

```rust
fn default() -> Self;
```

Returns the default value for the type.

### `Deserialize<'de>`

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

Deserializes the value from a Serde deserializer.

### `Eq` and `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

Compare two values for equality or inequality.

### `Serialize`

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

Serializes the value into a Serde serializer.

### `StructuralPartialEq`

Marker trait implementation.

## Auto Traits

The type implements these auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The documentation lists these blanket implementations:

- `Any`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `DeserializeOwned`
- `Equivalent<K>` (from `hashbrown`)
- `Equivalent<K>` (from `equivalent`)
- `From<T>`
- `Instrument`
- `Into<U>`
- `PolicyExt`
- `ToOwned`
- `TryFrom<U>`
- `TryInto<U>`
- `WithSubscriber`
