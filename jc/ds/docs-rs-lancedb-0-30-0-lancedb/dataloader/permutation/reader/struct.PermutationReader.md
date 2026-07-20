# PermutationReader

**Location:** `lancedb::dataloader::permutation::reader`

Reads a permutation of a source table based on row IDs stored in a separate table.

## Struct Definition

```rust
pub struct PermutationReader { /* private fields */ }
```

## Associated Functions

### `inner_new`

```rust
pub async fn inner_new(
    base_table: Arc<BaseTable>,
    permutation_table: Option<Arc<BaseTable>>,
    split: u64,
) -> lancedb::error::Result<Self>
```

### `try_from_tables`

```rust
pub async fn try_from_tables(
    base_table: Arc<BaseTable>,
    permutation_table: Arc<BaseTable>,
    split: u64,
) -> lancedb::error::Result<Self>
```

### `identity`

```rust
pub async fn identity(base_table: Arc<BaseTable>) -> Self
```

## Methods

### `with_offset`

```rust
pub async fn with_offset(self, offset: u64) -> lancedb::error::Result<Self>
```

### `with_limit`

```rust
pub async fn with_limit(self, limit: u64) -> lancedb::error::Result<Self>
```

### `read`

```rust
pub async fn read(
    &self,
    selection: Select,
    execution_options: QueryExecutionOptions,
) -> lancedb::error::Result<SendableRecordBatchStream>
```

### `take_offsets`

```rust
pub async fn take_offsets(
    &self,
    offsets: &[u64],
    selection: Select,
) -> lancedb::error::Result<RecordBatch>
```

### `output_schema`

```rust
pub async fn output_schema(&self, selection: Select) -> lancedb::error::Result<SchemaRef>
```

### `count_rows`

```rust
pub fn count_rows(&self) -> u64
```

## Trait Implementations

### `impl Clone for PermutationReader`

```rust
fn clone(&self) -> PermutationReader
```

```rust
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for PermutationReader`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

## Auto Trait Implementations

- `impl Freeze for PermutationReader`
- `impl !RefUnwindSafe for PermutationReader`
- `impl Send for PermutationReader`
- `impl Sync for PermutationReader`
- `impl Unpin for PermutationReader`
- `impl UnsafeUnpin for PermutationReader`
- `impl !UnwindSafe for PermutationReader`

## Blanket Implementations (selected)

- `impl Any for T`
- `impl ArchivePointee for T`
- `impl Borrow<T> for T`
- `impl BorrowMut<T> for T`
- `impl CloneToUninit for T`
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T`
- `impl ErasedDestructor for T`
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
- `impl TryInto<U> for T` (async)
- `impl VZip<V> for T`
- `impl WithSubscriber for T`
- `impl MaybeSend for T` (two sources)
- `impl ErasedDestructor for T`
