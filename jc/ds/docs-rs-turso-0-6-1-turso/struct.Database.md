# Database

Struct in turso 0.6.1

```text
pub struct Database { /* private fields */ }
```

A database. The `Database` object points to a database and allows you to connect to it.

## Implementations

### `impl Database`

- **`pub fn connect(&self) -> Result<Connection>`** — Connect to the database.

## Trait Implementations

### `impl Clone for Database`

- **`fn clone(&self) -> Database`** — Returns a duplicate of the value.

### `impl Debug for Database`

- **`fn fmt(&self, f: &mut Formatter<'_>) -> Result`** — Formats the value using the given formatter.
