# `load_journal` in zmapr

## Function

```rust
pub fn load_journal(
    path: impl AsRef<Path>,
    expected_fingerprint: &str,
    expected_version: u32,
) -> Result<Option<JournalReuseIndex>>
```

[Source](../src/zmapr/mapr/mapr_journal.rs.html#187-229)

Loads reusable entries when the journal matches the expected fingerprint and version.

Missing, empty, incompatible, or unusable journals return `Ok(None)`. A malformed final line is ignored, while malformed earlier lines return an invalid-cache error.
