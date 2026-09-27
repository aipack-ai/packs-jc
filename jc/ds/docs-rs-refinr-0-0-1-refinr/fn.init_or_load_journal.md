# `init_or_load_journal`

Crate: [`refinr`](../refinr/index.html) 0.0.1

## Function signature

```rust
pub fn init_or_load_journal(
    path: impl AsRef<Path>,
    expected_header: &JournalHeader,
) -> Result<(JournalReuseIndex, JournalAppender)>
```

## Description

Loads a compatible journal and opens its appender, creating a fresh journal when needed.

A malformed final record is discarded during recovery. A malformed record before the final line is reported as an invalid cache.

[View source](../src/refinr/mapr/mapr_journal.rs.html#157-181)
