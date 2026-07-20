# lancedb::table::optimize

[Source](https://docs.rs/lancedb/0.30.0/src/lancedb/table/optimize.rs.html#4-731)

## Module optimize

**In `lancedb::table`**

[lancedb](../../index.html)::[table](../index.html)

### Description

Table optimization operations for compaction, pruning, and index optimization.

This module contains the implementation of optimization operations that help maintain good performance for LanceDB tables.

### Structs

- **[CompactionOptions](struct.CompactionOptions.html "struct lancedb::table::optimize::CompactionOptions")** – Options to be passed to [compact_files](https://docs.rs/lance/7.0.0/x86_64-unknown-linux-gnu/lance/dataset/optimize/fn.compact_files.html "fn lance::dataset::optimize::compact_files").

- **[OptimizeStats](struct.OptimizeStats.html "struct lancedb::table::optimize::OptimizeStats")** – Statistics about the optimization.

### Enums

- **[OptimizeAction](enum.OptimizeAction.html "enum lancedb::table::optimize::OptimizeAction")** – Optimize the dataset.

### Type Aliases

- **[Duration](type.Duration.html "type lancedb::table::optimize::Duration")** – Alias of [`TimeDelta`](https://docs.rs/chrono/0.4.44/x86_64-unknown-linux-gnu/chrono/time_delta/struct.TimeDelta.html "struct chrono::time_delta::TimeDelta").
