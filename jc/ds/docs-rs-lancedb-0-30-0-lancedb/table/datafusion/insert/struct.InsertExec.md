# InsertExec

## Description

`InsertExec` is an `ExecutionPlan` for inserting data into a native LanceDB table. It executes inserts by:

- Each partition writes data independently using `InsertBuilder::execute_uncommitted_stream`.
- The last partition to complete commits all transactions atomically.
- Returns the count of inserted rows per partition.

**Struct definition:**

```rust
pub struct InsertExec { /* private fields */ }
```

## Implementations

### Associated Functions

- `pub fn new(
      ds_wrapper: DatasetConsistencyWrapper,
      dataset: Arc<Dataset>,
      input: Arc<dyn ExecutionPlan>,
      write_params: WriteParams,
  ) -> Self`

## Trait Implementations

### `impl Debug for InsertExec`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl DisplayAs for InsertExec`

- `fn fmt_as(&self, t: DisplayFormatType, f: &mut Formatter<'_>) -> Result`

### `impl ExecutionPlan for InsertExec`

- `fn name(&self) -> &str`
- `fn as_any(&self) -> &dyn Any`
- `fn properties(&self) -> &Arc<PlanProperties>`
- `fn children(&self) -> Vec<&Arc<dyn ExecutionPlan>>`
- `fn maintains_input_order(&self) -> Vec<bool>`
- `fn benefits_from_input_partitioning(&self) -> Vec<bool>`
- `fn with_new_children(self: Arc<Self>, children: Vec<Arc<dyn ExecutionPlan>>) -> DataFusionResult<Arc<dyn ExecutionPlan>>`
- `fn execute(&self, partition: usize, context: Arc<TaskContext>) -> DataFusionResult<SendableRecordBatchStream>`
- `fn metrics(&self) -> Option<MetricsSet>`
- `fn static_name() -> &'static str` (where `Self: Sized`)
- `fn schema(&self) -> Arc<Schema>`
- `fn check_invariants(&self, check: InvariantLevel) -> Result<(), DataFusionError>`
- `fn required_input_distribution(&self) -> Vec<Distribution>`
- `fn required_input_ordering(&self) -> Vec<Option<OrderingRequirements>>`
- `fn reset_state(self: Arc<Self>) -> Result<Arc<dyn ExecutionPlan>, DataFusionError>`
- `fn repartitioned(&self, _target_partitions: usize, _config: &ConfigOptions) -> Result<Option<Arc<dyn ExecutionPlan>>, DataFusionError>`
- `fn partition_statistics(&self, partition: Option<usize>) -> Result<Statistics, DataFusionError>`
- `fn supports_limit_pushdown(&self) -> bool`
- `fn with_fetch(&self, _limit: Option<usize>) -> Option<Arc<dyn ExecutionPlan>>`
- `fn fetch(&self) -> Option<usize>`
- `fn cardinality_effect(&self) -> CardinalityEffect`
- `fn try_swapping_with_projection(&self, _projection: &ProjectionExec) -> Result<Option<Arc<dyn ExecutionPlan>>, DataFusionError>`
- `fn gather_filters_for_pushdown(&self, _phase: FilterPushdownPhase, parent_filters: Vec<Arc<dyn PhysicalExpr>>, _config: &ConfigOptions) -> Result<FilterDescription, DataFusionError>`
- `fn handle_child_pushdown_result(&self, _phase: FilterPushdownPhase, child_pushdown_result: ChildPushdownResult, _config: &ConfigOptions) -> Result<FilterPushdownPropagation<Arc<dyn ExecutionPlan>>, DataFusionError>`
- `fn with_new_state(&self, _state: Arc<dyn Any + Send + Sync>) -> Option<Arc<dyn ExecutionPlan>>`
- `fn try_pushdown_sort(&self, _order: &[PhysicalSortExpr]) -> Result<SortOrderPushdownResult<Arc<dyn ExecutionPlan>>, DataFusionError>`
- `fn with_preserve_order(&self, _preserve_order: bool) -> Option<Arc<dyn ExecutionPlan>>`

## Auto Trait Implementations

- `impl Freeze for InsertExec`
- `impl !RefUnwindSafe for InsertExec`
- `impl Send for InsertExec`
- `impl Sync for InsertExec`
- `impl Unpin for InsertExec`
- `impl UnsafeUnpin for InsertExec`
- `impl !UnwindSafe for InsertExec`

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
- `impl ArchivePointee for T`
- `impl Borrow<T> for T` where `T: ?Sized`
- `impl BorrowMut<T> for T` where `T: ?Sized`
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl ErasedDestructor for T` where `T: 'static`
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness, T: ?Sized`
- `impl Identity for T` where `T: ?Sized`
- `impl Instrument for T`
- `impl Into<U> for T` where `U: From<T>`
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`
- `impl LayoutRaw for T`
- `impl MaybeSend for T` where `T: Send`
- `impl Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching, N1: Niching, N2: Niching`
- `impl Pipe for T` where `T: ?Sized`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T` where `T: ?Sized`
- `impl ResultError for E` where `E: Send + Debug + Sync`
- `impl Same for T`
- `impl Tap for T`
- `impl TryConv for T`
- `impl TryFrom<U> for T` where `U: Into<T>`
- `impl TryInto<U> for T` where `U: TryFrom<T>`
- `impl TryInto<U> for T` (async) where `U: TryFrom<T>`
- `impl VZip<V> for T` where `V: MultiLane`
- `impl WithSubscriber for T`
