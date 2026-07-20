# lancedb::table::write_progress

Progress monitoring for write operations.

You can add a callback to process progress in [`crate::table::AddDataBuilder::progress`](`https://docs.rs/lancedb/0.30.0/lancedb/table/struct.AddDataBuilder.html#method.progress`). [`WriteProgress`](struct.WriteProgress.html) is the struct passed to the callback.

## Structs

- [WriteProgress](struct.WriteProgress.html) – Progress snapshot for a write operation.

## Type Aliases

- [ProgressCallback](type.ProgressCallback.html) – Callback type for progress updates.
