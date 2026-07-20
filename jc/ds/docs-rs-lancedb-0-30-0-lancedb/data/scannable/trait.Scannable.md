# Scannable

This page documents the `Scannable` trait from the `lancedb::data::scannable` module. The trait defines an interface for scanning data as a stream of record batches, with optional hints for re-scanning.

```rust
// Source: lancedb/data/scannable.rs lines 28-58
pub trait Scannable: Send {
    // Required methods
    fn schema(&self) -> SchemaRef;
    fn scan_as_stream(&mut self) -> SendableRecordBatchStream;

    // Provided methods
    fn num_rows(&self) -> Option<usize> { ... }
    fn rescannable(&self) -> bool { ... }
}
```

## Required Methods

### `schema`

```rust
fn schema(&self) -> SchemaRef;
```
Returns the schema of the data.

### `scan_as_stream`

```rust
fn scan_as_stream(&mut self) -> SendableRecordBatchStream;
```
Read data as a stream of record batches. For rescannable sources (in-memory data like `RecordBatch`, `Vec`), this can be called multiple times and returns cloned data each time. For non-rescannable sources (streams, readers), this can only be called once – calling it a second time returns a stream whose first item is an error.

## Provided Methods

### `num_rows`

```rust
fn num_rows(&self) -> Option<usize>;
```
Optional hint about the number of rows. When available, this allows the pipeline to estimate total data size and choose appropriate partitioning.

### `rescannable`

```rust
fn rescannable(&self) -> bool;
```
Whether the source can be re-read from the beginning. Returns `true` for in-memory data (Tables, DataFrames) and disk-based sources (Datasets). Returns `false` for streaming sources (DuckDB results, network streams). When true, the pipeline can retry failed writes by rescanning.

## Trait Implementations

### `impl Debug for dyn Scannable`

```rust
impl Debug for dyn Scannable {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

### `impl StreamingWriteSource for Box<dyn Scannable>`

```rust
impl StreamingWriteSource for Box<dyn Scannable> {
    fn arrow_schema(&self) -> SchemaRef;
    fn into_stream(self) -> SendableRecordBatchStream;
    fn into_stream_and_schema<'async_trait>(self) -> Pin<Box<dyn Future<...> + Send + 'async_trait>>
        where Self: Sized + 'async_trait;
}
```

## Implementations on Foreign Types

### `impl Scannable for Box<dyn RecordBatchReader + Send>`

```rust
impl Scannable for Box<dyn RecordBatchReader + Send> {
    fn schema(&self) -> SchemaRef;
    fn scan_as_stream(&mut self) -> SendableRecordBatchStream;
}
```

### `impl Scannable for Vec<RecordBatch>`

```rust
impl Scannable for Vec<RecordBatch> {
    fn schema(&self) -> SchemaRef;
    fn scan_as_stream(&mut self) -> SendableRecordBatchStream;
    fn num_rows(&self) -> Option<usize>;
    fn rescannable(&self) -> bool;
}
```

### `impl Scannable for RecordBatch`

```rust
impl Scannable for RecordBatch {
    fn schema(&self) -> SchemaRef;
    fn scan_as_stream(&mut self) -> SendableRecordBatchStream;
    fn num_rows(&self) -> Option<usize>;
    fn rescannable(&self) -> bool;
}
```

## Implementors

### `impl Scannable for WithEmbeddingsScannable`

Details available in the source file `lancedb/data/scannable.rs` lines 251-319.

### `impl Scannable for SendableRecordBatchStream`

```rust
impl Scannable for Pin<Box<dyn RecordBatchStream + Send>> { ... }
```

*(Note: The full implementation details for these implementors are available in the source code.)*
