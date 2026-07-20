# Function wait_for_index

## Function Signature

```rust
pub async fn wait_for_index(
    table: &dyn lancedb::table::BaseTable,
    index_names: &[&str],
    timeout: std::time::Duration,
) -> lancedb::error::Result<()>
```

## Description

Poll the table using `list_indices()` and `index_stats()` until all of the indices have 0 un-indexed rows. Will return `Error::Timeout` if the columns are not fully indexed within the timeout.

**Source:** [src/lancedb/index/waiter.rs#16-89](../../../src/lancedb/index/waiter.rs.html#16-89)
