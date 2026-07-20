# ConnectNamespaceBuilder

`lancedb::connection::ConnectNamespaceBuilder`

## Struct

```rust
pub struct ConnectNamespaceBuilder { /* private fields */ }
```

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L960-L969) (`lancedb-0.30.0`)

## Implementations

### `impl ConnectNamespaceBuilder`

#### `pub fn storage_option(self, key: impl Into<String>, value: impl Into<String>) -> Self`

Set an option for the storage layer. See available options at [LanceDB Storage](https://docs.lancedb.com/storage/).

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L988-L991)

#### `pub fn storage_options(self, pairs: impl IntoIterator<Item = (impl Into<String>, impl Into<String>)>) -> Self`

Set multiple options for the storage layer. See available options at [LanceDB Storage](https://docs.lancedb.com/storage/).

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L996-L1004)

#### `pub fn namespace_client_property(self, key: impl Into<String>, value: impl Into<String>) -> Self`

Set an additional namespace client property.

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L1007-L1015)

#### `pub fn namespace_client_properties(self, pairs: impl IntoIterator<Item = (impl Into<String>, impl Into<String>)>) -> Self`

Set multiple additional namespace client properties.

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L1018-L1027)

#### `pub fn read_consistency_interval(self, read_consistency_interval: Duration) -> Self`

The interval at which to check for updates from other processes. If left unset, consistency is not checked. For maximum read performance, this is the default. For strong consistency, set this to zero seconds. Then every read will check for updates from other processes. As a compromise, set this to a non-zero duration for eventual consistency.

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L1035-L1041)

#### `pub fn embedding_registry(self, registry: Arc<EmbeddingRegistry>) -> Self`

Provide a custom [`EmbeddingRegistry`](https://docs.rs/lancedb/0.30.0/lancedb/embeddings/trait.EmbeddingRegistry.html) to use for this connection.

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L1044-L1047)

#### `pub fn session(self, session: Arc<Session>) -> Self`

Set a custom session for object stores and caching. By default, a new session with default configuration will be created.

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L1054-L1057)

#### `pub fn pushdown_operation(self, operation: NamespaceClientPushdownOperation) -> Self`

Add operations to push down to the namespace server. Available operations:

- `NamespaceClientPushdownOperation::QueryTable` – Execute queries via `namespace.query_table()`
- `NamespaceClientPushdownOperation::CreateTable` – Execute table creation via `namespace.create_table()`

By default, no operations are pushed down (all executed locally).

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L1070-L1073)

#### `pub fn pushdown_operations(self, operations: impl IntoIterator<Item = NamespaceClientPushdownOperation>) -> Self`

Add multiple operations to push down to the namespace server. See [`pushdown_operation`](#method.pushdown_operation) for details.

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L1078-L1084)

#### `pub async fn execute(self) -> Result<Connection>`

Execute the connection.

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/connection.rs#L1087-L1111)

## Auto Trait Implementations

- `impl Freeze for ConnectNamespaceBuilder`
- `impl !RefUnwindSafe for ConnectNamespaceBuilder`
- `impl Send for ConnectNamespaceBuilder`
- `impl Sync for ConnectNamespaceBuilder`
- `impl Unpin for ConnectNamespaceBuilder`
- `impl UnsafeUnpin for ConnectNamespaceBuilder`
- `impl !UnwindSafe for ConnectNamespaceBuilder`

## Blanket Implementations

### `impl<T> Any for T` where `T: 'static + ?Sized`

```rust
fn type_id(&self) -> TypeId
```
[Source](https://doc.rust-lang.org/nightly/core/any/trait.Any.html#tymethod.type_id)

### `impl<T> ArchivePointee for T`

- Associated Type: `type ArchivedMetadata = ()`
- Method: `fn pointer_metadata(_: &<ArchivePointee>::ArchivedMetadata) -> <<T as Pointee>::Metadata>`

[Source](https://docs.rs/rkyv/0.8.16/)

### `impl<T> Borrow<T> for T` where `T: ?Sized`

```rust
fn borrow(&self) -> &T
```
[Source](https://doc.rust-lang.org/nightly/core/borrow/trait.Borrow.html#tymethod.borrow)

### `impl<T> BorrowMut<T> for T` where `T: ?Sized`

```rust
fn borrow_mut(&mut self) -> &mut T
```
[Source](https://doc.rust-lang.org/nightly/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### `impl<T> Conv for T`

```rust
fn conv(self) -> T where Self: Into<T>
```
[Source](https://docs.rs/tap/1.0.1/)

### `impl<T> DropFlavorWrapper<T> for T`

- Associated Type: `type Flavor = MayDrop`

[Source](https://docs.rs/konst/0.4.3/)

### `impl<T> FmtForward for T`

```rust
fn fmt_binary(self) -> FmtBinary where Self: Binary
fn fmt_display(self) -> FmtDisplay where Self: Display
fn fmt_lower_exp(self) -> FmtLowerExp where Self: LowerExp
fn fmt_lower_hex(self) -> FmtLowerHex where Self: LowerHex
fn fmt_octal(self) -> FmtOctal where Self: Octal
fn fmt_pointer(self) -> FmtPointer where Self: Pointer
fn fmt_upper_exp(self) -> FmtUpperExp where Self: UpperExp
fn fmt_upper_hex(self) -> FmtUpperHex where Self: UpperHex
fn fmt_list(self) -> FmtList where &'a Self: for<'a> IntoIterator
```
[Source](https://docs.rs/wyz/0.5.1/)

### `impl<T> From<T> for T`

```rust
fn from(t: T) -> T
```
[Source](https://doc.rust-lang.org/nightly/core/convert/trait.From.html#tymethod.from)

### `impl<T> HasTypeWitness<W> for T` where `W: MakeTypeWitness`, `T: ?Sized`

- Associated Constant: `const WITNESS: W = W::MAKE`

[Source](https://docs.rs/typewit/1.15.2/)

### `impl<T> Identity for T` where `T: ?Sized`

- Associated Constant: `const TYPE_EQ: TypeEq<Self::Type> = TypeEq::NEW`
- Associated Type: `type Type = T`

[Source](https://docs.rs/typewit/1.15.2/)

### `impl<T> Instrument for T`

```rust
fn instrument(self, span: Span) -> Instrumented
fn in_current_span(self) -> Instrumented
```
[Source](https://docs.rs/tracing/0.1.44/)

### `impl<T> Into<U> for T` where `U: From<T>`

```rust
fn into(self) -> U
```
[Source](https://doc.rust-lang.org/nightly/core/convert/trait.Into.html#tymethod.into)

### `impl<T> IntoEither for T`

```rust
fn into_either(self, into_left: bool) -> Either
fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool
```
[Source](https://docs.rs/either/1.15.0/)

### `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`

```rust
fn into_shared(self) -> Shared
```
[Source](https://docs.rs/aws-smithy-runtime-api/1.12.1/)

### `impl<T> LayoutRaw for T`

```rust
fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>
```
[Source](https://docs.rs/rkyv/0.8.16/)

### `impl Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching`, etc.

```rust
unsafe fn is_niched(niched: *const NichedOption<T>) -> bool
fn resolve_niched(out: Place<NichedOption<T>>)
```
[Source](https://docs.rs/rkyv/0.8.16/)

### `impl<T> Pipe for T` where `T: ?Sized`

```rust
fn pipe(self, func: impl FnOnce(Self) -> R) -> R where Self: Sized
fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R where R: 'a
fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R where R: 'a
fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R
    where Self: Borrow<B>, B: 'a + ?Sized, R: 'a
fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R
    where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a
fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R
    where Self: AsRef<U>, U: 'a + ?Sized, R: 'a
fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R
    where Self: AsMut<U>, U: 'a + ?Sized, R: 'a
fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R
    where Self: Deref<Target = T>, T: 'a + ?Sized, R: 'a
fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R
    where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a
```
[Source](https://docs.rs/tap/1.0.1/)

### `impl<T> Pointable for T`

- Associated Constant: `const ALIGN: usize`
- Associated Type: `type Init = T`
- Methods: `unsafe fn init(init: T) -> usize`, `unsafe fn deref<'a>(ptr: usize) -> &'a T`, `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`, `unsafe fn drop(ptr: usize)`

[Source](https://docs.rs/crossbeam-epoch/0.9.18/)

### `impl<T> Pointee for T`

- Associated Type: `type Metadata = ()`

[Source](https://docs.rs/ptr_meta/0.3.1/)

### `impl<T> PolicyExt for T` where `T: ?Sized`

```rust
fn and(self, other: P) -> And where T: Policy, P: Policy
fn or(self, other: P) -> Or where T: Policy, P: Policy
```
[Source](https://docs.rs/tower-http/0.5.2/)

### `impl<T> Same for T`

- Associated Type: `type Output = T`

[Source](https://docs.rs/typenum/1.20.0/)

### `impl<T> Tap for T`

[Source](https://docs.rs/tap/1.0.1/)
Includes methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, and their debug-only variants.

### `impl<T> TryConv for T`

```rust
fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error> where Self: TryInto<T>
```
[Source](https://docs.rs/tap/1.0.1/)

### `impl<T, U> TryFrom<U> for T` where `U: Into<T>`

- Associated Type: `type Error = Infallible`
- Method: `fn try_from(value: U) -> Result<T, Infallible>`

[Source](https://doc.rust-lang.org/nightly/core/convert/trait.TryFrom.html#tymethod.try_from)

### `impl<T, U> TryInto<U> for T` where `U: TryFrom<T>`

- Associated Type: `type Error = <U as TryFrom<T>>::Error`
- Method: `fn try_into(self) -> Result<U, Self::Error>`

[Source](https://doc.rust-lang.org/nightly/core/convert/trait.TryInto.html#tymethod.try_into)

### `impl<T, U> TryInto<U> for T` (async-convert) where `U: TryFrom<T>`

- Associated Type: `type Error = <U as TryFrom<T>>::Error`
- Method: `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`

[Source](https://docs.rs/async-convert/1.0.0/)

### `impl<T, V> VZip<V> for T` where `V: MultiLane`

```rust
fn vzip(self) -> V
```
[Source](https://docs.rs/ppv-lite86/0.2.21/)

### `impl<T> WithSubscriber for T`

```rust
fn with_subscriber(self, subscriber: impl Into<Dispatch>) -> WithDispatch
fn with_current_subscriber(self) -> WithDispatch
```
[Source](https://docs.rs/tracing/0.1.44/)

### `impl<T> ErasedDestructor for T` where `T: 'static`

[Source](https://docs.rs/yoke/0.8.2/)

### `impl<T> MaybeSend for T` where `T: Send` (multiple sources)

[Source](https://docs.rs/opendal-core/0.56.0/, https://docs.rs/reqsign-core/3.0.0/)
