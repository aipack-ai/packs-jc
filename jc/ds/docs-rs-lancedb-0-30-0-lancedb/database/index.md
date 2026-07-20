# lancedb::database

[Source](../../src/lancedb/database.rs.html#4-277)

The database module defines the `Database` trait and related types.

A “database” is a generic concept for something that manages tables and their metadata.

We provide a basic implementation of a database that requires no additional infrastructure and is based off listing directories in a filesystem.

Users may want to provider their own implementations for a variety of reasons:

- Tables may be arranged in a different order on the S3 filesystem
- Tables may be managed by some kind of independent application (e.g. some database)
- Tables may be managed by a database system (e.g. Postgres)
- A custom table implementation (e.g. remote table, etc.) may be used

## Modules

- [listing](listing/index.html "mod lancedb::database::listing") - Provides the `ListingDatabase`, a simple database where tables are folders in a directory
- [namespace](namespace/index.html "mod lancedb::database::namespace") - Namespace-based database implementation that delegates table management to lance-namespace

## Structs

- [CloneTableRequest](struct.CloneTableRequest.html "struct lancedb::database::CloneTableRequest") - Request to clone a table from a source table.
- [CreateTableRequest](struct.CreateTableRequest.html "struct lancedb::database::CreateTableRequest") - A request to create a table
- [OpenTableRequest](struct.OpenTableRequest.html "struct lancedb::database::OpenTableRequest") - A request to open a table
- [TableNamesRequest](struct.TableNamesRequest.html "struct lancedb::database::TableNamesRequest") - A request to list names of tables in the database (deprecated, use ListTablesRequest)

## Enums

- [CreateTableMode](enum.CreateTableMode.html "enum lancedb::database::CreateTableMode") - Describes what happens when creating a table and a table with the same name already exists
- [ReadConsistency](enum.ReadConsistency.html "enum lancedb::database::ReadConsistency") - How long until a change is reflected from one Table instance to another

## Traits

- [Database](trait.Database.html "trait lancedb::database::Database") - The `Database` trait defines the interface for database implementations.
- [DatabaseOptions](trait.DatabaseOptions.html "trait lancedb::database::DatabaseOptions") - (no description available)

## Type Aliases

- [TableBuilderCallback](type.TableBuilderCallback.html "type lancedb::database::TableBuilderCallback") - (no description available)
