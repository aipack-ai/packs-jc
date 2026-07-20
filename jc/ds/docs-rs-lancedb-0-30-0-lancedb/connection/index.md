# lancedb::connection - Rust

[Skip to main content](#main-content)

## Module connection

[lancedb](../../lancedb/index.html) 0.30.0

## Module connection

### Module Items

- [Structs](#structs)
- [Enums](#enums)
- [Functions](#functions)

## In crate lancedb

[lancedb](../index.html)

# Module connection

[Source](../../src/lancedb/connection.rs.html#4-1528)

Expand description

Functions to establish a connection to a LanceDB database.

## Structs

- [CloneTableBuilder](struct.CloneTableBuilder.html "struct lancedb::connection::CloneTableBuilder") — Builder for cloning a table.
- [ConnectBuilder](struct.ConnectBuilder.html "struct lancedb::connection::ConnectBuilder")
- [ConnectNamespaceBuilder](struct.ConnectNamespaceBuilder.html "struct lancedb::connection::ConnectNamespaceBuilder")
- [ConnectRequest](struct.ConnectRequest.html "struct lancedb::connection::ConnectRequest") — A request to connect to a database.
- [Connection](struct.Connection.html "struct lancedb::connection::Connection") — A connection to LanceDB.
- [OpenTableBuilder](struct.OpenTableBuilder.html "struct lancedb::connection::OpenTableBuilder")
- [TableNamesBuilder](struct.TableNamesBuilder.html "struct lancedb::connection::TableNamesBuilder") — A builder for configuring a [`Connection::table_names`](struct.Connection.html#method.table_names "method lancedb::connection::Connection::table_names") operation.

## Enums

- [LanceFileVersion](enum.LanceFileVersion.html "enum lancedb::connection::LanceFileVersion") — Lance file version.
- [NamespaceClientPushdownOperation](enum.NamespaceClientPushdownOperation.html "enum lancedb::connection::NamespaceClientPushdownOperation") — Operations that can be pushed down to the namespace server.

## Functions

- [connect](fn.connect.html "fn lancedb::connection::connect") — Connect to a LanceDB database.
- [connect_namespace](fn.connect_namespace.html "fn lancedb::connection::connect_namespace") — Connect to a LanceDB database through a namespace.
