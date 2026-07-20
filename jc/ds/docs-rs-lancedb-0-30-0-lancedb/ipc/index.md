# lancedb::ipc

Module documentation for `lancedb::ipc` (IPC support) in the LanceDB crate, version 0.30.0.

IPC support

## Functions

- `fn batches_to_ipc_file(...)` - Convert record batches to Arrow IPC file.
- `fn ipc_file_to_batches(...)` - Convert an Arrow IPC file to a batch reader.
- `fn ipc_file_to_schema(...)` - Retrieve the schema from an Arrow IPC file.
- `fn schema_to_ipc_file(...)` - Convert a schema to an Arrow IPC file with 0 batches.
