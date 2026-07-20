# VectorQuery

In `lancedb::query`

## Description

A builder for vector searches.

This builder contains methods specific to vector searches.

See [`QueryBase`](trait.QueryBase.html) for additional methods that can be used to parameterize the query.

See [`ExecutableQuery`](trait.ExecutableQuery.html) for methods that can be used to execute the query and retrieve results.

```text
pub struct VectorQuery { /* private fields */ }
```

## Implementations

### `pub fn into_request(self) -> VectorQueryRequest`

### `pub fn current_request(&self) -> &VectorQueryRequest`

### `pub fn into_plain(self) -> Query`

### `pub fn column(self, column: &str) -> Self`

Set the vector column to query.

This controls which column is compared to the query vector supplied in the call to [`Query::nearest_to`](struct.Query.html#method.nearest_to). This parameter must be specified if the table has more than one column whose data type is a fixed-size-list of floats.

### `pub fn add_query_vector(self, vector: impl IntoQueryVector) -> Result`

Add another query vector to the search. Multiple searches will be dispatched as part of the query. This is a convenience method for adding multiple query vectors to the search. It is not expected to be faster than issuing multiple queries concurrently. The output data will contain an additional columns `query_index` which will contain the index of the query vector that was used to generate the result.

### `pub fn nprobes(self, nprobes: usize) -> Self`

Set the number of partitions to search (probe). This argument is only used when the vector column has an IVF PQ index. If there is no index then this value is ignored. The IVF stage of IVF PQ divides the input into partitions (clusters) of related values. The partition whose centroids are closest to the query vector will be exhaustively searched to find matches. This parameter controls how many partitions should be searched. Increasing this value will increase recall but also latency. Default is 20. For best results, tune with a benchmark. This method sets both the minimum and maximum number of partitions to search. For more fine-grained control see [`minimum_nprobes`](#method.minimum_nprobes) and [`maximum_nprobes`](#method.maximum_nprobes).

### `pub fn minimum_nprobes(self, minimum_nprobes: usize) -> Result`

Set the minimum number of partitions to search. This argument is only used when the vector column has an IVF PQ index. See [`nprobes`](#method.nprobes) for more details. These partitions will be searched on every indexed vector query. Will return an error if the value is not greater than 0 or if maximum_nprobes has been set and is less than the minimum_nprobes.

### `pub fn maximum_nprobes(self, maximum_nprobes: Option<usize>) -> Result`

Set the maximum number of partitions to search. If this value is greater than minimum_nprobes then the excess partitions will only be searched if the initial search does not return enough results. This can be useful when there is a narrow filter to allow these queries to spend more time searching and avoid potential false negatives. Set to None to search all partitions, if needed, to satisfy the limit.

### `pub fn distance_range(self, lower_bound: Option<f32>, upper_bound: Option<f32>) -> Self`

Set the distance range for vector search, only rows with distances in the range [lower_bound, upper_bound) will be returned.

### `pub fn ef(self, ef: usize) -> Self`

Set the number of candidates to return during the refine step for HNSW. This argument is only used when the vector column has an HNSW index. Increasing this value will increase recall but also latency. Default is 1.5 * limit.

### `pub fn refine_factor(self, refine_factor: u32) -> Self`

A multiplier to control how many additional rows are taken during the refine step. This argument is only used when the vector column has an IVF PQ index. An IVF PQ index stores compressed (quantized) values. They query vector is compared against these values and, since they are compressed, the comparison is inaccurate. This parameter can be used to refine the results. It can improve both recall and correct the ordering of the nearest results. To refine results LanceDb will first perform an ANN search to find the nearest `limit` * `refine_factor` results. In other words, if `refine_factor` is 3 and `limit` is the default (10) then the first 30 results will be selected. LanceDb then fetches the full, uncompressed, values for these 30 results. The results are then reordered by the true distance and only the nearest 10 are kept. Note: calling this method with a value of 1 will still have an impact on search latency because it fetches full values. If this method is NOT called then distances returned will be approximate.

### `pub fn distance_type(self, distance_type: DistanceType) -> Self`

Set the distance metric to use. When performing a vector search we try and find the "nearest" vectors according to some distance metric. This parameter controls which distance metric to use. See [`DistanceType`](../enum.DistanceType.html) for more details. Note: if there is a vector index then the distance type used MUST match the distance type used to train the vector index. By default [`DistanceType::L2`](../enum.DistanceType.html#variant.L2) is used.

### `pub fn bypass_vector_index(self) -> Self`

If this is called then any vector index is skipped. An exhaustive (flat) search will be performed. The query vector will be compared to every vector in the table. At high scales this can be expensive. However, this is often still useful, e.g., to get ground truth results to calculate recall.

### `pub async fn execute_hybrid(&self, options: QueryExecutionOptions) -> Result<SendableRecordBatchStream>`

## Trait Implementations

### `impl Clone for VectorQuery`

- `fn clone(&self) -> VectorQuery`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for VectorQuery`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl ExecutableQuery for VectorQuery`

- `async fn create_plan(&self, options: QueryExecutionOptions) -> Result<Arc<dyn ExecutionPlan>>`
- `async fn execute_with_options(&self, options: QueryExecutionOptions) -> Result<SendableRecordBatchStream>`
- `async fn explain_plan(&self, verbose: bool) -> Result<String>`
- `async fn analyze_plan_with_options(&self, options: QueryExecutionOptions) -> Result<String>`
- `fn execute(&self) -> impl Future<Result<SendableRecordBatchStream>> + Send`
- `fn analyze_plan(&self) -> impl Future<Result<String>> + Send`
- `fn output_schema(&self) -> impl Future<Result<SchemaRef>> + Send`

### `impl HasQuery for VectorQuery`

- `fn mut_query(&mut self) -> &mut QueryRequest`

## Auto Trait Implementations

- `impl Freeze for VectorQuery`
- `impl !RefUnwindSafe for VectorQuery`
- `impl Send for VectorQuery`
- `impl Sync for VectorQuery`
- `impl Unpin for VectorQuery`
- `impl UnsafeUnpin for VectorQuery`
- `impl !UnwindSafe for VectorQuery`

## Blanket Implementations

- `impl<T> Any for T` (where T: 'static + ?Sized)
  - `fn type_id(&self) -> TypeId`
- `impl<T> ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &Self::ArchivedMetadata) -> <T as Pointee>::Metadata`
- `impl<T> Borrow<T> for T` (where T: ?Sized)
  - `fn borrow(&self) -> &T`
- `impl<T> BorrowMut<T> for T` (where T: ?Sized)
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl<T> CloneToUninit for T` (where T: Clone)
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl<T> Conv for T`
  - `fn conv(self) -> T` (where Self: Into<T>)
- `impl<T> DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`
- `impl<T> DynClone for T` (where T: Clone)
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- `impl<T> FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary` (where Self: Binary)
  - `fn fmt_display(self) -> FmtDisplay` (where Self: Display)
  - `fn fmt_lower_exp(self) -> FmtLowerExp` (where Self: LowerExp)
  - `fn fmt_lower_hex(self) -> FmtLowerHex` (where Self: LowerHex)
  - `fn fmt_octal(self) -> FmtOctal` (where Self: Octal)
  - `fn fmt_pointer(self) -> FmtPointer` (where Self: Pointer)
  - `fn fmt_upper_exp(self) -> FmtUpperExp` (where Self: UpperExp)
  - `fn fmt_upper_hex(self) -> FmtUpperHex` (where Self: UpperHex)
  - `fn fmt_list(self) -> FmtList` (where &'a Self: for<'a> IntoIterator)
- `impl<T> From<T> for T`
  - `fn from(t: T) -> T`
- `impl<T> FromRef<T> for T` (where T: Clone)
  - `fn from_ref(input: &T) -> T`
- `impl<T> HasTypeWitness<W> for T` (where W: MakeTypeWitness, T: ?Sized)
  - `const WITNESS: W = W::MAKE`
- `impl<T> Identity for T` (where T: ?Sized)
  - `const TYPE_EQ: TypeEq<T::Type> = TypeEq::NEW`
  - `type Type = T`
- `impl<T> Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- `impl<T, U> Into<U> for T` (where U: From<T>)
  - `fn into(self) -> U`
- `impl<T> IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either` (where F: FnOnce(&Self) -> bool)
- `impl<Unshared, Shared> IntoShared<Shared> for Unshared` (where Shared: FromUnshared)
  - `fn into_shared(self) -> Shared`
- `impl<T> LayoutRaw for T`
  - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `impl<T, N1, N2> Niching<NichedOption<T, N1>> for N2` (where T: SharedNiching, N1: Niching, N2: Niching)
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- `impl<T> Pipe for T` (where T: ?Sized)
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` (where Self: Sized)
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R` (where R: 'a)
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R` (where R: 'a)
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` (where Self: Borrow<B>, B: 'a + ?Sized, R: 'a)
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` (where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a)
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` (where Self: AsRef<U>, U: 'a + ?Sized, R: 'a)
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` (where Self: AsMut<U>, U: 'a + ?Sized, R: 'a)
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` (where Self: Deref<Target=T>, T: 'a + ?Sized, R: 'a)
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` (where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a)
- `impl<T> Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl<T> Pointee for T`
  - `type Metadata = ()`
- `impl<T> PolicyExt for T` (where T: ?Sized)
  - `fn and(self, other: P) -> And` (where T: Policy, P: Policy)
  - `fn or(self, other: P) -> Or` (where T: Policy, P: Policy)
- `impl<T> QueryBase for T` (where T: HasQuery)
  - `fn limit(self, limit: usize) -> T`
  - `fn offset(self, offset: usize) -> T`
  - `fn only_if(self, filter: impl AsRef<str>) -> T`
  - `fn only_if_expr(self, filter: Expr) -> T`
  - `fn full_text_search(self, query: FullTextSearchQuery) -> T`
  - `fn select(self, select: Select) -> T`
  - `fn fast_search(self) -> T`
  - `fn postfilter(self) -> T`
  - `fn with_row_id(self) -> T`
  - `fn rerank(self, reranker: Arc<dyn Reranker>) -> T`
  - `fn norm(self, norm: NormalizeMethod) -> T`
  - `fn order_by(self, ordering: Option<Vec<ColumnOrdering>>) -> T`
- `impl<T> Same for T`
  - `type Output = T`
- `impl<T> Tap for T`
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` (where Self: Borrow<B>, B: ?Sized)
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` (where Self: BorrowMut<B>, B: ?Sized)
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` (where Self: AsRef<R>, R: ?Sized)
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` (where Self: AsMut<R>, R: ?Sized)
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` (where Self: Deref<Target=T>, T: ?Sized)
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` (where Self: DerefMut + Deref, T: ?Sized)
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self` (where Self: Borrow<B>, B: ?Sized)
  - `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self` (where Self: BorrowMut<B>, B: ?Sized)
  - `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self` (where Self: AsRef<R>, R: ?Sized)
  - `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self` (where Self: AsMut<R>, R: ?Sized)
  - `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self` (where Self: Deref<Target=T>, T: ?Sized)
  - `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self` (where Self: DerefMut + Deref, T: ?Sized)
- `impl<T> ToOwned for T` (where T: Clone)
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `impl<T> TryConv for T`
  - `fn try_conv(self) -> Result<T, Error>` (where Self: TryInto<T>)
- `impl<T, U> TryFrom<U> for T` (where U: Into<T>)
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl<T, U> TryInto<U> for T` (where U: TryFrom<T>)
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- `impl<T, U> TryInto<U> for T` (where U: TryFrom<T>) [async]
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Pin<Box<dyn Future<Result<U, Self::Error>> + '_>>` (where T: 'async_trait)
- `impl<T, V> VZip<V> for T` (where V: MultiLane)
  - `fn vzip(self) -> V`
- `impl<T> WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch` (where S: Into<Dispatch>)
  - `fn with_current_subscriber(self) -> WithDispatch`
- `impl<T> ErasedDestructor for T` (where T: 'static)
- `impl<T> MaybeSend for T` (where T: Send) [two occurrences from different crates]
- `impl<E> ResultError for E` (where E: Send + Debug + Sync)
- `impl<T> ResultType for T` (where T: Send + Clone + Sync + Debug)
