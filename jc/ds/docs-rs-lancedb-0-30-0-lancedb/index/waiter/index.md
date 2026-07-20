# lancedb::index::waiter

[`lancedb`](../../lancedb/index.html) :: [`index`](../index.html)

[Source](../../../src/lancedb/index/waiter.rs.html#4-89)

## Functions

- [`wait_for_index`](fn.wait_for_index.html) — Poll the table using `list_indices()` and `index_stats()` until all of the indices have 0 un-indexed rows. Will return `Error::Timeout` if the columns are not fully indexed within the timeout.
