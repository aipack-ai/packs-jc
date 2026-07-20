# WithEmbeddingsScannable

**Module:** `lancedb::data::scannable`

**Source:** [../../../src/lancedb/data/scannable.rs.html#200-204](https://docs.rs/crate/lancedb/0.30.0/src/lancedb/data/scannable.rs.html#200-204)

A scannable that applies embeddings to the stream.

## Implementations

### `impl WithEmbeddingsScannable`

#### `pub fn try_new`
```text
pub fn try_new(
    inner: Box<dyn Scannable>,
    embeddings: Vec<(EmbeddingDefinition, Arc<EmbeddingFunction>)>,
) -> Result
```
Create a new `WithEmbeddingsScannable`. The embeddings are applied to the inner scannable's data as new columns.

#### `pub fn with_schema`
```text
pub fn with_schema(
    inner: Box<dyn Scannable>,
    embeddings: Vec<(EmbeddingDefinition, Arc<EmbeddingFunction>)>,
    output_schema: SchemaRef,
) -> Result
```
Create a `WithEmbeddingsScannable` with a specific output schema. Use this when the table schema is already known (e.g. during add) to avoid nullability mismatches.

## Trait Implementations

### `impl Scannable for WithEmbeddingsScannable`

#### `fn schema`
```text
fn schema(&self) -> SchemaRef
```
Returns the schema of the data.

#### `fn scan_as_stream`
```text
fn scan_as_stream(&mut self) -> SendableRecordBatchStream
```
Read data as a stream of record batches.

#### `fn num_rows`
```text
fn num_rows(&self) -> Option<usize>
```
Optional hint about the number of rows.

#### `fn rescannable`
```text
fn rescannable(&self) -> bool
```
Whether the source can be re-read from the beginning.

## Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `!Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

- `Any`
- `ArchivePointee`
- `Borrow<T>`
- `BorrowMut<T>`
- `Conv`
- `DropFlavorWrapper<T>`
- `ErasedDestructor`
- `FmtForward`
- `From<T>`
- `HasTypeWitness<W>`
- `Identity`
- `Instrument`
- `Into<U>`
- `IntoEither`
- `IntoShared<Shared>`
- `LayoutRaw`
- `MaybeSend` (two implementations)
- `Niching<NichedOption<T, N1>>`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `Same`
- `Tap`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>` (two implementations)
- `VZip<V>`
- `WithSubscriber`
