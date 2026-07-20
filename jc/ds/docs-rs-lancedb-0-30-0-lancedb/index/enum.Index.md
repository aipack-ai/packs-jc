# Index

In [lancedb::index](index.html)

## Enum Definition

[Source](../../src/lancedb/index.rs.html#28-77)

```rust
pub enum Index {
    Auto,
    BTree(BTreeIndexBuilder),
    Bitmap(BitmapIndexBuilder),
    LabelList(LabelListIndexBuilder),
    FTS(FtsIndexBuilder),
    IvfFlat(IvfFlatIndexBuilder),
    IvfPq(IvfPqIndexBuilder),
    IvfSq(IvfSqIndexBuilder),
    IvfRq(IvfRqIndexBuilder),
    IvfHnswPq(IvfHnswPqIndexBuilder),
    IvfHnswSq(IvfHnswSqIndexBuilder),
    IvfHnswFlat(IvfHnswFlatIndexBuilder),
}
```

Supported index types.

## Variants [§](#variants)

- **Auto**
- **BTree**([BTreeIndexBuilder](scalar/struct.BTreeIndexBuilder.html)) - A `BTree` index is a sorted index on scalar columns. This index is good for scalar columns with mostly distinct values and does best when the query is highly selective. It can apply to numeric, temporal, and string columns. BTree index is useful to answer queries with equality (`=`), inequality (`>`, `>=`, `<`, `<=`), and range queries. This is the default index type for scalar columns.
- **Bitmap**([BitmapIndexBuilder](scalar/struct.BitmapIndexBuilder.html)) - A `Bitmap` index stores a bitmap for each distinct value in the column for every row. This index works best for low-cardinality columns, where the number of unique values is small (i.e., less than a few hundreds).
- **LabelList**([LabelListIndexBuilder](scalar/struct.LabelListIndexBuilder.html)) - [LabelListIndexBuilder](scalar/struct.LabelListIndexBuilder.html) is a scalar index that can be used on `List` columns to support queries with `array_contains_all` and `array_contains_any` using an underlying bitmap index.
- **FTS**([FtsIndexBuilder](scalar/struct.FtsIndexBuilder.html)) - Full text search index using bm25.
- **IvfFlat**([IvfFlatIndexBuilder](vector/struct.IvfFlatIndexBuilder.html)) - IVF index
- **IvfPq**([IvfPqIndexBuilder](vector/struct.IvfPqIndexBuilder.html)) - IVF index with Product Quantization
- **IvfSq**([IvfSqIndexBuilder](vector/struct.IvfSqIndexBuilder.html)) - IVF index with Scalar Quantization
- **IvfRq**([IvfRqIndexBuilder](vector/struct.IvfRqIndexBuilder.html)) - IVF index with RabitQ Quantization
- **IvfHnswPq**([IvfHnswPqIndexBuilder](vector/struct.IvfHnswPqIndexBuilder.html)) - IVF-HNSW index with Product Quantization. It is a variant of the HNSW algorithm that uses product quantization to compress the vectors.
- **IvfHnswSq**([IvfHnswSqIndexBuilder](vector/struct.IvfHnswSqIndexBuilder.html)) - IVF-HNSW index with Scalar Quantization. It is a variant of the HNSW algorithm that uses scalar quantization to compress the vectors.
- **IvfHnswFlat**([IvfHnswFlatIndexBuilder](vector/struct.IvfHnswFlatIndexBuilder.html)) - IVF-HNSW index without quantization. Stores raw vectors, providing the highest recall at the cost of more memory and disk space.

## Trait Implementations [§](#trait-implementations)

[Source](../../src/lancedb/index.rs.html#27)

### impl [Clone](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html) for [Index](enum.Index.html)

[Source](../../src/lancedb/index.rs.html#27)

#### fn [clone](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#tymethod.clone)(&self) -> [Index](enum.Index.html)

Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#tymethod.clone)

1.0.0 (const: [unstable](https://github.com/rust-lang/rust/issues/142757 "Tracking issue for const_clone")) · [Source](https://doc.rust-lang.org/nightly/src/core/clone.rs.html#245-247)

#### fn [clone\_from](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#method.clone_from)(&mut self, source: &Self)

Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#method.clone_from)

[Source](../../src/lancedb/index.rs.html#27)

### impl [Debug](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for [Index](enum.Index.html)

[Source](../../src/lancedb/index.rs.html#27)

#### fn [fmt](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/nightly/core/fmt/struct.Formatter.html) < '_ >) -> [Result](https://doc.rust-lang.org/nightly/core/fmt/type.Result.html)

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)

## Auto Trait Implementations [§](#synthetic-implementations)

- [Freeze](https://doc.rust-lang.org/nightly/core/marker/trait.Freeze.html) for [Index](enum.Index.html)
- [RefUnwindSafe](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.RefUnwindSafe.html) for [Index](enum.Index.html)
- [Send](https://doc.rust-lang.org/nightly/core/marker/trait.Send.html) for [Index](enum.Index.html)
- [Sync](https://doc.rust-lang.org/nightly/core/marker/trait.Sync.html) for [Index](enum.Index.html)
- [Unpin](https://doc.rust-lang.org/nightly/core/marker/trait.Unpin.html) for [Index](enum.Index.html)
- [UnsafeUnpin](https://doc.rust-lang.org/nightly/core/marker/trait.UnsafeUnpin.html) for [Index](enum.Index.html)
- [UnwindSafe](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.UnwindSafe.html) for [Index](enum.Index.html)

## Blanket Implementations [§](#blanket-implementations)

- [Allocation](https://docs.rs/arrow-buffer/58.3.0/x86_64-unknown-linux-gnu/arrow_buffer/alloc/trait.Allocation.html) for T where T: RefUnwindSafe + Send + Sync
- [Any](https://doc.rust-lang.org/nightly/core/any/trait.Any.html) for T where T: 'static + ?Sized
  - fn [type\_id](https://doc.rust-lang.org/nightly/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/nightly/core/any/struct.TypeId.html)
- [ArchivePointee](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.ArchivePointee.html) for T
  - type [ArchivedMetadata](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.ArchivePointee.html#associatedtype.ArchivedMetadata) = ()
  - fn [pointer\_metadata](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.ArchivePointee.html#tymethod.pointer_metadata)(_: &Self::ArchivedMetadata) -> <Self::Pointee as Pointee>::Metadata
- [Borrow](https://doc.rust-lang.org/nightly/core/borrow/trait.Borrow.html) for T where T: ?Sized
  - fn [borrow](https://doc.rust-lang.org/nightly/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> &T
- [BorrowMut](https://doc.rust-lang.org/nightly/core/borrow/trait.BorrowMut.html) for T where T: ?Sized
  - fn [borrow\_mut](https://doc.rust-lang.org/nightly/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> &mut T
- [CloneToUninit](https://doc.rust-lang.org/nightly/core/clone/trait.CloneToUninit.html) for T where T: Clone
  - unsafe fn [clone\_to\_uninit](https://doc.rust-lang.org/nightly/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)(&self, dest: *mut u8)
- [Conv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.Conv.html) for T
  - fn [conv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.Conv.html#method.conv)(self) -> T where Self: Into<T>
- [DropFlavorWrapper](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/konst/drop_flavor/trait.DropFlavorWrapper.html) for T
  - type [Flavor](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/konst/drop_flavor/trait.DropFlavorWrapper.html#associatedtype.Flavor) = MayDrop
- [DynClone](https://docs.rs/dyn-clone/1.0.20/x86_64-unknown-linux-gnu/dyn_clone/trait.DynClone.html) for T where T: Clone
  - fn [\_\_clone\_box](https://docs.rs/dyn-clone/1.0.20/x86_64-unknown-linux-gnu/dyn_clone/trait.DynClone.html#tymethod.__clone_box)(&self, \_: Private) -> *mut ()
- [ErasedDestructor](https://docs.rs/yoke/0.8.2/x86_64-unknown-linux-gnu/yoke/erased/trait.ErasedDestructor.html) for T where T: 'static
- [FmtForward](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html) for T
  - fn [fmt\_binary](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_binary)(self) -> FmtBinary
  - fn [fmt\_display](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_display)(self) -> FmtDisplay
  - fn [fmt\_lower\_exp](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_lower_exp)(self) -> FmtLowerExp
  - fn [fmt\_lower\_hex](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_lower_hex)(self) -> FmtLowerHex
  - fn [fmt\_octal](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_octal)(self) -> FmtOctal
  - fn [fmt\_pointer](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_pointer)(self) -> FmtPointer
  - fn [fmt\_upper\_exp](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_upper_exp)(self) -> FmtUpperExp
  - fn [fmt\_upper\_hex](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_upper_hex)(self) -> FmtUpperHex
  - fn [fmt\_list](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/wyz/fmt/trait.FmtForward.html#method.fmt_list)(self) -> FmtList
- [From](https://doc.rust-lang.org/nightly/core/convert/trait.From.html) for T
  - fn [from](https://doc.rust-lang.org/nightly/core/convert/trait.From.html#tymethod.from)(t: T) -> T
- [FromRef](https://docs.rs/axum-core/0.4.5/x86_64-unknown-linux-gnu/axum_core/extract/from_ref/trait.FromRef.html) for T where T: Clone
  - fn [from\_ref](https://docs.rs/axum-core/0.4.5/x86_64-unknown-linux-gnu/axum_core/extract/from_ref/trait.FromRef.html#tymethod.from_ref)(input: &T) -> T
- [HasTypeWitness](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_witness_traits/trait.HasTypeWitness.html) for T where W: MakeTypeWitness, T: ?Sized
  - const [WITNESS](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_witness_traits/trait.HasTypeWitness.html#associatedconstant.WITNESS): W = W::MAKE
- [Identity](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_identity/trait.Identity.html) for T where T: ?Sized
  - const [TYPE\_EQ](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_identity/trait.Identity.html#associatedconstant.TYPE_EQ): TypeEq<Self::Type> = TypeEq::NEW
  - type [Type](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/typewit/type_identity/trait.Identity.html#associatedtype.Type) = T
- [Instrument](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.Instrument.html) for T
  - fn [instrument](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.Instrument.html#method.instrument)(self, span: Span) -> Instrumented
  - fn [in\_current\_span](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.Instrument.html#method.in_current_span)(self) -> Instrumented
- [Into](https://doc.rust-lang.org/nightly/core/convert/trait.Into.html) for T where U: From<T>
  - fn [into](https://doc.rust-lang.org/nightly/core/convert/trait.Into.html#tymethod.into)(self) -> U
- [IntoEither](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/either/into_either/trait.IntoEither.html) for T
  - fn [into\_either](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/either/into_either/trait.IntoEither.html#method.into_either)(self, into_left: bool) -> Either
  - fn [into\_either\_with](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into_left: F) -> Either
- [IntoShared](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/aws_smithy_runtime_api/shared/trait.IntoShared.html) for Unshared where Shared: FromUnshared
  - fn [into\_shared](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/aws_smithy_runtime_api/shared/trait.IntoShared.html#tymethod.into_shared)(self) -> Shared
- [LayoutRaw](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.LayoutRaw.html) for T
  - fn [layout\_raw](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/traits/trait.LayoutRaw.html#tymethod.layout_raw)(_: <Self::Pointee as Pointee>::Metadata) -> Result<Layout, LayoutError>
- [MaybeSend](https://docs.rs/opendal-core/0.56.0/x86_64-unknown-linux-gnu/opendal_core/raw/futures_util/trait.MaybeSend.html) for T where T: Send
  - (two implementations)
- [Niching](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/niche/niching/trait.Niching.html) < NichedOption<T, N1> > for N2 where T: SharedNiching, N1: Niching, N2: Niching
  - unsafe fn [is\_niched](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/niche/niching/trait.Niching.html#tymethod.is_niched)(niched: *const NichedOption<T, N1>) -> bool
  - fn [resolve\_niched](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/rkyv/niche/niching/trait.Niching.html#tymethod.resolve_niched)(out: Place<NichedOption<T, N1>>)
- [Pipe](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html) for T where T: ?Sized
  - fn [pipe](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe)(self, func: impl FnOnce(Self) -> R) -> R
  - fn [pipe\_ref](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe_ref)<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R
  - fn [pipe\_ref\_mut](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe_ref_mut)<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R
  - fn [pipe\_borrow](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe_borrow)<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R where Self: Borrow<B>, B: 'a + ?Sized, R: 'a
  - fn [pipe\_borrow\_mut](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe_borrow_mut)<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a
  - fn [pipe\_as\_ref](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe_as_ref)<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R where Self: AsRef<U>, U: 'a + ?Sized, R: 'a
  - fn [pipe\_as\_mut](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe_as_mut)<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R where Self: AsMut<U>, U: 'a + ?Sized, R: 'a
  - fn [pipe\_deref](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe_deref)<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R where Self: Deref<Target = T>, T: 'a + ?Sized, R: 'a
  - fn [pipe\_deref\_mut](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/pipe/trait.Pipe.html#method.pipe_deref_mut)<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a
- [Pointable](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html) for T
  - const [ALIGN](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html#associatedconstant.ALIGN): usize
  - type [Init](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html#associatedtype.Init) = T
  - unsafe fn [init](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html#tymethod.init)(init: Self::Init) -> usize
  - unsafe fn [deref](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html#tymethod.deref)<'a>(ptr: usize) -> &'a T
  - unsafe fn [deref\_mut](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html#tymethod.deref_mut)<'a>(ptr: usize) -> &'a mut T
  - unsafe fn [drop](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/crossbeam_epoch/atomic/trait.Pointable.html#tymethod.drop)(ptr: usize)
- [Pointee](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/ptr_meta/trait.Pointee.html) for T
  - type [Metadata](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/ptr_meta/trait.Pointee.html#associatedtype.Metadata) = ()
- [PolicyExt](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/tower_http/follow_redirect/policy/trait.PolicyExt.html) for T where T: ?Sized
  - fn [and](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/tower_http/follow_redirect/policy/trait.PolicyExt.html#tymethod.and)(self, other: P) -> And
  - fn [or](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/tower_http/follow_redirect/policy/trait.PolicyExt.html#tymethod.or)(self, other: P) -> Or
- [ResultError](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/xet_runtime/utils/singleflight/trait.ResultError.html) for E where E: Send + Debug + Sync
- [ResultType](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/xet_runtime/utils/singleflight/trait.ResultType.html) for T where T: Send + Clone + Sync + Debug
- [Same](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/typenum/type_operators/trait.Same.html) for T
  - type [Output](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/typenum/type_operators/trait.Same.html#associatedtype.Output) = T
- [Tap](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html) for T
  - fn [tap](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap)(self, func: impl FnOnce(&Self)) -> Self
  - fn [tap\_mut](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_mut)(self, func: impl FnOnce(&mut Self)) -> Self
  - fn [tap\_borrow](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_borrow)(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized
  - fn [tap\_borrow\_mut](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_borrow_mut)(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized
  - fn [tap\_ref](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_ref)(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized
  - fn [tap\_ref\_mut](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_ref_mut)(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized
  - fn [tap\_deref](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_deref)(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized
  - fn [tap\_deref\_mut](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_deref_mut)(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized
  - fn [tap\_dbg](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_dbg)(self, func: impl FnOnce(&Self)) -> Self
  - fn [tap\_mut\_dbg](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_mut_dbg)(self, func: impl FnOnce(&mut Self)) -> Self
  - fn [tap\_borrow\_dbg](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_borrow_dbg)(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized
  - fn [tap\_borrow\_mut\_dbg](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_borrow_mut_dbg)(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized
  - fn [tap\_ref\_dbg](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_ref_dbg)(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized
  - fn [tap\_ref\_mut\_dbg](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_ref_mut_dbg)(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized
  - fn [tap\_deref\_dbg](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_deref_dbg)(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target = T>, T: ?Sized
  - fn [tap\_deref\_mut\_dbg](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/tap/trait.Tap.html#method.tap_deref_mut_dbg)(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized
- [ToOwned](https://doc.rust-lang.org/nightly/alloc/borrow/trait.ToOwned.html) for T where T: Clone
  - type [Owned](https://doc.rust-lang.org/nightly/alloc/borrow/trait.ToOwned.html#associatedtype.Owned) = T
  - fn [to\_owned](https://doc.rust-lang.org/nightly/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)(&self) -> T
  - fn [clone\_into](https://doc.rust-lang.org/nightly/alloc/borrow/trait.ToOwned.html#method.clone_into)(&self, target: &mut T)
- [TryConv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.TryConv.html) for T
  - fn [try\_conv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.TryConv.html#method.try_conv)(self) -> Result<T, Error> where Self: TryInto<T>, Error: ...
- [TryFrom](https://doc.rust-lang.org/nightly/core/convert/trait.TryFrom.html) for T where U: Into<T>
  - type [Error](https://doc.rust-lang.org/nightly/core/convert/trait.TryFrom.html#associatedtype.Error) = Infallible
  - fn [try\_from](https://doc.rust-lang.org/nightly/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> Result<T, Self::Error>
- [TryInto](https://doc.rust-lang.org/nightly/core/convert/trait.TryInto.html) for T where U: TryFrom<T> (two implementations)
  - type [Error](https://doc.rust-lang.org/nightly/core/convert/trait.TryInto.html#associatedtype.Error) = <U as TryFrom<T>>::Error
  - fn [try\_into](https://doc.rust-lang.org/nightly/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> Result<U, Self::Error>
  - (async version)
- [VZip](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/ppv_lite86/types/trait.VZip.html) for T where V: MultiLane
  - fn [vzip](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/ppv_lite86/types/trait.VZip.html#tymethod.vzip)(self) -> V
- [WithSubscriber](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.WithSubscriber.html) for T
  - fn [with\_subscriber](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.WithSubscriber.html#method.with_subscriber)(self, subscriber: S) -> WithDispatch
  - fn [with\_current\_subscriber](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/tracing/instrument/trait.WithSubscriber.html#method.with_current_subscriber)(self) -> WithDispatch
