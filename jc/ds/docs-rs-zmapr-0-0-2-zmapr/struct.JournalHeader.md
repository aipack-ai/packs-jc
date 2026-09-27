# `JournalHeader`

`JournalHeader` identifies the model, prompt, and artifact root used for a journal.

## Struct Definition

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

### `new`

Creates a header and computes its compatibility fingerprint.

```rust
pub fn new(
    model: impl Into<String>,
    prompt_version: u32,
    artifact_root: impl Into<String>,
) -> Self
```

## Trait Implementations

`JournalHeader` implements `Clone`, `Debug`, `Eq`, `PartialEq`, `Serialize`, and `Deserialize`.
