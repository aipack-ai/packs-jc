# `compute_journal_fingerprint`

## Function

[Source](../src/zmapr/mapr/mapr_journal.rs.html#127-130)

```rust
pub fn compute_journal_fingerprint(
    model: &str,
    prompt_version: u32,
    artifact_root: &str,
) -> String
```

Computes the journal fingerprint for a model, prompt version, and artifact root.
