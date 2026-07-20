# Select in lancedb::query - Rust

## Enum `Select`

**Source:** [lancedb/src/query.rs.html#40-73](https://github.com/lancedb/lancedb/blob/main/lancedb/src/query.rs#L40-L73)

```rust
pub enum Select {
    All,
    Columns(Vec<String>),
    Dynamic(Vec<(String, String)>),
    Expr(Vec<(String, DfExpr)>),
}
```

## Description

Which columns should be retrieved from the database.

## Variants

- `All` – Select all non-system columns. Warning: This will always be slower than selecting only the columns you need.
- `Columns(Vec<String>)` – Select the provided columns.
- `Dynamic(Vec<(String, String)>)` – Advanced selection which allows for dynamic column calculations. The first item in each tuple is a name to assign to the output column. The second item is an SQL expression to evaluate the result. See `Query::select` for more details and examples.
- `Expr(Vec<(String, DfExpr)>)` – Advanced selection using type-safe DataFusion expressions. Similar to `Dynamic` but uses `datafusion_expr::Expr` instead of raw SQL strings. For remote/server‑side queries the expressions are serialized to SQL strings automatically (same as `Dynamic`).

**Example using `Expr`:**

```rust
use lancedb::expr::{col, lit};
use lancedb::query::Select;
let selection = Select::expr_projection(&[
    ("id", col("id")),
    ("id2", col("id") * lit(2)),
]);
```

## Implementations

### `impl Select`

#### `pub fn columns(columns: &[impl AsRef<str>]) -> Self`

Create a simple selection that only selects the given columns. This method is a convenience method for creating a `Select::Columns` variant from either `Vec<&str>` or `Vec<String>`.

#### `pub fn dynamic(columns: &[(impl AsRef<str>, impl AsRef<str>)]) -> Self`

Create a dynamic selection that allows for advanced column selection. This method is a convenience method for creating a `Select::Dynamic` variant from either `&str` or `String` tuples.

#### `pub fn expr_projection(columns: &[(impl AsRef<str>, DfExpr)]) -> Self`

Create a typed-expression projection. This is a convenience method for creating a `Select::Expr` variant from a slice of `(name, expr)` pairs where each `expr` is a `datafusion_expr::Expr`.

**Example:**

```rust
use lancedb::expr::{col, lit};
use lancedb::query::Select;
let selection = Select::expr_projection(&[
    ("id", col("id")),
    ("id2", col("id") * lit(2)),
]);
```

## Trait Implementations

- `Clone`
  - `fn clone(&self) -> Select`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

## Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

- `Any` (for `T: 'static + ?Sized`)
- `ArchivePointee`
- `Borrow<T>` (for `T: ?Sized`)
- `BorrowMut<T>` (for `T: ?Sized`)
- `CloneToUninit` (for `T: Clone`)
- `Conv`
- `DropFlavorWrapper<T>`
- `DynClone` (for `T: Clone`)
- `ErasedDestructor` (for `T: 'static`)
- `FmtForward`
- `From<T>`
- `FromRef<T>` (for `T: Clone`)
- `HasTypeWitness<W>` (for `W: MakeTypeWitness, T: ?Sized`)
- `Identity` (for `T: ?Sized`)
- `Instrument`
- `Into<U>` (for `U: From<T>`)
- `IntoEither`
- `IntoShared<Shared>` (for unshared types)
- `LayoutRaw`
- `MaybeSend` (for `T: Send`)
- `Niching<NichedOption<T, N1>>` (for `T: SharedNiching, N1, N2: Niching`)
- `Pipe` (for `T: ?Sized`)
- `Pointable`
- `Pointee`
- `PolicyExt` (for `T: ?Sized`)
- `ResultError` (for `E: Send + Debug + Sync`)
- `ResultType` (for `T: Send + Clone + Sync + Debug`)
- `Same`
- `Tap` (for `T: ?Sized`)
- `ToOwned` (for `T: Clone`)
- `TryConv`
- `TryFrom<U>` (for `U: Into<T>`)
- `TryInto<U>` (for `U: TryFrom<T>`)
- `TryInto<U>` (async) (for `U: TryFrom<T>`)
- `VZip<V>` (for `V: MultiLane`)
- `WithSubscriber`
