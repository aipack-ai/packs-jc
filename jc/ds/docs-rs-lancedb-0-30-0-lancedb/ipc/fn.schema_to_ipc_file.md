# schema_to_ipc_file in lancedb::ipc

Function `schema_to_ipc_file` - [Source](https://docs.rs/lancedb/0.30.0/src/lancedb/ipc.rs.html#39-43)

```text
pub fn schema_to_ipc_file(schema: &Schema) -> Result<Vec<u8>>
```

- **Description**: Convert a schema to an Arrow IPC file with 0 batches.
