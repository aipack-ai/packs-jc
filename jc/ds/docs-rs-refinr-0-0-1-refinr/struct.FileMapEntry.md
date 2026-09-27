# FileMapEntry

`FileMapEntry` is a Rust struct in the `refinr` 0.0.1 crate. It contains generated guidance and searchable metadata for an individual source file.

[Source](../src/refinr/mapr/mapr_types.rs.html#19-30)

## Definition

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

- `Clone`
  - `fn clone(&self) -> Self` — Returns a duplicate of the value.
  - `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result` — Formats the value using the given formatter.
- `Default`
  - `fn default() -> Self` — Returns the default value.
- `Deserialize<'de>`
  - `fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>`
  - Constraint: `D: Deserializer<'de>`.
- `Eq`
- `PartialEq`
  - `fn eq(&self, other: &Self) -> bool` — Tests equality.
  - `fn ne(&self, other: &Self) -> bool` — Tests inequality.
- `Serialize`
  - `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>`
  - Constraint: `S: Serializer`.
- `StructuralPartialEq`

## Auto Traits

`FileMapEntry` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The type also receives blanket implementations for:

- `Any`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `DeserializeOwned`
- `Equivalent<K>` (from `hashbrown` and `equivalent`)
- `From<T>`
- `Instrument`
- `Into<U>`
- `PolicyExt`
- `ToOwned`
- `TryFrom<U>`
- `TryInto<U>`
- `WithSubscriber`
