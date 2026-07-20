# lancedb::query - Rust

## Module query

Source: [View source](../../src/lancedb/query.rs.html#4-2455)

### Structs

- [ColumnOrdering](struct.ColumnOrdering.html) - Re-export Lance ColumnOrdering type for use in query ordering. Defines an ordering for a single column.
- [Query](struct.Query.html) - A builder for LanceDB queries.
- [QueryExecutionOptions](struct.QueryExecutionOptions.html) - Options for controlling the execution of a query.
- [QueryRequest](struct.QueryRequest.html) - A basic query into a table without any kind of search.
- [TakeQuery](struct.TakeQuery.html) - A builder for LanceDB take queries.
- [VectorQuery](struct.VectorQuery.html) - A builder for vector searches.
- [VectorQueryRequest](struct.VectorQueryRequest.html) - A request for a nearest-neighbors search into a table.

### Enums

- [QueryFilter](enum.QueryFilter.html) - A query filter that can be applied to a query.
- [Select](enum.Select.html) - Which columns should be retrieved from the database.

### Traits

- [ExecutableQuery](trait.ExecutableQuery.html) - A trait for a query object that can be executed to get results.
- [HasQuery](trait.HasQuery.html) - (no description provided)
- [IntoQueryVector](trait.IntoQueryVector.html) - A trait for converting a type to a query vector.
- [QueryBase](trait.QueryBase.html) - Common parameters that can be applied to scans and vector queries.
