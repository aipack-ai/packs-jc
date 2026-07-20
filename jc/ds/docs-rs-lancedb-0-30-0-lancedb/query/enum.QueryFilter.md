# QueryFilter

## In `lancedb::query`

This enum represents a query filter that can be applied to a query.  
Source: `lancedb/src/query.rs` (lines 710–717)

### Definition

```text
pub enum QueryFilter {
    Sql(String),
    Substrait(Arc<[u8]>),
    Datafusion(Expr),
}
```

### Variants

- **`Sql(String)`** – The filter is an SQL string.
- **`Substrait(Arc<[u8]>)`** – The filter is a Substrait ExtendedExpression message with a single expression.
- **`Datafusion(Expr)`** – The filter is a Datafusion expression.

### Trait Implementations

**`Clone`** (source: same file, line 709)

- `fn clone(&self) -> QueryFilter`
- `fn clone_from(&mut self, source: &Self)`

**`Debug`** (source: same file, line 709)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

### Blanket Implementations (selected)

- `Any` (requires `'static + ?Sized`)
- `ArchivePointee` (from `rkyv`)
- `Borrow<T>` (requires `?Sized`)
- `BorrowMut<T>` (requires `?Sized`)
- `CloneToUninit` (requires `Clone`)
- `Conv` (from `tap`)
- `DropFlavorWrapper` (from `konst`)
- `DynClone` (requires `Clone`)
- `FmtForward` (from `wyz`)
- `From<T>`
- `FromRef<T>` (requires `Clone`)
- `HasTypeWitness<W>` (from `typewit`)
- `Identity` (from `typewit`)
- `Instrument` (from `tracing`)
- `Into<U>` (when `U: From<T>`)
- `IntoEither` (from `either`)
- `IntoShared<Shared>` (from `aws-smithy-runtime-api`)
- `LayoutRaw` (from `rkyv`)
- `Niching<NichedOption<T, N1>>` (from `rkyv`)
- `Pipe` (from `tap`)
- `Pointable` (from `crossbeam-epoch`)
- `Pointee` (from `ptr_meta`)
- `PolicyExt` (from `tower-http`)
- `ResultError` (from `xet-runtime`, requires `Send + Debug + Sync`)
- `ResultType` (from `xet-runtime`, requires `Send + Clone + Sync + Debug`)
- `Same` (from `typenum`)
- `Tap` (from `tap`)
- `ToOwned` (requires `Clone`)
- `TryConv` (from `tap`)
- `TryFrom<U>` (when `U: Into<T>`)
- `TryInto<U>` (when `U: TryFrom<T>`)
- `TryInto<U>` (from `async-convert`)
- `VZip<V>` (from `ppv-lite86`)
- `WithSubscriber` (from `tracing`)
- `ErasedDestructor` (requires `'static`)
- `MaybeSend` (from `opendal-core` and `reqsign-core`, requires `Send`)
