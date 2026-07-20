# connect

Function `lancedb::connection::connect`

## Signature

```rust
pub fn connect(uri: &str) -> ConnectBuilder
```

## Description

Connect to a LanceDB database.

## Arguments

- `uri` - URI where the database is located, can be a local directory, supported remote cloud storage, or a LanceDB Cloud database. See ConnectOptions::uri for a list of accepted formats.
