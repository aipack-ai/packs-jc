# turso - Rust

## Crate turso

[Source](../src/turso/lib.rs.html#1-858)

Expand description

## Turso bindings for Rust

Turso is an in-process SQL database engine, compatible with SQLite.

### Getting Started

To get started, you first need to create a [`Database`](struct.Database.html "struct turso::Database") object and then open a [`Connection`](connection/struct.Connection.html "struct turso::connection::Connection") to it, which you use to query:

```text
use turso::Builder;
let db = Builder::new_local(":memory:").build().await.unwrap();
let conn = db.connect().unwrap();
conn.execute("CREATE TABLE IF NOT EXISTS users (email TEXT)", ()).await.unwrap();
conn.execute("INSERT INTO users (email) VALUES ('alice@example.org')", ()).await.unwrap();
```

You can also prepare statements with the [`Connection`](connection/struct.Connection.html "struct turso::connection::Connection") object and then execute the [`Statement`](struct.Statement.html "struct turso::Statement") objects:

```text
let mut stmt = conn.prepare("SELECT * FROM users WHERE email = ?1").await.unwrap();
let mut rows = stmt.query(["foo@example.com"]).await.unwrap();
let row = rows.next().await.unwrap().unwrap();
let value = row.get_value(0).unwrap();
println!("Row: {:?}", value);
```

## Re-exports

`pub use connection::[Connection](connection/struct.Connection.html "struct turso::connection::Connection");`

`pub use value::[Value](value/enum.Value.html "enum turso::value::Value");`

`pub use params::[params_from_iter](params/fn.params_from_iter.html "fn turso::params::params_from_iter");`

`pub use params::[IntoParams](params/trait.IntoParams.html "trait turso::params::IntoParams");`

`pub use [turso_core](https://docs.rs/turso_core/0.6.1/x86_64-unknown-linux-gnu/turso_core/index.html "mod turso_core") as core;`

## Modules

- [connection](connection/index.html "mod turso::connection")
- [params](params/index.html "mod turso::params") - This module contains all `Param` related utilities and traits.
- [transaction](transaction/index.html "mod turso::transaction")
- [value](value/index.html "mod turso::value")

## Macros

- [named\_params](macro.named_params.html "macro turso::named_params") - Construct named params from a heterogeneous set of params types.
- [params](macro.params.html "macro turso::params") - Construct positional params from a heterogeneous set of params types.

## Structs

- [Builder](struct.Builder.html "struct turso::Builder") - A builder for `Database`.
- [Column](struct.Column.html "struct turso::Column") - Column information.
- [Database](struct.Database.html "struct turso::Database") - A database.
- [Row](struct.Row.html "struct turso::Row") - Query result row.
- [Rows](struct.Rows.html "struct turso::Rows") - Results of a prepared statement query.
- [Statement](struct.Statement.html "struct turso::Statement") - A prepared statement.
- [Transaction](struct.Transaction.html "struct turso::Transaction")

## Enums

- [Error](enum.Error.html "enum turso::Error")
- [Params](enum.Params.html "enum turso::Params")

## Traits

- [IntoValue](trait.IntoValue.html "trait turso::IntoValue")

## Type Aliases

- [EncryptionOpts](type.EncryptionOpts.html "type turso::EncryptionOpts")
- [Result](type.Result.html "type turso::Result")
