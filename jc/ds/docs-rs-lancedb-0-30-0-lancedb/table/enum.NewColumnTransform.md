# NewColumnTransform in lancedb::table

In [lancedb](../index.html)::[table](index.html) – Enum `NewColumnTransform`  
[Source](https://docs.rs/lance/7.0.0/x86_64-unknown-linux-gnu/src/lance/dataset/schema_evolution.rs.html#93)

```rust
pub enum NewColumnTransform {
    BatchUDF(
            BatchUDF),
    SqlExpressions(
            Vec<(String, String)>),
    Stream(
            Pin<Box<dyn RecordBatchStreamResult<RecordBatch, DataFusionError> + Send>>),
    Reader(
            Box<dyn RecordBatchReaderResult<RecordBatch, ArrowError> + Send>),
    AllNulls(
            Arc<Schema>),
}
```

**Expand description**  
A way to define one or more new columns in a dataset.

## Variants

### `BatchUDF(BatchUDF)`
A UDF that takes a `RecordBatch` of existing data and returns a `RecordBatch` with the new columns for those corresponding rows. The returned batch must return the same number of rows as the input batch.

### `SqlExpressions(Vec<(String, String)>)`
A set of SQL expressions that define new columns.

### `Stream(Pin<Box<dyn RecordBatchStreamResult<RecordBatch, DataFusionError> + Send>>)`
A stream of `RecordBatch`es that define new columns.

### `Reader(Box<dyn RecordBatchReaderResult<RecordBatch, ArrowError> + Send>)`
An iterator of `RecordBatch`es that define new columns.

### `AllNulls(Arc<Schema>)`
Add new columns that are initially all null.

## Auto Trait Implementations

- `Freeze` for `NewColumnTransform`
- `!RefUnwindSafe` for `NewColumnTransform`
- `Send` for `NewColumnTransform`
- `!Sync` for `NewColumnTransform`
- `Unpin` for `NewColumnTransform`
- `UnsafeUnpin` for `NewColumnTransform`
- `!UnwindSafe` for `NewColumnTransform`

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
- `IntoShared<Shared>` for `Unshared`  
- `LayoutRaw`  
- `MaybeSend` (two impls)  
- `Niching<NichedOption<T, N1>>` for `N2`  
- `Pipe`  
- `Pointable`  
- `Pointee`  
- `PolicyExt`  
- `Same`  
- `Tap`  
- `TryConv`  
- `TryFrom<U>`  
- `TryInto<U>` (two impls)  
- `VZip<V>`  
- `WithSubscriber`
