# MirroringObjectStoreWrapper in lancedb::io::object_store - Rust

## Struct: MirroringObjectStoreWrapper

**Source:** [lancedb/io/object_store.rs lines 168–170](../../../src/lancedb/io/object_store.rs.html#168-170)

```text
pub struct MirroringObjectStoreWrapper { /* private fields */ }
```

## Associated Functions

### `new`

**Source:** [lancedb/io/object_store.rs lines 173–175](../../../src/lancedb/io/object_store.rs.html#173-175)

```text
pub fn new(secondary: Arc<dyn ObjectStore>) -> Self
```

## Trait Implementations

### `impl Debug for MirroringObjectStoreWrapper`

**Source:** [lancedb/io/object_store.rs line 167](../../../src/lancedb/io/object_store.rs.html#167)

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `impl WrappingObjectStore for MirroringObjectStoreWrapper`

**Source:** [lancedb/io/object_store.rs lines 178–185](../../../src/lancedb/io/object_store.rs.html#178-185)

```text
fn wrap(
    &self,
    _store_prefix: &str,
    primary: Arc<dyn ObjectStore>,
) -> Arc<dyn ObjectStore>
```

Wrap an object store with additional functionality.

## Auto Trait Implementations

- `impl Freeze for MirroringObjectStoreWrapper`
- `impl !RefUnwindSafe for MirroringObjectStoreWrapper`
- `impl Send for MirroringObjectStoreWrapper`
- `impl Sync for MirroringObjectStoreWrapper`
- `impl Unpin for MirroringObjectStoreWrapper`
- `impl UnsafeUnpin for MirroringObjectStoreWrapper`
- `impl !UnwindSafe for MirroringObjectStoreWrapper`

## Blanket Implementations

### `impl Any for T`

**Source:** [core::any.rs line 141](https://doc.rust-lang.org/nightly/src/core/any.rs.html#141)

```text
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### `impl ArchivePointee for T`

**Source:** [rkyv::impls::core::mod.rs line 55](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#55)

- type `ArchivedMetadata` = `()`
- `fn pointer_metadata(_: &<Self as ArchivePointee>::ArchivedMetadata) -> <Self as Pointee>::Metadata`

### `impl Borrow<T> for T`

**Source:** [core::borrow.rs line 212](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#212)

```text
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `impl BorrowMut<T> for T`

**Source:** [core::borrow.rs line 221](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#221)

```text
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `impl Conv for T`

**Source:** [tap::conv.rs line 58](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#58)

```text
fn conv(self) -> T
where Self: Into<T>
```

Converts `self` into `T` using `Into`.

### `impl DropFlavorWrapper<T> for T`

**Source:** [konst::drop_flavor.rs line 123](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/src/konst/drop_flavor.rs.html#123)

- type `Flavor` = `MayDrop`

### `impl ErasedDestructor for T`

**Source:** [yoke::erased.rs line 22](https://docs.rs/yoke/0.8.2/x86_64-unknown-linux-gnu/src/yoke/erased.rs.html#22)

### `impl FmtForward for T`

**Source:** [wyz::fmt.rs line 114](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/src/wyz/fmt.rs.html#114)

Methods:
- `fn fmt_binary(self) -> FmtBinary` where Self: Binary
- `fn fmt_display(self) -> FmtDisplay` where Self: Display
- `fn fmt_lower_exp(self) -> FmtLowerExp` where Self: LowerExp
- `fn fmt_lower_hex(self) -> FmtLowerHex` where Self: LowerHex
- `fn fmt_octal(self) -> FmtOctal` where Self: Octal
- `fn fmt_pointer(self) -> FmtPointer` where Self: Pointer
- `fn fmt_upper_exp(self) -> FmtUpperExp` where Self: UpperExp
- `fn fmt_upper_hex(self) -> FmtUpperHex` where Self: UpperHex
- `fn fmt_list(self) -> FmtList` where &'a Self: IntoIterator

### `impl From<T> for T`

**Source:** [core::convert/mod.rs line 785](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#785)

```text
fn from(t: T) -> T
```

Returns the argument unchanged.

### `impl HasTypeWitness<W> for T`

**Source:** [typewit::type_witness_traits.rs line 106](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_witness_traits.rs.html#106)

- const `WITNESS`: `W`

### `impl Identity for T`

**Source:** [typewit::type_identity.rs line 77](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_identity.rs.html#77)

- const `TYPE_EQ`: `TypeEq<Self::Type>`
- type `Type` = T

### `impl Instrument for T`

**Source:** [tracing::instrument.rs line 325](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#325)

Methods:
- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### `impl Into<U> for T`

**Source:** [core::convert/mod.rs line 767](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#767)

```text
fn into(self) -> U
```

Calls `U::from(self)`.

### `impl IntoEither for T`

**Source:** [either::into_either.rs line 64](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/src/either/into_either.rs.html#64)

Methods:
- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### `impl IntoShared<Shared> for Unshared`

**Source:** [aws-smithy-runtime-api::shared.rs line 114](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/src/aws_smithy_runtime_api/shared.rs.html#114)

```text
fn into_shared(self) -> Shared
```

### `impl LayoutRaw for T`

**Source:** [rkyv::impls::core/mod.rs line 30](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#30)

```text
fn layout_raw(_: <Self as Pointee>::Metadata) -> Result<Layout, LayoutError>
```

### `impl MaybeSend for T` (two implementations)

- **Source (opendal):** [opendal_core::raw::futures_util.rs line 62](https://docs.rs/opendal-core/0.56.0/x86_64-unknown-linux-gnu/src/opendal_core/raw/futures_util.rs.html#62)
- **Source (reqsign):** [reqsign_core::futures_util.rs line 39](https://docs.rs/reqsign-core/3.0.0/x86_64-unknown-linux-gnu/src/reqsign_core/futures_util.rs.html#39)

### `impl Niching<NichedOption<T, N1>> for N2`

**Source:** [rkyv::impls::core/with/niching.rs line 132](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/with/niching.rs.html#132)

- `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
- `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

### `impl Pipe for T`

**Source:** [tap::pipe.rs line 234](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/pipe.rs.html#234)

Methods:
- `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
- `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
- `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
- `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
- `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
- `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
- `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
- `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
- `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`

### `impl Pointable for T`

**Source:** [crossbeam-epoch::atomic.rs line 194](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/src/crossbeam_epoch/atomic.rs.html#194)

- const `ALIGN`: usize
- type `Init` = T
- `unsafe fn init(init: <Self as Pointable>::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### `impl Pointee for T`

**Source:** [ptr_meta::lib.rs line 141](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/src/ptr_meta/lib.rs.html#141)

- type `Metadata` = `()`

### `impl PolicyExt for T`

**Source:** [tower-http::follow_redirect::policy/mod.rs line 171](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/src/tower_http/follow_redirect/policy/mod.rs.html#171)

Methods:
- `fn and(self, other: P) -> And<P>`
- `fn or(self, other: P) -> Or<P>`

### `impl ResultError for E`

**Source:** [xet-runtime::singleflight.rs line 73](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/src/xet_runtime/utils/singleflight.rs.html#73)

### `impl Same for T`

**Source:** [typenum::type_operators.rs line 34](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/src/typenum/type_operators.rs.html#34)

- type `Output` = T

### `impl Tap for T`

**Source:** [tap::tap.rs line 329](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/tap.rs.html#329)

Methods:
- `fn tap(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>
- `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>
- `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>
- `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>
- `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` where Self: Deref
- `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut
- Debug variants: `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`

### `impl TryConv for T`

**Source:** [tap::conv.rs line 87](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#87)

```text
fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>
```

### `impl TryFrom<U> for T`

**Source:** [core::convert/mod.rs line 827](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#827)

- type `Error` = `Infallible`
- `fn try_from(value: U) -> Result<T, <Self as TryFrom<U>>::Error>`

### `impl TryInto<U> for T` (two implementations)

- **First (core):** [core::convert/mod.rs line 811](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#811)
  - type `Error` = `<U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <Self as TryInto<U>>::Error>`
- **Second (async-convert):** [async_convert::lib.rs line 102](https://docs.rs/async-convert/1.0.0/x86_64-unknown-linux-gnu/src/async_convert/lib.rs.html#102)
  - type `Error` = `<U as TryFrom<T>>::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <Self as TryInto<U>>::Error>> + 'async_trait>>`

### `impl VZip<V> for T`

**Source:** [ppv-lite86::types.rs line 221](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/src/ppv_lite86/types.rs.html#221)

```text
fn vzip(self) -> V
```

### `impl WithSubscriber for T`

**Source:** [tracing::instrument.rs line 393](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#393)

Methods:
- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: Into<Dispatch>
- `fn with_current_subscriber(self) -> WithDispatch`
