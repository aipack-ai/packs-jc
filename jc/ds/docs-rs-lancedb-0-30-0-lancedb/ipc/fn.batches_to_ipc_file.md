# batches_to_ipc_file

In `lancedb::ipc`: Convert record batches to Arrow IPC file.

## Signature

```text
pub fn batches_to_ipc_file(
    batches: &[RecordBatch],
) -> Result<Vec<u8>>
```

- **Source**: [src/ipc.rs lines 22-36](https://github.com/lancedb/lancedb/blob/0.30.0/src/ipc.rs#L22-L36)

## Description

Convert record batches to Arrow IPC file.
