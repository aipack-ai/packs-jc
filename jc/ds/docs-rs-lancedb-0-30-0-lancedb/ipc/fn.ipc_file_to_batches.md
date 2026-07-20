# `ipc_file_to_batches` in `lancedb::ipc`

**Source**: [ipc.rs lines 15–19](../../src/lancedb/ipc.rs.html#15-19)

## Function Signature

```text
pub fn ipc_file_to_batches(
    buf: Vec<u8>,
) -> Result<Box<dyn RecordBatchReader + Send>>
```

## Description

Convert an Arrow IPC file to a batch reader.
