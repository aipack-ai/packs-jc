# ConnectRequest

**Module:** [lancedb::connection](index.html) (lancedb 0.30.0)

A request to connect to a database.

## Fields

- `uri: String` – Database URI. Accepted formats:
  - `/path/to/database` – local database on file system.
  - `s3://bucket/path/to/database` or `gs://bucket/path/to/database` – database on cloud object store.
  - `db://dbname` – LanceDB Cloud.
- `client_config: [ClientConfig](../remote/struct.ClientConfig.html)` – Client configuration.
- `options: HashMap<String, String>` – Database specific options.
- `namespace_client_properties: HashMap<String, String>` – Extra properties for the equivalent namespace client.
- `manifest_enabled: bool` – Use directory namespace manifests as the source of truth for native LanceDB table metadata.
- `read_consistency_interval: Option<Duration>` – Interval at which to check for updates from other processes.
- `session: Option<Arc<[Session](../struct.Session.html)>>` – Optional session for object stores and caching.

## Implementations

### impl [Clone](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html) for ConnectRequest

- `fn clone(&self) -> ConnectRequest`
- `fn clone_from(&mut self, source: &Self)`

### impl [Debug](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for ConnectRequest

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

## Auto Trait Implementations

- `impl Freeze for ConnectRequest`
- `impl !RefUnwindSafe for ConnectRequest`
- `impl Send for ConnectRequest`
- `impl Sync for ConnectRequest`
- `impl Unpin for ConnectRequest`
- `impl UnsafeUnpin for ConnectRequest`
- `impl !UnwindSafe for ConnectRequest`

## Blanket Implementations

- `impl<T> Any for T where T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `impl<T> ArchivePointee for T`
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &<ArchivePointee>::ArchivedMetadata) -> <Pointee>::Metadata`
- `impl<T> Borrow<T> for T where T: ?Sized`
  - `fn borrow(&self) -> &T`
- `impl<T> BorrowMut<T> for T where T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl<T> CloneToUninit for T where T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl<T> Conv for T`
  - `fn conv(self) -> T where Self: Into<T>`
- `impl<T> DropFlavorWrapper<T> for T`
  - `type Flavor = MayDrop`
- `impl<T> DynClone for T where T: Clone`
  - `fn __clone_box(&self, _: Private) -> *mut ()`
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
- `impl<T> FromRef<T> for T where T: Clone`
  - `fn from_ref(input: &T) -> T`
- `impl<T, W> HasTypeWitness<W> for T where W: MakeTypeWitness, T: ?Sized`
  - `const WITNESS: W = W::MAKE`
- `impl<T> Identity for T where T: ?Sized`
  - `const TYPE_EQ: TypeEq<Identity::Type, T> = TypeEq::NEW`
  - `type Type = T`
- `impl<T> Instrument for T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- `impl<T, U> Into<U> for T where U: From<T>`
  - `fn into(self) -> U`
- `impl<T> IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`
- `impl IntoShared<Shared> for Unshared where Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`
- `impl<T> LayoutRaw for T`
  - `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `impl<T, N1, N2> Niching<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching, N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- `impl<T> Pipe for T where T: ?Sized`
  - `fn pipe(self, func: impl FnOnce(Self) -> R) -> R where Self: Sized`
  - `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R where R: 'a`
  - `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R where R: 'a`
  - `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R where Self: Borrow<B>, B: 'a + ?Sized, R: 'a`
  - `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a`
  - `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R where Self: AsRef<U>, U: 'a + ?Sized, R: 'a`
  - `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R where Self: AsMut<U>, U: 'a + ?Sized, R: 'a`
  - `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R where Self: Deref<Target=T>, T: 'a + ?Sized, R: 'a`
  - `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a`
- `impl<T> Pointable for T`
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: <Pointable>::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- `impl<T> Pointee for T`
  - `type Metadata = ()`
- `impl<T> PolicyExt for T where T: ?Sized`
  - `fn and(self, other: P) -> And where T: Policy, P: Policy`
  - `fn or(self, other: P) -> Or where T: Policy, P: Policy`
- `impl<T> Same for T`
  - `type Output = T`
- `impl<T> Tap for T`
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target=T>, T: ?Sized`
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized`
  - `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
  - `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
  - `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized`
  - `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized`
  - `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized`
  - `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized`
  - `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target=T>, T: ?Sized`
  - `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized`
- `impl<T> ToOwned for T where T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `impl<T> TryConv for T`
  - `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error> where Self: TryInto<T>`
- `impl<T, U> TryFrom<U> for T where U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, <TryFrom<U> as TryFrom>::Error>`
- `impl<T, U> TryInto<U> for T where U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
- `impl<T, U> TryInto<U> for T where U: TryFrom<T>` (async-convert)
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>> where T: 'async_trait`
- `impl<T, V> VZip<V> for T where V: MultiLane`
  - `fn vzip(self) -> V`
- `impl<T> WithSubscriber for T`
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch`
- `impl<T> ErasedDestructor for T where T: 'static`
- `impl<T> MaybeSend for T where T: Send` (from opendal-core)
- `impl<T> MaybeSend for T where T: Send` (from reqsign-core)
- `impl<E> ResultError for E where E: Send + Debug + Sync`
- `impl<T> ResultType for T where T: Send + Clone + Sync + Debug`

## Struct Definition (source)

```rust
pub struct ConnectRequest {
    pub uri: String,
    pub client_config: ClientConfig,
    pub options: HashMap<String, String>,
    pub namespace_client_properties: HashMap<String, String>,
    pub manifest_enabled: bool,
    pub read_consistency_interval: Option<Duration>,
    pub session: Option<Arc<Session>>,
}
```
