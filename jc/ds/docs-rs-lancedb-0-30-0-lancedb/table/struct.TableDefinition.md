# TableDefinition in lancedb::table - Rust

## [TableDefinition](#)

In [lancedb::table](index.html)

`lancedb 0.30.0`

### Struct Definition

[Source](../../src/lancedb/table.rs.html#163-166)

```rust
pub struct TableDefinition {
    pub column_definitions: Vec<ColumnDefinition>,
    pub schema: SchemaRef,
}
```

### Fields

- `column_definitions: Vec<ColumnDefinition>`
- `schema: SchemaRef`

### Implementations

#### `impl TableDefinition`

[Source](../../src/lancedb/table.rs.html#168-217)

```rust
pub fn new(schema: SchemaRef, column_definitions: Vec<ColumnDefinition>) -> Self
```

```rust
pub fn new_from_schema(schema: SchemaRef) -> Self
```

```rust
pub fn try_from_rich_schema(schema: SchemaRef) -> Result
```

```rust
pub fn into_rich_schema(self) -> SchemaRef
```

### Trait Implementations

#### `impl Clone for TableDefinition`

[Source](../../src/lancedb/table.rs.html#162)

```rust
fn clone(&self) -> TableDefinition
```

```rust
fn clone_from(&mut self, source: &Self)
```

#### `impl Debug for TableDefinition`

[Source](../../src/lancedb/table.rs.html#162)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### Auto Trait Implementations

- `impl Freeze for TableDefinition`
- `impl RefUnwindSafe for TableDefinition`
- `impl Send for TableDefinition`
- `impl Sync for TableDefinition`
- `impl Unpin for TableDefinition`
- `impl UnsafeUnpin for TableDefinition`
- `impl UnwindSafe for TableDefinition`

### Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
- `impl ArchivePointee for T`
- `impl Borrow<T> for T`
- `impl BorrowMut<T> for T`
- `impl CloneToUninit for T`
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T`
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl FromRef<T> for T`
- `impl HasTypeWitness<W> for T`
- `impl Identity for T`
- `impl Instrument for T`
- `impl Into<U> for T`
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared`
- `impl LayoutRaw for T`
- `impl Niching<NichedOption<T, N1>> for N2`
- `impl Pipe for T`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T`
- `impl ResultError for E`
- `impl ResultType for T`
- `impl Same for T`
- `impl Tap for T`
- `impl ToOwned for T`
- `impl TryConv for T`
- `impl TryFrom<U> for T`
- `impl TryInto<U> for T`
- `impl VZip<V> for T`
- `impl WithSubscriber for T`
- `impl Allocation for T` where `T: RefUnwindSafe + Send + Sync`
- `impl ErasedDestructor for T`
- `impl MaybeSend for T`
