# lancedb::data::scannable

Data source abstraction for LanceDB.

This module provides a [`Scannable`](trait.Scannable.html) trait that allows input data sources to express capabilities (row count, rescannability) so the insert pipeline can make better decisions about write parallelism and retry strategies.

## Structs

- [WithEmbeddingsScannable](struct.WithEmbeddingsScannable.html) - A scannable that applies embeddings to the stream.

## Traits

- [Scannable](trait.Scannable.html)

## Functions

- [scannable_with_embeddings](fn.scannable_with_embeddings.html)
