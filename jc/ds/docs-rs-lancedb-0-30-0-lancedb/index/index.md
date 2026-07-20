# lancedb::index - Rust

## Module index

In crate [lancedb](../index.html)

Source: [../../src/lancedb/index.rs.html#4-409]

### Modules
- [scalar](scalar/index.html "mod lancedb::index::scalar") - Scalar indices are exact indices that are used to quickly satisfy a variety of filters against a column of scalar values.
- [vector](vector/index.html "mod lancedb::index::vector") - Vector indices are approximate indices that are used to find rows similar to a query vector. Vector indices speed up vector searches.
- [waiter](waiter/index.html "mod lancedb::index::waiter")

### Structs
- [IndexBuilder](struct.IndexBuilder.html "struct lancedb::index::IndexBuilder") - Builder for the create\_index operation
- [IndexConfig](struct.IndexConfig.html "struct lancedb::index::IndexConfig") - A description of an index currently configured on a column
- [IndexStatistics](struct.IndexStatistics.html "struct lancedb::index::IndexStatistics")

### Enums
- [Index](enum.Index.html "enum lancedb::index::Index") - Supported index types.
- [IndexType](enum.IndexType.html "enum lancedb::index::IndexType")
