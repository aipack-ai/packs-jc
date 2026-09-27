# `compute_journal_fingerprint`

Crate: [`refinr`](../refinr/index.html) 0.0.1

## Function

[View source](../src/refinr/mapr/mapr_journal.rs.html#127-130)

```rust
pub fn compute_journal_fingerprint(
    model: &str,
    prompt_version: u32,
    artifact_root: &str,
) -> String
```

Computes the journal fingerprint for a model, prompt version, and artifact root.
