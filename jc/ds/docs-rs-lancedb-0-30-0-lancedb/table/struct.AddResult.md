# AddResult

Struct defined in `lancedb::table`.

Source: [src/lancedb/table/add_data.rs.html#33-39](../../src/lancedb/table/add_data.rs.html#33-39)

## Definition

```text
pub struct AddResult {
    pub version: u64,
}
```

## Fields

- `version: u64` – a commit version.

## Trait Implementations

### Clone

[Source](../../src/lancedb/table/add_data.rs.html#32)

- `fn clone(&self) -> AddResult` – Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#tymethod.clone) (1.0.0, const: unstable)
- `fn clone_from(&mut self, source: &Self)` – Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#method.clone_from)

### Debug

[Source](../../src/lancedb/table/add_data.rs.html#32)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` – Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)

### Default

[Source](../../src/lancedb/table/add_data.rs.html#32)

- `fn default() -> AddResult` – Returns the “default value” for a type. [Read more](https://doc.rust-lang.org/nightly/core/default/trait.Default.html#tymethod.default)

### Deserialize<'de>

[Source](../../src/lancedb/table/add_data.rs.html#32)

- `fn deserialize<__D>(__deserializer: __D) -> Result<AddResult, __D::Error> where __D: Deserializer<'de>` – Deserialize this value from the given Serde deserializer. [Read more](https://docs.rs/serde_core/1.0.228/x86_64-unknown-linux-gnu/serde_core/de/trait.Deserialize.html#tymethod.deserialize)

### PartialEq

[Source](../../src/lancedb/table/add_data.rs.html#32)

- `fn eq(&self, other: &AddResult) -> bool` – Tests for `self` and `other` values to be equal, and is used by `==`. (1.0.0, const: unstable)
- `fn ne(&self, other: &AddResult) -> bool` – Tests for `!=`. The default implementation is almost always sufficient, and should not be overridden without very good reason.

### Serialize

[Source](../../src/lancedb/table/add_data.rs.html#32)

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error> where __S: Serializer` – Serialize this value into the given Serde serializer. [Read more](https://docs.rs/serde_core/1.0.228/x86_64-unknown-linux-gnu/serde_core/ser/trait.Serialize.html#tymethod.serialize)

### Eq

[Source](../../src/lancedb/table/add_data.rs.html#32)

- (marker trait, no methods)

### StructuralPartialEq

[Source](../../src/lancedb/table/add_data.rs.html#32)

- (marker trait, no methods)

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

### Allocation

[Source](https://docs.rs/arrow-buffer/58.3.0/x86_64-unknown-linux-gnu/src/arrow_buffer/alloc/mod.rs.html#33)

Implemented for `T` where `T: RefUnwindSafe + Send + Sync`.

### Any

[Source](https://doc.rust-lang.org/nightly/src/core/any.rs.html#141)

Implemented for `T` where `T: 'static + ?Sized`.

- `fn type_id(&self) -> TypeId` – Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/nightly/core/any/trait.Any.html#tymethod.type_id)

### ArchivePointee

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#55)

- type `ArchivedMetadata` = `()`
- `fn pointer_metadata(_: &<T as ArchivePointee>::ArchivedMetadata) -> <T as Pointee>::Metadata`

### Borrow

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#212)

Implemented for `T` where `T: ?Sized`.

- `fn borrow(&self) -> &T` – Immutably borrows from an owned value.

### BorrowMut

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#221)

Implemented for `T` where `T: ?Sized`.

- `fn borrow_mut(&mut self) -> &mut T` – Mutably borrows from an owned value.

### CloneToUninit

[Source](https://doc.rust-lang.org/nightly/src/core/clone.rs.html#631)

Implemented for `T` where `T: Clone`.

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)` – Nightly-only experimental API.

### Conv

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#58)

- `fn conv(self) -> T` where `Self: Into<T>`

### DeserializeOwned

[Source](https://docs.rs/serde_core/1.0.228/x86_64-unknown-linux-gnu/src/serde_core/de/mod.rs.html#633)

Implemented for `T` where `T: for<'de> Deserialize<'de>`.

### DropFlavorWrapper

[Source](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/src/konst/drop_flavor.rs.html#123)

- type `Flavor` = `MayDrop`

### DynClone

[Source](https://docs.rs/dyn-clone/1.0.20/x86_64-unknown-linux-gnu/src/dyn_clone/lib.rs.html#196-198)

Implemented for `T` where `T: Clone`.

- `fn __clone_box(&self, _: Private) -> *mut ()`

### DynEq

[Source](https://docs.rs/datafusion-expr-common/53.1.0/x86_64-unknown-linux-gnu/src/datafusion_expr_common/dyn_eq.rs.html#37)

Implemented for `T` where `T: Eq + Any`.

- `fn dyn_eq(&self, other: &(dyn Any + 'static)) -> bool`

### Equivalent (multiple)

#### (hashbrown 0.15.5)

[Source](https://docs.rs/hashbrown/0.15.5/x86_64-unknown-linux-gnu/src/hashbrown/lib.rs.html#151-154)

Implemented for `Q` where `Q: Eq + ?Sized`, `K: Borrow<Q> + ?Sized`.

- `fn equivalent(&self, key: &K) -> bool`

#### (equivalent 1.0.2)

[Source](https://docs.rs/equivalent/1.0.2/x86_64-unknown-linux-gnu/src/equivalent/lib.rs.html#82-85)

- `fn equivalent(&self, key: &K) -> bool`

#### (hashbrown same as above but different source lines)

- Duplicate entries omitted for brevity (they are identical in signature).

### ErasedDestructor

[Source](https://docs.rs/yoke/0.8.2/x86_64-unknown-linux-gnu/src/yoke/erased.rs.html#22)

Implemented for `T` where `T: 'static`.

### FmtForward

[Source](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/src/wyz/fmt.rs.html#114)

- `fn fmt_binary(self) -> FmtBinary`
- `fn fmt_display(self) -> FmtDisplay`
- `fn fmt_lower_exp(self) -> FmtLowerExp`
- `fn fmt_lower_hex(self) -> FmtLowerHex`
- `fn fmt_octal(self) -> FmtOctal`
- `fn fmt_pointer(self) -> FmtPointer`
- `fn fmt_upper_exp(self) -> FmtUpperExp`
- `fn fmt_upper_hex(self) -> FmtUpperHex`
- `fn fmt_list(self) -> FmtList`

### From

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#785)

- `fn from(t: T) -> T`

### FromRef

[Source](https://docs.rs/axum-core/0.4.5/x86_64-unknown-linux-gnu/src/axum_core/extract/from_ref.rs.html#18-20)

Implemented for `T` where `T: Clone`.

- `fn from_ref(input: &T) -> T`

### HasTypeWitness

[Source](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_witness_traits.rs.html#106-109)

- const `WITNESS: W = W::MAKE`

### Identity

[Source](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_identity.rs.html#77)

- type `Type` = `T`
- const `TYPE_EQ: TypeEq<T, Self::Type> = TypeEq::NEW`

### Instrument

[Source](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#325)

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### Into

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#767-769)

- `fn into(self) -> U` where `U: From<T>`

### IntoEither

[Source](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/src/either/into_either.rs.html#64)

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either` where `F: FnOnce(&Self) -> bool`

### IntoShared

[Source](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/src/aws_smithy_runtime_api/shared.rs.html#114-116)

- `fn into_shared(self) -> Shared` where `Shared: FromUnshared`

### LayoutRaw

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#30)

- `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>`

### MaybeSend (multiple)

[Source](https://docs.rs/opendal-core/0.56.0/x86_64-unknown-linux-gnu/src/opendal_core/raw/futures_util.rs.html#62) and [reqsign-core](https://docs.rs/reqsign-core/3.0.0/x86_64-unknown-linux-gnu/src/reqsign_core/futures_util.rs.html#39)

Implemented for `T` where `T: Send`.

### Niching

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/with/niching.rs.html#132-136)

- `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
- `fn resolve_niched(out: Place<NichedOption<T, N1>>)`

### Pipe

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/pipe.rs.html#234)

- `fn pipe(self, func: impl FnOnce(Self) -> R) -> R`
- `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`
- `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`
- `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`
- `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`
- `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`
- `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`
- `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`
- `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`

### Pointable

[Source](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/src/crossbeam_epoch/atomic.rs.html#194)

- const `ALIGN: usize`
- type `Init` = `T`
- `unsafe fn init(init: T) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### Pointee

[Source](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/src/ptr_meta/lib.rs.html#141)

- type `Metadata` = `()`

### PolicyExt

[Source](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/src/tower_http/follow_redirect/policy/mod.rs.html#171-173)

- `fn and(self, other: P) -> And`
- `fn or(self, other: P) -> Or`

### ResultError

[Source](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/src/xet_runtime/utils/singleflight.rs.html#73)

Implemented for `E` where `E: Send + Debug + Sync`.

### ResultType

[Source](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/src/xet_runtime/utils/singleflight.rs.html#67)

Implemented for `T` where `T: Send + Clone + Sync + Debug`.

### Same

[Source](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/src/typenum/type_operators.rs.html#34)

- type `Output` = `T`

### Tap

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/tap.rs.html#329)

- `fn tap(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self`
- `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self`
- `fn tap_ref(self, func: impl FnOnce(&R)) -> Self`
- `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self`
- `fn tap_deref(self, func: impl FnOnce(&T)) -> Self`
- `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self`
- Plus `_dbg` variants for debug builds.

### ToOwned

[Source](https://doc.rust-lang.org/nightly/src/alloc/borrow.rs.html#72-74)

Implemented for `T` where `T: Clone`.

- type `Owned` = `T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### TryConv

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#87)

- `fn try_conv(self) -> Result<T, Self::Error>` where `Self: TryInto<T>`

### TryFrom

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#827-829)

- type `Error` = `Infallible`
- `fn try_from(value: U) -> Result<T, Infallible>` where `U: Into<T>`

### TryInto (standard)

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#811-813)

- type `Error` = `<U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, Self::Error>` where `U: TryFrom<T>`

### TryInto (async-convert)

[Source](https://docs.rs/async-convert/1.0.0/x86_64-unknown-linux-gnu/src/async_convert/lib.rs.html#102-104)

- type `Error` = `<U as TryFrom<T>>::Error`
- `async fn try_into(self) -> Result<U, Self::Error>` where `U: TryFrom<T>`

### VZip

[Source](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/src/ppv_lite86/types.rs.html#221-223)

- `fn vzip(self) -> V`

### WithSubscriber

[Source](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#393)

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where `S: Into<Dispatch>`
- `fn with_current_subscriber(self) -> WithDispatch`
