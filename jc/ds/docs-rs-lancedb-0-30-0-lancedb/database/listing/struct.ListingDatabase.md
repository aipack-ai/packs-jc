# ListingDatabase

A database that stores tables in a flat directory structure.

Tables are stored as directories in the base path of the object store.

It is called a “listing database” because we use a “list directory” operation to discover what tables are available. Table names are determined from the directory names.

For example, given the following directory structure:

```text
/data
 /table1.lance
 /table2.lance
```

We will have two tables named `table1` and `table2`.

## Struct Definition

```rust
pub struct ListingDatabase { /* private fields */ }
```

## Implementations

### `impl ListingDatabase`

A connection to LanceDB

#### `pub async fn connect_with_options(request: &ConnectRequest) -> Result<()>`

Connect to a listing database. The URI should be a path to a directory where the tables are stored.

See [`ListingDatabaseOptions`](struct.ListingDatabaseOptions.html) for options that can be set on the connection (via `storage_options`).

## Trait Implementations

### `impl Database for ListingDatabase`

- `fn list_namespaces<'life0, 'async_trait>(&'life0 self, request: ListNamespacesRequest) -> Pin<Box<dyn Future<Output = Result<ListNamespacesResponse>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  List immediate child namespace names in the given namespace.

- `fn uri(&self) -> &str`

  Get the uri of the database.

- `fn read_consistency<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<ReadConsistency>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Get the read consistency of the database.

- `fn create_namespace<'life0, 'async_trait>(&'life0 self, request: CreateNamespaceRequest) -> Pin<Box<dyn Future<Output = Result<CreateNamespaceResponse>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Create a new namespace.

- `fn drop_namespace<'life0, 'async_trait>(&'life0 self, request: DropNamespaceRequest) -> Pin<Box<dyn Future<Output = Result<DropNamespaceResponse>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Drop a namespace.

- `fn describe_namespace<'life0, 'async_trait>(&'life0 self, request: DescribeNamespaceRequest) -> Pin<Box<dyn Future<Output = Result<DescribeNamespaceResponse>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Describe a namespace (get its properties).

- `fn table_names<'life0, 'async_trait>(&'life0 self, request: TableNamesRequest) -> Pin<Box<dyn Future<Output = Result<Vec<String>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  **Deprecated:** Use `list_tables` instead. List the names of tables in the database. [Read more](../trait.Database.html#tymethod.table_names)

- `fn list_tables<'life0, 'async_trait>(&'life0 self, request: ListTablesRequest) -> Pin<Box<dyn Future<Output = Result<ListTablesResponse>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  List tables in the database with pagination support.

- `fn create_table<'life0, 'async_trait>(&'life0 self, request: CreateTableRequest) -> Pin<Box<dyn Future<Output = Result<Arc<BaseTable>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Create a table in the database.

- `fn clone_table<'life0, 'async_trait>(&'life0 self, request: CloneTableRequest) -> Pin<Box<dyn Future<Output = Result<Arc<BaseTable>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Clone a table in the database. [Read more](../trait.Database.html#tymethod.clone_table)

- `fn open_table<'life0, 'async_trait>(&'life0 self, request: OpenTableRequest) -> Pin<Box<dyn Future<Output = Result<Arc<BaseTable>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Open a table in the database.

- `fn rename_table<'life0, 'life1, 'life2, 'life3, 'life4, 'async_trait>(&'life0 self, _cur_name: &'life1 str, _new_name: &'life2 str, cur_namespace_path: &'life3 [String], new_namespace_path: &'life4 [String]) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait, 'life3: 'async_trait, 'life4: 'async_trait`

  Rename a table in the database.

- `fn drop_table<'life0, 'life1, 'life2, 'async_trait>(&'life0 self, name: &'life1 str, namespace_path: &'life2 [String]) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait, 'life2: 'async_trait`

  Drop a table in the database.

- `fn drop_all_tables<'life0, 'life1, 'async_trait>(&'life0 self, namespace_path: &'life1 [String]) -> Pin<Box<dyn Future<Output = Result<()>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait`

  Drop all tables in the database.

- `fn as_any(&self) -> &dyn Any`

- `fn namespace_client<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<Arc<LanceNamespace>>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Get the equivalent namespace client of this database. For LanceNamespaceDatabase, it is the underlying LanceNamespace. For ListingDatabase, it is the equivalent DirectoryNamespace. For RemoteDatabase, it is the equivalent RestNamespace.

- `fn namespace_client_config<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = Result<(String, HashMap<String, String>)>> + Send + 'async_trait>> where Self: 'async_trait, 'life0: 'async_trait`

  Get the configuration for constructing an equivalent namespace client. Returns (impl_type, properties). [Read more](../trait.Database.html#tymethod.namespace_client_config)

### `impl Debug for ListingDatabase`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

  Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)

### `impl Display for ListingDatabase`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

  Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Display.html#tymethod.fmt)

## Auto Trait Implementations

- `impl Freeze for ListingDatabase`
- `impl !RefUnwindSafe for ListingDatabase`
- `impl Send for ListingDatabase`
- `impl Sync for ListingDatabase`
- `impl Unpin for ListingDatabase`
- `impl UnsafeUnpin for ListingDatabase`
- `impl !UnwindSafe for ListingDatabase`

## Blanket Implementations

- `impl<T> Any for T where T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`

- `impl<T> ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_, _: &<T as ArchivePointee>::ArchivedMetadata) -> <<T as Pointee>::Metadata>`

- `impl<T> Borrow<T> for T where T: ?Sized`
  - `fn borrow(&self) -> &T`

- `impl<T> BorrowMut<T> for T where T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`

- `impl<T> Conv for T`
  - `fn conv(self) -> T where Self: Into<T>`

- `impl<T> DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`

- `impl<T> FmtForward for T`
  - `fn fmt_binary(self) -> FmtBinary where Self: Binary`
  - `fn fmt_display(self) -> FmtDisplay where Self: Display`
  - `fn fmt_lower_exp(self) -> FmtLowerExp where Self: LowerExp`
  - `fn fmt_lower_hex(self) -> FmtLowerHex where Self: LowerHex`
  - `fn fmt_octal(self) -> FmtOctal where Self: Octal`
  - `fn fmt_pointer(self) -> FmtPointer where Self: Pointer`
  - `fn fmt_upper_exp(self) -> FmtUpperExp where Self: UpperExp`
  - `fn fmt_upper_hex(self) -> FmtUpperHex where Self: UpperHex`
  - `fn fmt_list(self) -> FmtList where &'a Self: for<'a> IntoIterator`

- `impl<T> From<T> for T`
  - `fn from(t: T) -> T`

- `impl<T, W> HasTypeWitness<W> for T where W: MakeTypeWitness, T: ?Sized`
  - `const WITNESS: W = W::MAKE`

- `impl<T> Identity for T where T: ?Sized`
  - `const TYPE_EQ: TypeEq<Self, <Self as Identity>::Type> = TypeEq::NEW`
  - `type Type = T`

- `impl<T> Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`

- `impl<T, U> Into<U> for T where U: From<T>`
  - `fn into(self) -> U`

- `impl<T> IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either<Self, Self>`
  - `fn into_either_with<F>(self, into_left: F) -> Either<Self, Self> where F: FnOnce(&Self) -> bool`

- `impl<Unshared, Shared> IntoShared<Shared> for Unshared where Shared: FromUnshared<Unshared>`
  - `fn into_shared(self) -> Shared`

- `impl<T> LayoutRaw for T`
  - `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`

- `impl<T, N1, N2> Niching<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching<T>, N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

- `impl<T> Pipe for T where T: ?Sized`
  - `fn pipe<R>(self, func: impl FnOnce(Self) -> R) -> R where Self: Sized`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R where R: 'a`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R where R: 'a`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R where Self: Borrow<B>, B: 'a + ?Sized, R: 'a`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R where Self: AsRef<U>, U: 'a + ?Sized, R: 'a`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R where Self: AsMut<U>, U: 'a + ?Sized, R: 'a`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R where Self: Deref<Target = T>, T: 'a + ?Sized, R: 'a`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a`

- `impl<T> Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: <T as Pointable>::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`

- `impl<T> Pointee for T`
  - `type Metadata = ()`

- `impl<T> PolicyExt for T where T: ?Sized`
  - `fn and<P>(self, other: P) -> And<Self, P> where T: Policy, P: Policy`
  - `fn or<P>(self, other: P) -> Or<Self, P> where T: Policy, P: Policy`

- `impl<T> Same for T`
  - `type Output = T`

- `impl<T> Tap for T`
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow<B>(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`
  - `fn tap_borrow_mut<B>(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`
  - `fn tap_ref<R>(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`
  - `fn tap_ref_mut<R>(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`
  - `fn tap_deref<T>(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized`
  - `fn tap_deref_mut<T>(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized`
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg<B>(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`
  - `fn tap_borrow_mut_dbg<B>(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`
  - `fn tap_ref_dbg<R>(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`
  - `fn tap_ref_mut_dbg<R>(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`
  - `fn tap_deref_dbg<T>(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized`
  - `fn tap_deref_mut_dbg<T>(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized`

- `impl<T> ToString for T where T: Display + ?Sized`
  - `fn to_string(&self) -> String`

- `impl<T> TryConv for T`
  - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error> where Self: TryInto<T>`

- `impl<T, U> TryFrom<U> for T where U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>`

- `impl<T, U> TryInto<U> for T where U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`

- `impl<T, U> TryInto<U> for T where U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>> where T: 'async_trait`

- `impl<T, V> VZip<V> for T where V: MultiLane`
  - `fn vzip(self) -> V`

- `impl<T> WithSubscriber for T`
  - `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self> where S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch<Self>`

- `impl<T> ErasedDestructor for T where T: 'static`

- `impl<T> MaybeSend for T where T: Send`

- `impl<T> MaybeSend for T where T: Send`

- `impl<E> ResultError for E where E: Send + Debug + Sync`
