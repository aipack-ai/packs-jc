# BaseTableAdapter in lancedb::table::datafusion

[lancedb](../../lancedb/index.html) 0.30.0 :: [table](../index.html) :: [datafusion](index.html)

## Struct BaseTableAdapter

**Source:** `src/lancedb/table/datafusion.rs.html#150-154`

```text
pub struct BaseTableAdapter { /* private fields */ }
```

## Implementations

### Associated Functions

- **try_new**  
  Source: `src/lancedb/table/datafusion.rs.html#157-170`  
  ```text
  pub async fn try_new(table: Arc<BaseTable>) -> Result<...>
  ```

### Methods

- **with_fts_query**  
  Source: `src/lancedb/table/datafusion.rs.html#173-185`  
  ```text
  pub fn with_fts_query(&self, fts_query: FullTextSearchQuery) -> Self
  ```

### Trait Implementations

#### `impl Debug for BaseTableAdapter`

Source: `src/lancedb/table/datafusion.rs.html#149`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

#### `impl TableProvider for BaseTableAdapter`

Source: `src/lancedb/table/datafusion.rs.html#189-290`

- **as_any**  
  ```text
  fn as_any(&self) -> &dyn Any
  ```

- **schema**  
  ```text
  fn schema(&self) -> Arc<ArrowSchema>
  ```

- **table_type**  
  ```text
  fn table_type(&self) -> TableType
  ```

- **scan**  
  ```text
  fn scan<'life0, 'life1, 'life2, 'life3, 'async_trait>(
      &'life0 self,
      state: &'life1 dyn Session,
      projection: Option<&'life2 Vec<usize>>,
      filters: &'life3 [Expr],
      limit: Option<usize>,
  ) -> Pin<Box<dyn Future<Output = DataFusionResult<Arc<dyn ExecutionPlan>>> + Send + 'async_trait>>
  where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait, 'life3: 'async_trait
  ```

- **supports_filters_pushdown**  
  ```text
  fn supports_filters_pushdown(
      &self,
      filters: &[&Expr],
  ) -> DataFusionResult<Vec<TableProviderFilterPushDown>>
  ```

- **statistics**  
  ```text
  fn statistics(&self) -> Option<Statistics>
  ```

- **insert_into**  
  ```text
  fn insert_into<'life0, 'life1, 'async_trait>(
      &'life0 self,
      _state: &'life1 dyn Session,
      input: Arc<dyn ExecutionPlan>,
      insert_op: InsertOp,
  ) -> Pin<Box<dyn Future<Output = DataFusionResult<Arc<dyn ExecutionPlan>>> + Send + 'async_trait>>
  where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait
  ```

- **constraints**  
  ```text
  fn constraints(&self) -> Option<&Constraints>
  ```

- **get_table_definition**  
  ```text
  fn get_table_definition(&self) -> Option<&str>
  ```

- **get_logical_plan**  
  ```text
  fn get_logical_plan(&self) -> Option<Cow<'_, LogicalPlan>>
  ```

- **get_column_default**  
  ```text
  fn get_column_default(&self, _column: &str) -> Option<&Expr>
  ```

- **scan_with_args**  
  ```text
  fn scan_with_args<'a, 'life0, 'life1, 'async_trait>(
      &'life0 self,
      state: &'life1 dyn Session,
      args: ScanArgs<'a>,
  ) -> Pin<Box<dyn Future<Output = Result<ScanResult, DataFusionError>> + Send + 'async_trait>>
  where 'a: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, Self: 'async_trait
  ```

- **delete_from**  
  ```text
  fn delete_from<'life0, 'life1, 'async_trait>(
      &'life0 self,
      _state: &'life1 dyn Session,
      _filters: Vec<Expr>,
  ) -> Pin<Box<dyn Future<Output = Result<Arc<dyn ExecutionPlan>, DataFusionError>> + Send + 'async_trait>>
  where 'life0: 'async_trait, 'life1: 'async_trait, Self: 'async_trait
  ```

- **update**  
  ```text
  fn update<'life0, 'life1, 'async_trait>(
      &'life0 self,
      _state: &'life1 dyn Session,
      _assignments: Vec<(String, Expr)>,
      _filters: Vec<Expr>,
  ) -> Pin<Box<dyn Future<Output = Result<Arc<dyn ExecutionPlan>, DataFusionError>> + Send + 'async_trait>>
  where 'life0: 'async_trait, 'life1: 'async_trait, Self: 'async_trait
  ```

- **truncate**  
  ```text
  fn truncate<'life0, 'life1, 'async_trait>(
      &'life0 self,
      _state: &'life1 dyn Session,
  ) -> Pin<Box<dyn Future<Output = Result<Arc<dyn ExecutionPlan>, DataFusionError>> + Send + 'async_trait>>
  where 'life0: 'async_trait, 'life1: 'async_trait, Self: 'async_trait
  ```

## Auto Trait Implementations

- `Freeze` for `BaseTableAdapter`
- `!RefUnwindSafe` for `BaseTableAdapter`
- `Send` for `BaseTableAdapter`
- `Sync` for `BaseTableAdapter`
- `Unpin` for `BaseTableAdapter`
- `UnsafeUnpin` for `BaseTableAdapter`
- `!UnwindSafe` for `BaseTableAdapter`

## Blanket Implementations

- `Any` for T where T: 'static + ?Sized  
  ```text
  fn type_id(&self) -> TypeId
  ```

- `ArchivePointee` for T  
  ```text
  type ArchivedMetadata = ()
  fn pointer_metadata(_: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata
  ```

- `Borrow<T>` for T where T: ?Sized  
  ```text
  fn borrow(&self) -> &T
  ```

- `BorrowMut<T>` for T where T: ?Sized  
  ```text
  fn borrow_mut(&mut self) -> &mut T
  ```

- `Conv` for T  
  ```text
  fn conv(self) -> T where Self: Into<T>
  ```

- `DropFlavorWrapper<T>` for T  
  ```text
  type Flavor = MayDrop
  ```

- `FmtForward` for T  
  ```text
  fn fmt_binary(self) -> FmtBinary
  fn fmt_display(self) -> FmtDisplay
  fn fmt_lower_exp(self) -> FmtLowerExp
  fn fmt_lower_hex(self) -> FmtLowerHex
  fn fmt_octal(self) -> FmtOctal
  fn fmt_pointer(self) -> FmtPointer
  fn fmt_upper_exp(self) -> FmtUpperExp
  fn fmt_upper_hex(self) -> FmtUpperHex
  fn fmt_list(self) -> FmtList
  ```

- `From<T>` for T  
  ```text
  fn from(t: T) -> T
  ```

- `HasTypeWitness<W>` for T where W: MakeTypeWitness, T: ?Sized  
  ```text
  const WITNESS: W = W::MAKE
  ```

- `Identity` for T where T: ?Sized  
  ```text
  const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW
  type Type = T
  ```

- `Instrument` for T  
  ```text
  fn instrument(self, span: Span) -> Instrumented
  fn in_current_span(self) -> Instrumented
  ```

- `Into<U>` for T where U: From<T>  
  ```text
  fn into(self) -> U
  ```

- `IntoEither` for T  
  ```text
  fn into_either(self, into_left: bool) -> Either
  fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool
  ```

- `IntoShared<Shared>` for Unshared where Shared: FromUnshared  
  ```text
  fn into_shared(self) -> Shared
  ```

- `LayoutRaw` for T  
  ```text
  fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>
  ```

- `Niching<NichedOption<T, N1>>` for N2 where T: SharedNiching, N1: Niching, N2: Niching  
  ```text
  unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool
  fn resolve_niched(out: Place<NichedOption<T, N1>>)
  ```

- `Pipe` for T where T: ?Sized  
  ```text
  fn pipe(self, func: impl FnOnce(Self) -> R) -> R
  fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R
  fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R
  fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R
  fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R
  fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R
  fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R
  fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R
  fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R
  ```

- `Pointable` for T  
  ```text
  const ALIGN: usize
  type Init = T
  unsafe fn init(init: <T as Pointable>::Init) -> usize
  unsafe fn deref<'a>(ptr: usize) -> &'a T
  unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
  unsafe fn drop(ptr: usize)
  ```

- `Pointee` for T  
  ```text
  type Metadata = ()
  ```

- `PolicyExt` for T where T: ?Sized  
  ```text
  fn and(self, other: P) -> And where T: Policy, P: Policy
  fn or(self, other: P) -> Or where T: Policy, P: Policy
  ```

- `Same` for T  
  ```text
  type Output = T
  ```

- `Tap` for T  
  ```text
  fn tap(self, func: impl FnOnce(&Self)) -> Self
  fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self
  fn tap_borrow(self, func: impl FnOnce(&B)) -> Self
  fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self
  fn tap_ref(self, func: impl FnOnce(&R)) -> Self
  fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self
  fn tap_deref(self, func: impl FnOnce(&T)) -> Self
  fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self
  fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self
  fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self
  fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self
  fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self
  fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self
  fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self
  fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self
  fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self
  ```

- `TryConv` for T  
  ```text
  fn try_conv(self) -> Result<T, Error> where Self: TryInto<T>
  ```

- `TryFrom<U>` for T where U: Into<T>  
  ```text
  type Error = Infallible
  fn try_from(value: U) -> Result<T, Infallible>
  ```

- `TryInto<U>` for T where U: TryFrom<T>  
  ```text
  type Error = <U as TryFrom<T>>::Error
  fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
  ```

- `TryInto<U>` for T (async-convert) where U: TryFrom<T>  
  ```text
  type Error = <U as TryFrom<T>>::Error
  fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>>
  where T: 'async_trait
  ```

- `VZip<V>` for T where V: MultiLane  
  ```text
  fn vzip(self) -> V
  ```

- `WithSubscriber` for T  
  ```text
  fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into<Dispatch>
  fn with_current_subscriber(self) -> WithDispatch
  ```

- `ErasedDestructor` for T where T: 'static

- `MaybeSend` for T where T: Send (from opendal-core)

- `MaybeSend` for T where T: Send (from reqsign-core)

- `ResultError` for E where E: Send + Debug + Sync
