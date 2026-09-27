# `empty_journal`

Function in [`zmapr`](../zmapr/index.html) version 0.0.2.

## Signature

```rust
pub fn empty_journal(path: impl AsRef<Path>) -> Result<()>
```

- `path`: Path to the journal file.
- Returns `Result<()>`.

## Description

Truncates an existing journal file without removing it.

[View source](../src/zmapr/mapr/mapr_journal.rs.html#144-151)
