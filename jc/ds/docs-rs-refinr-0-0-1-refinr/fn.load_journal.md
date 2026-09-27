# `load_journal`

`refinr` 0.0.1

## Function

```rust
pub fn load_journal(
    path: impl AsRef<Path>,
    expected_fingerprint: &str,
    expected_version: u32,
) -> refinr::Result<Option<JournalReuseIndex>>
```

## Description

Loads reusable entries when the journal matches the expected fingerprint and version.

Missing, empty, incompatible, or unusable journals return `Ok(None)`. A malformed final line is ignored, while malformed earlier lines return an invalid-cache error.

[View source](../src/refinr/mapr/mapr_journal.rs.html#187-229)
