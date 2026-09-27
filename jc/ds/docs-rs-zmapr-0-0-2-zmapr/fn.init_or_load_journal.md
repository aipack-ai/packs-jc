# `init_or_load_journal`

## Function

```rust
pub fn init_or_load_journal(
    path: impl AsRef<Path>,
    expected_header: &JournalHeader,
) -> Result<(JournalReuseIndex, JournalAppender)>
```

Loads a compatible journal and opens its appender, creating a fresh journal when needed.

A malformed final record is discarded during recovery. A malformed record before the final line is reported as an invalid cache.

[Source](../src/zmapr/mapr/mapr_journal.rs.html#157-181)
