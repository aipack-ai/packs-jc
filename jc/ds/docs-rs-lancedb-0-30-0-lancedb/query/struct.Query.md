# Query

**Struct** `lancedb::query::Query`

A builder for LanceDB queries.

See [`crate::Table::query`](../table/struct.Table.html#method.query) for more details on queries.

See [`QueryBase`](trait.QueryBase.html) for methods that can be used to parameterize the query.

See [`ExecutableQuery`](trait.ExecutableQuery.html) for methods that can be used to execute the query and retrieve results.

This query object can be reused to issue the same query multiple times.

```rust
pub struct Query { /* private fields */ }
```

## Implementations

### impl Query

```rust
impl Query {
    pub fn nearest_to(
        self,
        vector: impl IntoQueryVector
    ) -> Result<VectorQuery>
}

pub fn into_request(self) -> QueryRequest

pub fn current_request(&self) -> &QueryRequest
```

#### `nearest_to`

Find the nearest vectors to the given query vector.

This converts the query from a plain query to a vector query.

This method will attempt to convert the input to the query vector expected by the embedding model. If the input cannot be converted then an error will be returned.

By default, there is no embedding model, and the input should be vector/slice of floats.

If there is only one vector column (a column whose data type is a fixed size list of floats) then the column does not need to be specified. If there is more than one vector column you must use [`Query::column`] to specify which column you would like to compare with.

If no index has been created on the vector column then a vector query will perform a distance comparison between the query vector and every vector in the database and then sort the results. This is sometimes called a “flat search”.

For small databases, with a few hundred thousand vectors or less, this can be reasonably fast. In larger databases you should create a vector index on the column. If there is a vector index then an “approximate” nearest neighbor search (frequently called an ANN search) will be performed. This search is much faster, but the results will be approximate.

The query can be further parameterized using the returned builder. There are various search parameters that will let you fine tune your recall accuracy vs search latency.

**Arguments**

- `vector` - The vector that will be used for search.

#### `into_request`

```rust
pub fn into_request(self) -> QueryRequest
```

#### `current_request`

```rust
pub fn current_request(&self) -> &QueryRequest
```

## Trait Implementations

### impl Clone for Query

```rust
impl Clone for Query {
    fn clone(&self) -> Query
    fn clone_from(&mut self, source: &Self)
}
```

### impl Debug for Query

```rust
impl Debug for Query {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result
}
```

### impl ExecutableQuery for Query

```rust
impl ExecutableQuery for Query {
    async fn create_plan(
        &self,
        options: QueryExecutionOptions
    ) -> Result<Arc<dyn ExecutionPlan>>

    async fn execute_with_options(
        &self,
        options: QueryExecutionOptions
    ) -> Result<SendableRecordBatchStream>

    async fn explain_plan(&self, verbose: bool) -> Result<String>

    async fn analyze_plan_with_options(
        &self,
        options: QueryExecutionOptions
    ) -> Result<String>

    fn execute(&self) -> impl Future<Output = Result<SendableRecordBatchStream>> + Send

    fn analyze_plan(&self) -> impl Future<Output = Result<String>> + Send

    fn output_schema(&self) -> impl Future<Output = Result<SchemaRef>> + Send
}
```

### impl HasQuery for Query

```rust
impl HasQuery for Query {
    fn mut_query(&mut self) -> &mut QueryRequest
}
```

### impl QueryBase for T where T: HasQuery

```rust
impl<T: HasQuery> QueryBase for T {
    fn limit(self, limit: usize) -> T
    fn offset(self, offset: usize) -> T
    fn only_if(self, filter: impl AsRef<str>) -> T
    fn only_if_expr(self, filter: Expr) -> T
    fn full_text_search(self, query: FullTextSearchQuery) -> T
    fn select(self, select: Select) -> T
    fn fast_search(self) -> T
    fn postfilter(self) -> T
    fn with_row_id(self) -> T
    fn rerank(self, reranker: Arc<dyn Reranker>) -> T
    fn norm(self, norm: NormalizeMethod) -> T
    fn order_by(self, ordering: Option<Vec<ColumnOrdering>>) -> T
}
```

## Auto Trait Implementations

- `impl Freeze for Query`
- `impl !RefUnwindSafe for Query`
- `impl Send for Query`
- `impl Sync for Query`
- `impl Unpin for Query`
- `impl UnsafeUnpin for Query`
- `impl !UnwindSafe for Query`

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`

- `impl ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &Self::ArchivedMetadata) -> <Pointee as Pointee>::Metadata`

- `impl Borrow<T> for T` where `T: ?Sized`
  - `fn borrow(&self) -> &T`

- `impl BorrowMut<T> for T` where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`

- `impl CloneToUninit for T` where `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

- `impl Conv for T`
  - `fn conv(self) -> T`

- `impl DropFlavorWrapper for T`
  - `type Flavor = MayDrop`

- `impl DynClone for T` where `T: Clone`
  - `fn __clone_box(&self, _: Private) -> *mut ()`

- `impl FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary`
  - `fn fmt_display(self) -> FmtDisplay`
  - `fn fmt_lower_exp(self) -> FmtLowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex`
  - `fn fmt_octal(self) -> FmtOctal`
  - `fn fmt_pointer(self) -> FmtPointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex`
  - `fn fmt_list(self) -> FmtList`

- `impl From<T> for T`
  - `fn from(t: T) -> T`

- `impl FromRef<T> for T` where `T: Clone`
  - `fn from_ref(input: &T) -> T`

- `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness, T: ?Sized`
  - `const WITNESS: W = W::MAKE`

- `impl Identity for T` where `T: ?Sized`
  - `const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`
  - `type Type = T`

- `impl Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`

- `impl Into<U> for T` where `U: From<T>`
  - `fn into(self) -> U`

- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`

- `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`

- `impl LayoutRaw for T`
  - `fn layout_raw(_: <Pointee as Pointee>::Metadata) -> Result<Layout, LayoutError>`

- `impl Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching, N1: Niching, N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

- `impl Pipe for T` where `T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` (where Self: Sized)
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` (where Self: Borrow<B>)
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` (where Self: BorrowMut<B>)
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` (where Self: AsRef<U>)
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` (where Self: AsMut<U>)
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` (where Self: Deref<Target = T>)
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` (where Self: DerefMut + Deref)

- `impl Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`

- `impl Pointee for T`
  - `type Metadata = ()`

- `impl PolicyExt for T` where `T: ?Sized`
  - `fn and(self, other: P) -> And<T, P>`
  - `fn or(self, other: P) -> Or<T, P>`

- `impl Same for T`
  - `type Output = T`

- `impl Tap for T`
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` (where Self: Borrow<B>)
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` (where Self: BorrowMut<B>)
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` (where Self: AsRef<R>)
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` (where Self: AsMut<R>)
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` (where Self: Deref<Target = T>)
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` (where Self: DerefMut + Deref)
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self` (where Self: Borrow<B>)
  - `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self` (where Self: BorrowMut<B>)
  - `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self` (where Self: AsRef<R>)
  - `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self` (where Self: AsMut<R>)
  - `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self` (where Self: Deref<Target = T>)
  - `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self` (where Self: DerefMut + Deref)

- `impl ToOwned for T` where `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`

- `impl TryConv for T`
  - `fn try_conv(self) -> Result<T, Error>` (where Self: TryInto<T>)

- `impl TryFrom<U> for T` where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`

- `impl TryInto<U> for T` where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`

- `impl TryInto<U> for T` (async-convert) where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `async fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>` (where T: 'async_trait)

- `impl VZip<V> for T` where `V: MultiLane`
  - `fn vzip(self) -> V`

- `impl WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch` (where S: Into<Dispatch>)
  - `fn with_current_subscriber(self) -> WithDispatch`

- `impl ErasedDestructor for T` where `T: 'static`

- `impl MaybeSend for T` where `T: Send` (two implementations from different crates)

- `impl ResultError for E` where `E: Send + Debug + Sync`

- `impl ResultType for T` where `T: Send + Clone + Sync + Debug`
