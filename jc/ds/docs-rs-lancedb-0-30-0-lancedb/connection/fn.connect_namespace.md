# Function `connect_namespace`

In [lancedb::connection](index.html)

**Source:** [src/lancedb/connection.rs.html#1121-1126](../../src/lancedb/connection.rs.html#1121-1126)

## Signature

```rust
pub fn connect_namespace(
    ns_impl: &str,
    properties: HashMap<String, String>,
) -> ConnectNamespaceBuilder
```

## Description

Connect to a LanceDB database through a namespace.

## Arguments

- `ns_impl` - The namespace implementation to use (e.g., "dir" for directory-based, "rest" for REST API)
- `properties` - Configuration properties for the namespace implementation
