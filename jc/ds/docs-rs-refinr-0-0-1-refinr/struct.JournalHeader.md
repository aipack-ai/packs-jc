# JournalHeader

`JournalHeader` identifies the model, prompt, and artifact root used for a journal.

```rust
pub struct JournalHeader {
    pub journal_version: u32,
    pub model: String,
    pub prompt_version: u32,
    pub artifact_root: String,
    pub fingerprint: String,
}
```

## Fields

- `journal_version: u32` — Journal format version.
- `model: String` — Model used to generate the mapped entries.
- `prompt_version: u32` — Version of the prompt used to generate the mapped entries.
- `artifact_root: String` — Root identifier for the mapped source artifacts.
- `fingerprint: String` — Fingerprint derived from the model, prompt version, and artifact root.

## Associated Functions

```rust
pub fn new(
    model: impl Into<String>,
    prompt_version: u32,
    artifact_root: impl Into<String>,
) -> Self
```

Creates a header and computes its compatibility fingerprint. The constructor initializes `journal_version` as part of creating the header.

## Trait Implementations

`JournalHeader` implements the following traits:

- `Clone`
  - `fn clone(&self) -> Self`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result`
- `Deserialize<'de>`
  - `fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>`
  - `where D: Deserializer<'de>`
- `Eq`
- `PartialEq`
  - `fn eq(&self, other: &Self) -> bool`
  - `fn ne(&self, other: &Self) -> bool`
- `Serialize`
  - `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>`
  - `where S: Serializer`
- `StructuralPartialEq`

## Auto Traits

`JournalHeader` implements these auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The documentation also lists blanket implementations for `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `DeserializeOwned`, `Equivalent`, `From`, `Instrument`, `Into`, `PolicyExt`, `ToOwned`, `TryFrom`, `TryInto`, and `WithSubscriber`.
