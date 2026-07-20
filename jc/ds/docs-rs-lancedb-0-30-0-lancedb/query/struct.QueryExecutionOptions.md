# QueryExecutionOptions

## Struct QueryExecutionOptions

Options for controlling the execution of a query.

```text
#[non_exhaustive]
pub struct QueryExecutionOptions {
    pub max_batch_length: u32,
    pub timeout: Option<Duration>,
}
```

### Fields

- `max_batch_length: u32`  
  The maximum number of rows that will be contained in a single `RecordBatch` delivered by the query.  
  Note: This is a maximum only. The query may return smaller batches.  
  Default: 1024.

- `timeout: Option<Duration>`  
  Max duration to wait for the query to execute before timing out.

## Trait Implementations

### Clone

```text
fn clone(&self) -> QueryExecutionOptions
fn clone_from(&mut self, source: &Self)
```

### Debug

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### Default

```text
fn default() -> Self
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation` (requires `RefUnwindSafe + Send + Sync`)
- `Any` (requires `'static + ?Sized`)
- `ArchivePointee`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit` (requires `Clone`)
- `Conv`
- `DropFlavorWrapper`
- `DynClone` (requires `Clone`)
- `ErasedDestructor` (requires `'static`)
- `FmtForward`
- `From<T>`
- `FromRef<T>` (requires `Clone`)
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
- `ResultError`
- `ResultType`
- `Same`
- `Tap`
- `ToOwned` (requires `Clone`)
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>` (two implementations)
- `VZip<V>`
- `WithSubscriber`
