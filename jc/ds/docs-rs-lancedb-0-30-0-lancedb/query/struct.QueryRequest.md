# QueryRequest

A basic query into a table without any kind of search. This will result in a (potentially filtered) scan if executed.

**Source:** `lancedb::query` (struct)

## Fields

- `limit: Option<usize>` – limit the number of rows to return.
- `offset: Option<usize>` – offset of the query.
- `filter: Option<QueryFilter>` – apply filter to the returned rows.
- `full_text_search: Option<FullTextSearchQuery>` – perform a full text search on the table.
- `select: Select` – select column projection.
- `fast_search: bool` – if `true`, query is executed only on indexed data (default `false`).
- `with_row_id: bool` – if `true`, return the `_rowid` meta column (default `false`).
- `prefilter: bool` – if `false`, filter applied after vector search.
- `reranker: Option<Arc<dyn Reranker>>` – reranker implementation for hybrid search.
- `norm: Option<NormalizeMethod>` – normalization method for hybrid search results.
- `disable_scoring_autoprojection: bool` – if `true`, disables automatic projection of `_score`/`_distance` columns (default `false`).
- `order_by: Option<Vec<ColumnOrdering>>` – sort results by specified column(s).

## Trait Implementations

### `Clone`

**Source:** `query.rs:722`

```text
fn clone(&self) -> QueryRequest
```

- Returns a duplicate of the value.
- Also provides `clone_from(&mut self, source: &Self)`.

### `Debug`

**Source:** `query.rs:722`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

- Formats the value using the given formatter.

### `Default`

**Source:** `query.rs:772-789`

```text
fn default() -> Self
```

- Returns the default value for the type.

## Auto Trait Implementations

- `!RefUnwindSafe`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

- `Any` – requires `T: 'static + ?Sized`; provides `fn type_id(&self) -> TypeId`.
- `ArchivePointee` – associated type `ArchivedMetadata = ()`; method `pointer_metadata(...)`.
- `Borrow<T>` – method `borrow(&self) -> &T`.
- `BorrowMut<T>` – method `borrow_mut(&mut self) -> &mut T`.
- `CloneToUninit` – unsafe `clone_to_uninit(&self, dest: *mut u8)`.
- `Conv` – method `conv(self) -> T where Self: Into<T>`.
- `DropFlavorWrapper` – associated type `Flavor = MayDrop`.
- `DynClone` – method `__clone_box(&self, _: Private) -> *mut ()`.
- `FmtForward` – methods like `fmt_binary`, `fmt_display`, etc.
- `From<T>` – `fn from(t: T) -> T`.
- `FromRef` – `fn from_ref(input: &T) -> T`.
- `HasTypeWitness<W>` – constant `WITNESS: W`.
- `Identity` – constant `TYPE_EQ` and associated type `Type = T`.
- `Instrument` – `fn instrument(self, span: Span) -> Instrumented` and `fn in_current_span(self) -> Instrumented`.
- `Into<U>` – `fn into(self) -> U`.
- `IntoEither` – `fn into_either(self, into_left: bool) -> Either` and `fn into_either_with(self, into_left: F) -> Either`.
- `IntoShared<Shared>` – for `Unshared`; `fn into_shared(self) -> Shared`.
- `LayoutRaw` – `fn layout_raw(_: ...) -> Result<Layout, LayoutError>`.
- `Niching<NichedOption<T, N1>>` for `N2` – unsafe `is_niched` and `resolve_niched`.
- `Pipe` – methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`.
- `Pointable` – associated constant `ALIGN`, type `Init = T`; methods `init`, `deref`, `deref_mut`, `drop`.
- `Pointee` – associated type `Metadata = ()`.
- `PolicyExt` – `fn and(self, other: P) -> And` and `fn or(self, other: P) -> Or`.
- `Same` – associated type `Output = T`.
- `Tap` – methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, and debug variants.
- `ToOwned` – associated type `Owned = T`; `fn to_owned(&self) -> T` and `fn clone_into(&self, target: &mut T)`.
- `TryConv` – `fn try_conv(self) -> Result<T, Error>`.
- `TryFrom<U>` – associated type `Error = Infallible`; `fn try_from(value: U) -> Result<T, Infallible>`.
- `TryInto<U>` – associated type `Error = <U as TryFrom<T>>::Error`; `fn try_into(self) -> Result<U, Error>`.
- `TryInto<U>` (async) – associated type `Error = <U as TryFrom<T>>::Error`; `async fn try_into(self) -> Result<U, Error>`.
- `VZip<V>` – `fn vzip(self) -> V`.
- `WithSubscriber` – `fn with_subscriber(self, subscriber: S) -> WithDispatch` and `fn with_current_subscriber(self) -> WithDispatch`.
- `ErasedDestructor` – for `'static` types.
- `MaybeSend` – for `Send` types (two occurrences).
- `ResultError` – for `E: Send + Debug + Sync`.
- `ResultType` – for `T: Send + Clone + Sync + Debug`.
