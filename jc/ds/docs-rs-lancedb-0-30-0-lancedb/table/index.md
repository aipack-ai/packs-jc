# lancedb::table - Rust

LanceDB Table APIs

## Re-exports

```text
pub use query::[AnyQuery](query/enum.AnyQuery.html "enum lancedb::table::query::AnyQuery");
pub use delete::[DeleteResult](delete/struct.DeleteResult.html "struct lancedb::table::delete::DeleteResult");
pub use optimize::[OptimizeAction](optimize/enum.OptimizeAction.html "enum lancedb::table::optimize::OptimizeAction");
pub use optimize::[OptimizeStats](optimize/struct.OptimizeStats.html "struct lancedb::table::optimize::OptimizeStats");
pub use schema_evolution::[AddColumnsResult](schema_evolution/struct.AddColumnsResult.html "struct lancedb::table::schema_evolution::AddColumnsResult");
pub use schema_evolution::[AlterColumnsResult](schema_evolution/struct.AlterColumnsResult.html "struct lancedb::table::schema_evolution::AlterColumnsResult");
pub use schema_evolution::[DropColumnsResult](schema_evolution/struct.DropColumnsResult.html "struct lancedb::table::schema_evolution::DropColumnsResult");
pub use update::[UpdateBuilder](update/struct.UpdateBuilder.html "struct lancedb::table::update::UpdateBuilder");
pub use update::[UpdateResult](update/struct.UpdateResult.html "struct lancedb::table::update::UpdateResult");
pub use self::merge::[MergeResult](merge/struct.MergeResult.html "struct lancedb::table::merge::MergeResult");
```

## Modules

- [datafusion](datafusion/index.html) - This module contains adapters to allow LanceDB tables to be used as DataFusion table providers.
- [delete](delete/index.html)
- [merge](merge/index.html)
- [optimize](optimize/index.html) - Table optimization operations for compaction, pruning, and index optimization.
- [query](query/index.html)
- [schema_evolution](schema_evolution/index.html) - Schema evolution operations for LanceDB tables.
- [update](update/index.html)
- [write_progress](write_progress/index.html) - Progress monitoring for write operations.

## Structs

- [AddDataBuilder](struct.AddDataBuilder.html) - A builder for configuring a [`crate::table::Table::add`](struct.Table.html#method.add) operation
- [AddResult](struct.AddResult.html)
- [ColumnAlteration](struct.ColumnAlteration.html) - Definition of a change to a column in a dataset
- [ColumnDefinition](struct.ColumnDefinition.html) - Defines a column in a table
- [CompactionOptions](struct.CompactionOptions.html) - Options to be passed to [compact_files](https://docs.rs/lance/7.0.0/x86_64-unknown-linux-gnu/lance/dataset/optimize/fn.compact_files.html)
- [DatasetRecordBatchStream](struct.DatasetRecordBatchStream.html) - Wraps the dataset into a [`RecordBatchStream`](https://docs.rs/lance-io/7.0.0/x86_64-unknown-linux-gnu/lance_io/stream/trait.RecordBatchStream.html) for consumption by the user
- [FragmentStatistics](struct.FragmentStatistics.html)
- [FragmentSummaryStats](struct.FragmentSummaryStats.html)
- [LanceTags](struct.LanceTags.html) - Tags operation
- [NativeTable](struct.NativeTable.html) - A table in a LanceDB database.
- [NativeTags](struct.NativeTags.html)
- [OptimizeOptions](struct.OptimizeOptions.html) - Options for optimizing all indices.
- [ReadParams](struct.ReadParams.html) - Customize read behavior of a dataset.
- [Table](struct.Table.html) - A Table is a collection of strong typed Rows.
- [TableDefinition](struct.TableDefinition.html)
- [TableStatistics](struct.TableStatistics.html)
- [TagContents](struct.TagContents.html)
- [Version](struct.Version.html) - Dataset Version
- [WriteOptions](struct.WriteOptions.html) - Options to use when writing data

## Enums

- [AddDataMode](enum.AddDataMode.html)
- [ColumnKind](enum.ColumnKind.html) - Defines the type of column
- [Filter](enum.Filter.html) - Filters that can be used to limit the rows returned by a query
- [LsmWriteSpec](enum.LsmWriteSpec.html) - Specification selecting Lance’s MemWAL LSM-style write path for `merge_insert`
- [NaNVectorBehavior](enum.NaNVectorBehavior.html)
- [NewColumnTransform](enum.NewColumnTransform.html) - A way to define one or more new columns in a dataset
- [Predicate](enum.Predicate.html) - A predicate for filtering rows in delete operations.

## Traits

- [BaseTable](trait.BaseTable.html) - A trait for anything “table-like”. This is used for both native tables (which target Lance datasets) and remote tables (which target LanceDB cloud)
- [NativeTableExt](trait.NativeTableExt.html)
- [Tags](trait.Tags.html)

## Type Aliases

- [Duration](type.Duration.html) - Alias of [`TimeDelta`](https://docs.rs/chrono/0.4.44/x86_64-unknown-linux-gnu/chrono/time_delta/struct.TimeDelta.html)
