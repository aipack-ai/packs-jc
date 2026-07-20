# NamespaceClientPushdownOperation

In `lancedb::connection`

[Source](../../src/lancedb/connection.rs.html#952-958)

```rust
pub enum NamespaceClientPushdownOperation {
    QueryTable,
    CreateTable,
}
```

Operations that can be pushed down to the namespace server.

These operations will be executed on the namespace server instead of locally when enabled via [`ConnectNamespaceBuilder::pushdown_operations`](struct.ConnectNamespaceBuilder.html#method.pushdown_operations).

## Variants

- `QueryTable` — Execute queries on the namespace server via `query_table()` instead of locally.
- `CreateTable` — Execute table creation on the namespace server via `create_table()` instead of using `declare_table` + local write.

## Trait Implementations

### `Clone`

[Source](../../src/lancedb/connection.rs.html#951)

```rust
fn clone(&self) -> NamespaceClientPushdownOperation
fn clone_from(&mut self, source: &Self)
```

### `Debug`

[Source](../../src/lancedb/connection.rs.html#951)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `Hash`

[Source](../../src/lancedb/connection.rs.html#951)

```rust
fn hash<__H: Hasher>(&self, state: &mut __H)
fn hash_slice(data: &[Self], state: &mut H) where H: Hasher, Self: Sized
```

### `PartialEq`

[Source](../../src/lancedb/connection.rs.html#951)

```rust
fn eq(&self, other: &NamespaceClientPushdownOperation) -> bool
fn ne(&self, other: &Rhs) -> bool
```

### `Copy`

### `Eq`

### `StructuralPartialEq`

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

For a complete list of blanket trait implementations (e.g., `Any`, `Borrow`, `From`, `Into`, `TryFrom`, `TryInto`, etc.) and their associated types and methods, please refer to the [original documentation](#).
