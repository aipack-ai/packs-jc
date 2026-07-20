# AnyQuery

**lancedb 0.30.0** – Enum in `lancedb::table::query` – Copy item path

[Source](../../../src/lancedb/table/query.rs.html#33-36)

```rust
pub enum AnyQuery {
    Query(QueryRequest),
    VectorQuery(VectorQueryRequest),
}
```

## Variants

- **Query**([QueryRequest](../../query/struct.QueryRequest.html "struct lancedb::query::QueryRequest"))
- **VectorQuery**([VectorQueryRequest](../../query/struct.VectorQueryRequest.html "struct lancedb::query::VectorQueryRequest"))

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html) for AnyQuery

[Source](../../../src/lancedb/table/query.rs.html#32)

- `fn clone(&self) -> AnyQuery` – Returns a duplicate of the value. (1.0.0, const: unstable)
- `fn clone_from(&mut self, source: &Self)` – Performs copy-assignment from `source`.

### impl [Debug](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for AnyQuery

[Source](../../../src/lancedb/table/query.rs.html#32)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` – Formats the value using the given formatter.

## Auto Trait Implementations

- ! [RefUnwindSafe](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.RefUnwindSafe.html)
- ! [UnwindSafe](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.UnwindSafe.html)
- [Freeze](https://doc.rust-lang.org/nightly/core/marker/trait.Freeze.html)
- [Send](https://doc.rust-lang.org/nightly/core/marker/trait.Send.html)
- [Sync](https://doc.rust-lang.org/nightly/core/marker/trait.Sync.html)
- [Unpin](https://doc.rust-lang.org/nightly/core/marker/trait.Unpin.html)
- [UnsafeUnpin](https://doc.rust-lang.org/nightly/core/marker/trait.UnsafeUnpin.html)

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/nightly/core/any/trait.Any.html) for T where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId` – Gets the `TypeId` of `self`.

### impl [ArchivePointee](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.ArchivePointee.html) for T

- type `ArchivedMetadata` = `()`
- `fn pointer_metadata(_: &ArchivedMetadata) -> <Pointee>::Metadata` – Converts some archived metadata to the pointer metadata for itself.

### impl [Borrow](https://doc.rust-lang.org/nightly/core/borrow/trait.Borrow.html) for T where T: ?Sized

- `fn borrow(&self) -> &T` – Immutably borrows from an owned value.

### impl [BorrowMut](https://doc.rust-lang.org/nightly/core/borrow/trait.BorrowMut.html) for T where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T` – Mutably borrows from an owned value.

### impl [CloneToUninit](https://doc.rust-lang.org/nightly/core/clone/trait.CloneToUninit.html) for T where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)` – Performs copy-assignment from `self` to `dest`.

### impl [Conv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.Conv.html) for T

- `fn conv(self) -> T` where Self: Into<T> – Converts `self` into `T` using `Into`.

### impl [DropFlavorWrapper](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/konst/drop_flavor/trait.DropFlavorWrapper.html) for T

- type `Flavor` = `MayDrop`

### impl [DynClone](https://docs.rs/dyn-clone/1.0.20/x86_64-unknown-linux-gnu/dyn_clone/trait.DynClone.html) for T where T: Clone

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl [FmtForward](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html) for T

- Methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list`

### impl [From](https://doc.rust-lang.org/nightly/core/convert/trait.From.html) for T

- `fn from(t: T) -> T` – Returns the argument unchanged.

### impl [FromRef](https://docs.rs/axum-core/0.4.5/x86_64-unknown-linux-gnu/axum_core/extract/from_ref/trait.FromRef.html) for T where T: Clone

- `fn from_ref(input: &T) -> T` – Converts to this type from a reference to the input type.

### impl [HasTypeWitness](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_witness_traits/trait.HasTypeWitness.html) for T where W: MakeTypeWitness, T: ?Sized

- const `WITNESS`: W = W::MAKE

### impl [Identity](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_identity/trait.Identity.html) for T where T: ?Sized

- const `TYPE_EQ`: TypeEq<Self::Type> = TypeEq::NEW
- type `Type` = T

### impl [Instrument](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.Instrument.html) for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl [Into](https://doc.rust-lang.org/nightly/core/convert/trait.Into.html) for T where U: From<T>

- `fn into(self) -> U` – Calls `U::from(self)`.

### impl [IntoEither](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/either/into_either/trait.IntoEither.html) for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either` where F: FnOnce(&Self) -> bool

### impl [IntoShared](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/aws_smithy_runtime_api/shared/trait.IntoShared.html) for Unshared where Shared: FromUnshared

- `fn into_shared(self) -> Shared`

### impl [LayoutRaw](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.LayoutRaw.html) for T

- `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>` – Returns the layout of the type.

### impl [Niching](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/niche/niching/trait.Niching.html)<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching, N2: Niching

- `unsafe fn is_niched(niched: *const NichedOption) -> bool`
- `fn resolve_niched(out: Place<NichedOption>)`

### impl [Pipe](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html) for T where T: ?Sized

- Methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`

### impl [Pointable](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html) for T

- const `ALIGN`: usize
- type `Init` = T
- `unsafe fn init(init: <Pointable>::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### impl [Pointee](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/ptr_meta/trait.Pointee.html) for T

- type `Metadata` = `()`

### impl [PolicyExt](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/tower_http/follow_redirect/policy/trait.PolicyExt.html) for T where T: ?Sized

- `fn and(self, other: P) -> And` where T: Policy, P: Policy
- `fn or(self, other: P) -> Or` where T: Policy, P: Policy

### impl [Same](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/typenum/type_operators/trait.Same.html) for T

- type `Output` = T

### impl [Tap](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html) for T

- Methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, plus debug variants

### impl [ToOwned](https://doc.rust-lang.org/nightly/alloc/borrow/trait.ToOwned.html) for T where T: Clone

- type `Owned` = T
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl [TryConv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.TryConv.html) for T

- `fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>` where Self: TryInto<T>

### impl [TryFrom](https://doc.rust-lang.org/nightly/core/convert/trait.TryFrom.html) for T where U: Into<T>

- type `Error` = Infallible
- `fn try_from(value: U) -> Result<T, Self::Error>` – Performs the conversion.

### impl [TryInto](https://doc.rust-lang.org/nightly/core/convert/trait.TryInto.html) for T where U: TryFrom<T>

- type `Error` = <U as TryFrom<T>>::Error
- `fn try_into(self) -> Result<U, Self::Error>` – Performs the conversion.

### impl [TryInto](https://docs.rs/async-convert/1.0.0/x86_64-unknown-linux-gnu/async_convert/trait.TryInto.html) for T (async)

- type `Error` = <U as TryFrom<T>>::Error
- `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>` where T: 'async_trait

### impl [VZip](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/ppv_lite86/types/trait.VZip.html) for T where V: MultiLane

- `fn vzip(self) -> V`

### impl [WithSubscriber](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.WithSubscriber.html) for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: Into<Dispatch>
- `fn with_current_subscriber(self) -> WithDispatch`

### impl [ErasedDestructor](https://docs.rs/yoke/0.8.2/x86_64-unknown-linux-gnu/yoke/erased/trait.ErasedDestructor.html) for T where T: 'static

### impl [MaybeSend](https://docs.rs/opendal-core/0.56.0/x86_64-unknown-linux-gnu/opendal_core/raw/futures_util/trait.MaybeSend.html) for T where T: Send

### impl [MaybeSend](https://docs.rs/reqsign-core/3.0.0/x86_64-unknown-linux-gnu/reqsign_core/futures_util/trait.MaybeSend.html) for T where T: Send

### impl [ResultError](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/xet_runtime/utils/singleflight/trait.ResultError.html) for E where E: Send + Debug + Sync

### impl [ResultType](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/xet_runtime/utils/singleflight/trait.ResultType.html) for T where T: Send + Clone + Sync + Debug
