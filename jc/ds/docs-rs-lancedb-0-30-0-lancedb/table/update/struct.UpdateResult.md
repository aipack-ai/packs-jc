# Struct UpdateResult

[In `lancedb::table::update`](index.html) | [Source](../../../src/lancedb/table/update.rs.html#15-21)

The result of an update operation.

## Struct Definition

```rust
pub struct UpdateResult {
    pub rows_updated: u64,
    pub version: u64,
}
```

## Fields

- `rows_updated`: [`u64`](https://doc.rust-lang.org/nightly/std/primitive.u64.html) – The number of rows updated.
- `version`: [`u64`](https://doc.rust-lang.org/nightly/std/primitive.u64.html) – The commit version associated with the operation.

## Trait Implementations

### `impl Clone for UpdateResult`

[Source](../../../src/lancedb/table/update.rs.html#14)

```rust
fn clone(&self) -> UpdateResult
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for UpdateResult`

[Source](../../../src/lancedb/table/update.rs.html#14)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Default for UpdateResult`

[Source](../../../src/lancedb/table/update.rs.html#14)

```rust
fn default() -> UpdateResult
```

### `impl<'de> Deserialize<'de> for UpdateResult`

[Source](../../../src/lancedb/table/update.rs.html#14)

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>,
```

### `impl PartialEq for UpdateResult`

[Source](../../../src/lancedb/table/update.rs.html#14)

```rust
fn eq(&self, other: &UpdateResult) -> bool
fn ne(&self, other: &UpdateResult) -> bool
```

### `impl Serialize for UpdateResult`

[Source](../../../src/lancedb/table/update.rs.html#14)

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer,
```

### `impl Eq for UpdateResult`

[Source](../../../src/lancedb/table/update.rs.html#14)

No methods.

### `impl StructuralPartialEq for UpdateResult`

[Source](../../../src/lancedb/table/update.rs.html#14)

No methods.

## Auto Trait Implementations

- `impl Freeze for UpdateResult`
- `impl RefUnwindSafe for UpdateResult`
- `impl Send for UpdateResult`
- `impl Sync for UpdateResult`
- `impl Unpin for UpdateResult`
- `impl UnsafeUnpin for UpdateResult`
- `impl UnwindSafe for UpdateResult`

## Blanket Implementations

### `impl Any for T` where T: 'static + ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/any.rs.html#141)

```rust
fn type_id(&self) -> TypeId
```

### `impl ArchivePointee for T`

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#55)

```rust
type ArchivedMetadata = ()
fn pointer_metadata(_: &<T as Pointee>::ArchivedMetadata) -> <T as Pointee>::Metadata
```

### `impl Borrow<T> for T` where T: ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#212)

```rust
fn borrow(&self) -> &T
```

### `impl BorrowMut<T> for T` where T: ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#221)

```rust
fn borrow_mut(&mut self) -> &mut T
```

### `impl CloneToUninit for T` where T: Clone

[Source](https://doc.rust-lang.org/nightly/src/core/clone.rs.html#631)

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

### `impl Conv for T`

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#58)

```rust
fn conv(self) -> T
where Self: Into<T>
```

### `impl DropFlavorWrapper<T> for T`

[Source](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/src/konst/drop_flavor.rs.html#123)

```rust
type Flavor = MayDrop
```

### `impl DynClone for T` where T: Clone

[Source](https://docs.rs/dyn-clone/1.0.20/x86_64-unknown-linux-gnu/src/dyn_clone/lib.rs.html#196-198)

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### `impl DynEq for T` where T: Eq + Any

[Source](https://docs.rs/datafusion-expr-common/53.1.0/x86_64-unknown-linux-gnu/src/datafusion_expr_common/dyn_eq.rs.html#37)

```rust
fn dyn_eq(&self, other: &(dyn Any + 'static)) -> bool
```

### `impl Equivalent<K> for Q` (multiple)

[Source](https://docs.rs/hashbrown/0.15.5/x86_64-unknown-linux-gnu/src/hashbrown/lib.rs.html#151-154) and others

```rust
fn equivalent(&self, key: &K) -> bool
```

### `impl ErasedDestructor for T` where T: 'static

[Source](https://docs.rs/yoke/0.8.2/x86_64-unknown-linux-gnu/src/yoke/erased.rs.html#22)

No methods.

### `impl FmtForward for T`

[Source](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/src/wyz/fmt.rs.html#114)

```rust
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

### `impl From<T> for T`

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#785)

```rust
fn from(t: T) -> T
```

### `impl FromRef<T> for T` where T: Clone

[Source](https://docs.rs/axum-core/0.4.5/x86_64-unknown-linux-gnu/src/axum_core/extract/from_ref.rs.html#18-20)

```rust
fn from_ref(input: &T) -> T
```

### `impl HasTypeWitness<W> for T`

[Source](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_witness_traits.rs.html#106-109)

```rust
const WITNESS: W = W::MAKE
```

### `impl Identity for T` where T: ?Sized

[Source](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_identity.rs.html#77)

```rust
const TYPE_EQ: TypeEq<Self, Self::Type> = TypeEq::NEW
type Type = T
```

### `impl Instrument for T`

[Source](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#325)

```rust
fn instrument(self, span: Span) -> Instrumented
fn in_current_span(self) -> Instrumented
```

### `impl Into<U> for T` where U: From<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#767-769)

```rust
fn into(self) -> U
```

### `impl IntoEither for T`

[Source](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/src/either/into_either.rs.html#64)

```rust
fn into_either(self, into_left: bool) -> Either
fn into_either_with(self, into_left: F) -> Either
where F: FnOnce(&Self) -> bool
```

### `impl IntoShared<Shared> for Unshared`

[Source](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/src/aws_smithy_runtime_api/shared.rs.html#114-116)

```rust
fn into_shared(self) -> Shared
```

### `impl LayoutRaw for T`

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#30)

```rust
fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>
```

### `impl Niching<NichedOption<T, N1>> for N2`

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/with/niching.rs.html#132-136)

```rust
unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool
fn resolve_niched(out: Place<NichedOption<T, N1>>)
```

### `impl Pipe for T` where T: ?Sized

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/pipe.rs.html#234)

```rust
fn pipe(self, func: impl FnOnce(Self) -> R) -> R
fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R
fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R
fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R where Self: Borrow<B>, B: 'a + ?Sized, R: 'a
fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a
fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R where Self: AsRef<U>, U: 'a + ?Sized, R: 'a
fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R where Self: AsMut<U>, U: 'a + ?Sized, R: 'a
fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R where Self: Deref<Target = T>, T: 'a + ?Sized, R: 'a
fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a
```

### `impl Pointable for T`

[Source](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/src/crossbeam_epoch/atomic.rs.html#194)

```rust
const ALIGN: usize
type Init = T
unsafe fn init(init: Self::Init) -> usize
unsafe fn deref<'a>(ptr: usize) -> &'a T
unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
unsafe fn drop(ptr: usize)
```

### `impl Pointee for T`

[Source](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/src/ptr_meta/lib.rs.html#141)

```rust
type Metadata = ()
```

### `impl PolicyExt for T` where T: ?Sized

[Source](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/src/tower_http/follow_redirect/policy/mod.rs.html#171-173)

```rust
fn and(self, other: P) -> And<T, P>
fn or(self, other: P) -> Or<T, P>
```

### `impl Same for T`

[Source](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/src/typenum/type_operators.rs.html#34)

```rust
type Output = T
```

### `impl Tap for T`

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/tap.rs.html#329)

```rust
fn tap(self, func: impl FnOnce(&Self)) -> Self
fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self
fn tap_borrow(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized
fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized
fn tap_ref(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized
fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized
fn tap_deref(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized
fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized
fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self
fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self
fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized
fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized
fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized
fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized
fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized
fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized
```

### `impl ToOwned for T` where T: Clone

[Source](https://doc.rust-lang.org/nightly/src/alloc/borrow.rs.html#72-74)

```rust
type Owned = T
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### `impl TryConv for T`

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#87)

```rust
fn try_conv(self) -> Result<T, E> where Self: TryInto<T>
```

### `impl TryFrom<U> for T` where U: Into<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#827-829)

```rust
type Error = Infallible
fn try_from(value: U) -> Result<T, Self::Error>
```

### `impl TryInto<U> for T` where U: TryFrom<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#811-813)

```rust
type Error = <U as TryFrom<T>>::Error
fn try_into(self) -> Result<U, Self::Error>
```

### `impl TryInto<U> for T` (async) where U: TryFrom<T>

[Source](https://docs.rs/async-convert/1.0.0/x86_64-unknown-linux-gnu/src/async_convert/lib.rs.html#102-104)

```rust
type Error = <U as TryFrom<T>>::Error
fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>
```

### `impl VZip<V> for T` where V: MultiLane

[Source](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/src/ppv_lite86/types.rs.html#221-223)

```rust
fn vzip(self) -> V
```

### `impl WithSubscriber for T`

[Source](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#393)

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into<Dispatch>
fn with_current_subscriber(self) -> WithDispatch
```

### `impl Allocation for T` where T: RefUnwindSafe + Send + Sync

[Source](https://docs.rs/arrow-buffer/58.3.0/x86_64-unknown-linux-gnu/src/arrow_buffer/alloc/mod.rs.html#33)

No methods.

### `impl DeserializeOwned for T` where T: for<'de> Deserialize<'de>

[Source](https://docs.rs/serde_core/1.0.228/x86_64-unknown-linux-gnu/src/serde_core/de/mod.rs.html#633)

No methods.

### `impl MaybeSend for T` (multiple)

[Source](https://docs.rs/opendal-core/0.56.0/x86_64-unknown-linux-gnu/src/opendal_core/raw/futures_util.rs.html#62) and [Source](https://docs.rs/reqsign-core/3.0.0/x86_64-unknown-linux-gnu/src/reqsign_core/futures_util.rs.html#39)

No methods.

### `impl ResultError for E` where E: Send + Debug + Sync

[Source](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/src/xet_runtime/utils/singleflight.rs.html#73)

No methods.

### `impl ResultType for T` where T: Send + Clone + Sync + Debug

[Source](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/src/xet_runtime/utils/singleflight.rs.html#67)

No methods.
