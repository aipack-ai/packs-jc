# lancedb::index::vector - Rust

In lancedb::index

[Source](../../../src/lancedb/index/vector.rs.html#4-514)

Module vector

Vector indices are approximate indices that are used to find rows similar to a query vector. Vector indices speed up vector searches.

Vector indices are only supported on fixed-size-list (tensor) columns of floating point values

## Structs

- [IvfFlatIndexBuilder](struct.IvfFlatIndexBuilder.html) - Builder for an IVF Flat index.
- [IvfHnswFlatIndexBuilder](struct.IvfHnswFlatIndexBuilder.html) - Builder for an IVF\_HNSW\_FLAT index.
- [IvfHnswPqIndexBuilder](struct.IvfHnswPqIndexBuilder.html) - Builder for an IVF HNSW PQ index.
- [IvfHnswSqIndexBuilder](struct.IvfHnswSqIndexBuilder.html) - Builder for an IVF\_HNSW\_SQ index.
- [IvfPqIndexBuilder](struct.IvfPqIndexBuilder.html) - Builder for an IVF PQ index.
- [IvfRqIndexBuilder](struct.IvfRqIndexBuilder.html) - Builder for an IVF RQ index.
- [IvfSqIndexBuilder](struct.IvfSqIndexBuilder.html) - Builder for an IVF SQ index.
- [VectorIndex](struct.VectorIndex.html)
