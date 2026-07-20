# FullTextSearchQuery in lancedb::index::scalar - Rust

## Struct FullTextSearchQuery

A full text search query.

```text
pub struct FullTextSearchQuery {
    pub query: FtsQuery,
    pub limit: Option<i64>,
    pub wand_factor: Option<f32>,
}
```

### Fields

- `query: FtsQuery` – The query to search for.
- `limit: Option<i64>` – The maximum number of results to return.
- `wand_factor: Option<f32>` – The wand factor for ranking (default 1.0). Increasing this reduces recall and improves performance.

### Implementations

#### `impl FullTextSearchQuery`

```text
pub fn new(query: String) -> FullTextSearchQuery
```
Create a new terms query.

```text
pub fn new_fuzzy(term: String, max_distance: Option<u32>) -> FullTextSearchQuery
```
Create a new fuzzy query.

```text
pub fn new_query(query: FtsQuery) -> FullTextSearchQuery
```
Create a new compound query.

```text
pub fn with_column(self, column: String) -> Result<FullTextSearchQuery, Error>
```
Set the column to search over (available only for MatchQuery and PhraseQuery).

```text
pub fn with_columns(self, columns: &[String]) -> Result<FullTextSearchQuery, Error>
```
Set the column to search over (available only for MatchQuery).

```text
pub fn limit(self, limit: Option<i64>) -> FullTextSearchQuery
```
Limit the number of results to return.

```text
pub fn wand_factor(self, wand_factor: Option<f32>) -> FullTextSearchQuery
```
Set the wand factor.

```text
pub fn columns(&self) -> HashSet<String>
```
Get the columns.

```text
pub fn params(&self) -> FtsSearchParams
```
Get the search parameters.

### Trait Implementations

- `Clone` – `fn clone(&self) -> FullTextSearchQuery` and `fn clone_from(&mut self, source: &Self)`
- `Debug` – `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`
- `PartialEq` – `fn eq(&self, other: &FullTextSearchQuery) -> bool` and `fn ne(&self, other: &Rhs) -> bool`
- `StructuralPartialEq` – (marker trait)

### Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

### Blanket Implementations

- `Any` where T: 'static + ?Sized
- `ArchivePointee`
- `Borrow<T>` where T: ?Sized
- `BorrowMut<T>` where T: ?Sized
- `CloneToUninit` where T: Clone
- `Conv`
- `DropFlavorWrapper<T>`
- `DynClone` where T: Clone
- `FmtForward`
- `From<T>`
- `FromRef<T>` where T: Clone
- `HasTypeWitness<W>`
- `Identity`
- `Instrument`
- `Into<U>` where U: From<T>
- `IntoEither`
- `IntoShared<Shared>` for Unshared
- `LayoutRaw`
- `MaybeSend` (two implementations)
- `Niching<NichedOption<T, N1>>` for N2
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError` for E
- `ResultType` for T
- `Same`
- `Tap`
- `ToOwned` where T: Clone
- `TryConv`
- `TryFrom<U>` where U: Into<T>
- `TryInto<U>` where U: TryFrom<T>
- `TryInto<U>` (async-convert)
- `VZip<V>`
- `WithSubscriber`
- `Allocation`
- `ErasedDestructor`
- `MaybeSend` (opendal-core)
- `MaybeSend` (reqsign-core)
- `ResultError` (xet-runtime)
- `ResultType` (xet-runtime)
