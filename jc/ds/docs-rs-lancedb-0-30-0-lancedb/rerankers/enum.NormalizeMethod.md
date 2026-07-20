# NormalizeMethod

[Source](../../src/lancedb/rerankers.rs.html#22-25)

Enum lancedb::rerankers::NormalizeMethod

```rust
pub enum NormalizeMethod {
    Score,
    Rank,
}
```

## Variants

- **Score** – Normalize by score.
- **Rank** – Normalize by rank.

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html) for NormalizeMethod

```rust
fn clone(&self) -> NormalizeMethod
fn clone_from(&mut self, source: &Self)
```

### impl [Debug](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for NormalizeMethod

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### impl [Display](https://doc.rust-lang.org/nightly/core/fmt/trait.Display.html) for NormalizeMethod

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### impl [FromStr](https://doc.rust-lang.org/nightly/core/str/traits/trait.FromStr.html) for NormalizeMethod

```rust
type Err = Error
fn from_str(s: &str) -> Result
```

### impl [PartialEq](https://doc.rust-lang.org/nightly/core/cmp/trait.PartialEq.html) for NormalizeMethod

```rust
fn eq(&self, other: &NormalizeMethod) -> bool
fn ne(&self, other: &NormalizeMethod) -> bool
```

### impl [StructuralPartialEq](https://doc.rust-lang.org/nightly/core/marker/trait.StructuralPartialEq.html) for NormalizeMethod

## Auto Trait Implementations

- [Freeze](https://doc.rust-lang.org/nightly/core/marker/trait.Freeze.html)
- [RefUnwindSafe](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.RefUnwindSafe.html)
- [Send](https://doc.rust-lang.org/nightly/core/marker/trait.Send.html)
- [Sync](https://doc.rust-lang.org/nightly/core/marker/trait.Sync.html)
- [Unpin](https://doc.rust-lang.org/nightly/core/marker/trait.Unpin.html)
- [UnsafeUnpin](https://doc.rust-lang.org/nightly/core/marker/trait.UnsafeUnpin.html)
- [UnwindSafe](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.UnwindSafe.html)

## Blanket Implementations

- [Allocation](https://docs.rs/arrow-buffer/58.3.0/x86_64-unknown-linux-gnu/arrow_buffer/alloc/trait.Allocation.html) for T where T: RefUnwindSafe + Send + Sync
- [Any](https://doc.rust-lang.org/nightly/core/any/trait.Any.html) for T where T: 'static + ?Sized
- [ArchivePointee](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.ArchivePointee.html) for T
- [Borrow](https://doc.rust-lang.org/nightly/core/borrow/trait.Borrow.html) for T where T: ?Sized
- [BorrowMut](https://doc.rust-lang.org/nightly/core/borrow/trait.BorrowMut.html) for T where T: ?Sized
- [CloneToUninit](https://doc.rust-lang.org/nightly/core/clone/trait.CloneToUninit.html) for T where T: Clone
- [Conv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.Conv.html) for T
- [DropFlavorWrapper](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/konst/drop_flavor/trait.DropFlavorWrapper.html) for T
- [DynClone](https://docs.rs/dyn-clone/1.0.20/x86_64-unknown-linux-gnu/dyn_clone/trait.DynClone.html) for T where T: Clone
- [ErasedDestructor](https://docs.rs/yoke/0.8.2/x86_64-unknown-linux-gnu/yoke/erased/trait.ErasedDestructor.html) for T where T: 'static
- [FmtForward](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html) for T
- [From](https://doc.rust-lang.org/nightly/core/convert/trait.From.html) for T
- [FromRef](https://docs.rs/axum-core/0.4.5/x86_64-unknown-linux-gnu/axum_core/extract/from_ref/trait.FromRef.html) for T where T: Clone
- [HasTypeWitness](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_witness_traits/trait.HasTypeWitness.html) for T where W: MakeTypeWitness, T: ?Sized
- [Identity](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_identity/trait.Identity.html) for T where T: ?Sized
- [Instrument](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.Instrument.html) for T
- [Into](https://doc.rust-lang.org/nightly/core/convert/trait.Into.html) for T where U: From
- [IntoEither](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/either/into_either/trait.IntoEither.html) for T
- [IntoShared](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/aws_smithy_runtime_api/shared/trait.IntoShared.html) for Unshared where Shared: FromUnshared
- [LayoutRaw](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.LayoutRaw.html) for T
- [MaybeSend](https://docs.rs/opendal-core/0.56.0/x86_64-unknown-linux-gnu/opendal_core/raw/futures_util/trait.MaybeSend.html) for T where T: Send
- [Niching](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/niche/niching/trait.Niching.html) for N2 where T: SharedNiching, N1: Niching, N2: Niching
- [Pipe](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html) for T where T: ?Sized
- [Pointable](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html) for T
- [Pointee](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/ptr_meta/trait.Pointee.html) for T
- [PolicyExt](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/tower_http/follow_redirect/policy/trait.PolicyExt.html) for T where T: ?Sized
- [ResultError](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/xet_runtime/utils/singleflight/trait.ResultError.html) for E where E: Send + Debug + Sync
- [ResultType](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/xet_runtime/utils/singleflight/trait.ResultType.html) for T where T: Send + Clone + Sync + Debug
- [Same](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/typenum/type_operators/trait.Same.html) for T
- [Tap](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html) for T
- [ToOwned](https://doc.rust-lang.org/nightly/alloc/borrow/trait.ToOwned.html) for T where T: Clone
- [ToString](https://doc.rust-lang.org/nightly/alloc/string/trait.ToString.html) for T where T: Display + ?Sized
- [TryConv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.TryConv.html) for T
- [TryFrom](https://doc.rust-lang.org/nightly/core/convert/trait.TryFrom.html) for T where U: Into
- [TryInto](https://doc.rust-lang.org/nightly/core/convert/trait.TryInto.html) for T where U: TryFrom
- [TryInto](https://docs.rs/async-convert/1.0.0/x86_64-unknown-linux-gnu/async_convert/trait.TryInto.html) for T where U: TryFrom
- [VZip](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/ppv_lite86/types/trait.VZip.html) for T where V: MultiLane
- [WithSubscriber](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.WithSubscriber.html) for T
