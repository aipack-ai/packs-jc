# Struct ListingDatabaseOptions

**Source:** [src/lancedb/database/listing.rs.html#69-79](https://github.com/lancedb/lancedb/blob/0.30.0/src/lancedb/database/listing.rs#L69-L79)

Options specific to the listing database.

```rust
pub struct ListingDatabaseOptions {
    pub new_table_config: NewTableConfig,
    pub storage_options: HashMap<String, String>,
}
```

## Fields

- **`new_table_config`**: `NewTableConfig` – Controls what kind of Lance tables will be created by this database.
- **`storage_options`**: `HashMap<String, String>` – Storage options configure the storage layer (e.g., S3, GCS, Azure, etc.). These are used to create/list tables and are inherited by all tables opened by this database. See available options at [https://docs.lancedb.com/storage/](https://docs.lancedb.com/storage/).

## Implementations

### `impl ListingDatabaseOptions`

**Source:** [src/lancedb/database/listing.rs.html#81-128](https://github.com/lancedb/lancedb/blob/0.30.0/src/lancedb/database/listing.rs#L81-L128)

```rust
pub fn builder() -> ListingDatabaseOptionsBuilder
```

Create a new builder for the listing database options.

## Trait Implementations

### `impl Clone for ListingDatabaseOptions`

**Source:** [src/lancedb/database/listing.rs.html#68](https://github.com/lancedb/lancedb/blob/0.30.0/src/lancedb/database/listing.rs#L68)

```rust
fn clone(&self) -> ListingDatabaseOptions
```

Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#tymethod.clone)

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#method.clone_from)

### `impl DatabaseOptions for ListingDatabaseOptions`

**Source:** [src/lancedb/database/listing.rs.html#130-151](https://github.com/lancedb/lancedb/blob/0.30.0/src/lancedb/database/listing.rs#L130-L151)

```rust
fn serialize_into_map(&self, map: &mut HashMap<String, String>)
```

### `impl Debug for ListingDatabaseOptions`

**Source:** [src/lancedb/database/listing.rs.html#68](https://github.com/lancedb/lancedb/blob/0.30.0/src/lancedb/database/listing.rs#L68)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)

### `impl Default for ListingDatabaseOptions`

**Source:** [src/lancedb/database/listing.rs.html#68](https://github.com/lancedb/lancedb/blob/0.30.0/src/lancedb/database/listing.rs#L68)

```rust
fn default() -> ListingDatabaseOptions
```

Returns the “default value” for a type. [Read more](https://doc.rust-lang.org/nightly/core/default/trait.Default.html#tymethod.default)

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `impl<T> Any for T` where `T: 'static + ?Sized`

**Source:** [core::any](https://doc.rust-lang.org/nightly/src/core/any.rs.html#141)

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/nightly/core/any/trait.Any.html#tymethod.type_id)

### `impl<T> ArchivePointee for T`

**Source:** [rkyv::impls::core](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#55)

```rust
type ArchivedMetadata = ()
```

```rust
fn pointer_metadata(_: &<Self as ArchivePointee>::ArchivedMetadata) -> <Self as Pointee>::Metadata
```

Converts some archived metadata to the pointer metadata for itself.

### `impl<T> Borrow<T> for T` where `T: ?Sized`

**Source:** [core::borrow](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#212)

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/nightly/core/borrow/trait.Borrow.html#tymethod.borrow)

### `impl<T> BorrowMut<T> for T` where `T: ?Sized`

**Source:** [core::borrow](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#221)

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/nightly/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### `impl<T> CloneToUninit for T` where `T: Clone`

**Source:** [core::clone](https://doc.rust-lang.org/nightly/src/core/clone.rs.html#631)

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

🔬This is a nightly-only experimental API. (`clone_to_uninit`) Performs copy-assignment from `self` to `dest`. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)

### `impl<T> Conv for T`

**Source:** [tap::conv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#58)

```rust
fn conv(self) -> T
where Self: Into<T>
```

Converts `self` into `T` using `Into`. [Read more](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/tap/conv/trait.Conv.html#method.conv)

### `impl<T> DropFlavorWrapper<T> for T`

**Source:** [konst::drop_flavor](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/src/konst/drop_flavor.rs.html#123)

```rust
type Flavor = MayDrop
```

The DropFlavor that [`wrap`](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/konst/drop_flavor/fn.wrap.html)s `T` into `Self`.

### `impl<T> DynClone for T` where `T: Clone`

**Source:** [dyn-clone](https://docs.rs/dyn-clone/1.0.20/x86_64-unknown-linux-gnu/src/dyn_clone/lib.rs.html#196-198)

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### `impl<T> FmtForward for T`

**Source:** [wyz::fmt](https://docs.rs/wyz/0.5.1/x86_64-unknown-linux-gnu/src/wyz/fmt.rs.html#114)

```rust
fn fmt_binary(self) -> FmtBinary
```
```rust
fn fmt_display(self) -> FmtDisplay
```
```rust
fn fmt_lower_exp(self) -> FmtLowerExp
```
```rust
fn fmt_lower_hex(self) -> FmtLowerHex
```
```rust
fn fmt_octal(self) -> FmtOctal
```
```rust
fn fmt_pointer(self) -> FmtPointer
```
```rust
fn fmt_upper_exp(self) -> FmtUpperExp
```
```rust
fn fmt_upper_hex(self) -> FmtUpperHex
```
```rust
fn fmt_list(self) -> FmtList
```

### `impl<T> From<T> for T`

**Source:** [core::convert](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#785)

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `impl<T> FromRef<T> for T` where `T: Clone`

**Source:** [axum-core::extract::from_ref](https://docs.rs/axum-core/0.4.5/x86_64-unknown-linux-gnu/src/axum_core/extract/from_ref.rs.html#18-20)

```rust
fn from_ref(input: &T) -> T
```

Converts to this type from a reference to the input type.

### `impl<T> HasTypeWitness<W> for T` where `W: MakeTypeWitness`, `T: ?Sized`

**Source:** [typewit::type_witness_traits](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_witness_traits.rs.html#106-109)

```rust
const WITNESS: W = W::MAKE
```

A constant of the type witness.

### `impl<T> Identity for T` where `T: ?Sized`

**Source:** [typewit::type_identity](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_identity.rs.html#77)

```rust
const TYPE_EQ: TypeEq<<Self as Identity>::Type> = TypeEq::NEW
```

Proof that `Self` is the same type as `Self::Type`.

```rust
type Type = T
```

The same type as `Self`.

### `impl<T> Instrument for T`

**Source:** [tracing::instrument](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#325)

```rust
fn instrument(self, span: Span) -> Instrumented
```
```rust
fn in_current_span(self) -> Instrumented
```

### `impl<T> Into<U> for T` where `U: From<T>`

**Source:** [core::convert](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#767-769)

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### `impl<T> IntoEither for T`

**Source:** [either::into_either](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/src/either/into_either.rs.html#64)

```rust
fn into_either(self, into_left: bool) -> Either
```
```rust
fn into_either_with(self, into_left: F) -> Either
```

### `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`

**Source:** [aws-smithy-runtime-api](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/src/aws_smithy_runtime_api/shared.rs.html#114-116)

```rust
fn into_shared(self) -> Shared
```

Creates a shared type from an unshared type.

### `impl<T> LayoutRaw for T`

**Source:** [rkyv::impls::core](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#30)

```rust
fn layout_raw(_: <Self as Pointee>::Metadata) -> Result<Layout, LayoutError>
```

Returns the layout of the type.

### `impl Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching`, `N1: Niching`, `N2: Niching`

**Source:** [rkyv::impls::core::with::niching](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/with/niching.rs.html#132-136)

```rust
unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool
```
```rust
fn resolve_niched(out: Place<NichedOption<T, N1>>)
```

### `impl<T> Pipe for T` where `T: ?Sized`

**Source:** [tap::pipe](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/pipe.rs.html#234)

```rust
fn pipe(self, func: impl FnOnce(Self) -> R) -> R
```
```rust
fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R
```
```rust
fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R
```
```rust
fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R
```
```rust
fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R
```
```rust
fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R
```
```rust
fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R
```
```rust
fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R
```
```rust
fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R
```

### `impl<T> Pointable for T`

**Source:** [crossbeam-epoch::atomic](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/src/crossbeam_epoch/atomic.rs.html#194)

```rust
const ALIGN: usize
```
```rust
type Init = T
```
```rust
unsafe fn init(init: <Self as Pointable>::Init) -> usize
```
```rust
unsafe fn deref<'a>(ptr: usize) -> &'a T
```
```rust
unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
```
```rust
unsafe fn drop(ptr: usize)
```

### `impl<T> Pointee for T`

**Source:** [ptr_meta](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/src/ptr_meta/lib.rs.html#141)

```rust
type Metadata = ()
```

### `impl<T> PolicyExt for T` where `T: ?Sized`

**Source:** [tower-http::follow_redirect::policy](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/src/tower_http/follow_redirect/policy/mod.rs.html#171-173)

```rust
fn and(self, other: P) -> And<T, P>
```
```rust
fn or(self, other: P) -> Or<T, P>
```

### `impl<T> Same for T`

**Source:** [typenum::type_operators](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/src/typenum/type_operators.rs.html#34)

```rust
type Output = T
```

### `impl<T> Tap for T`

**Source:** [tap::tap](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/tap.rs.html#329)

```rust
fn tap(self, func: impl FnOnce(&Self)) -> Self
```
```rust
fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self
```
```rust
fn tap_borrow<B>(self, func: impl FnOnce(&B)) -> Self
```
```rust
fn tap_borrow_mut<B>(self, func: impl FnOnce(&mut B)) -> Self
```
```rust
fn tap_ref<R>(self, func: impl FnOnce(&R)) -> Self
```
```rust
fn tap_ref_mut<R>(self, func: impl FnOnce(&mut R)) -> Self
```
```rust
fn tap_deref<T>(self, func: impl FnOnce(&T)) -> Self
```
```rust
fn tap_deref_mut<T>(self, func: impl FnOnce(&mut T)) -> Self
```
```rust
fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self
```
```rust
fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self
```
```rust
fn tap_borrow_dbg<B>(self, func: impl FnOnce(&B)) -> Self
```
```rust
fn tap_borrow_mut_dbg<B>(self, func: impl FnOnce(&mut B)) -> Self
```
```rust
fn tap_ref_dbg<R>(self, func: impl FnOnce(&R)) -> Self
```
```rust
fn tap_ref_mut_dbg<R>(self, func: impl FnOnce(&mut R)) -> Self
```
```rust
fn tap_deref_dbg<T>(self, func: impl FnOnce(&T)) -> Self
```
```rust
fn tap_deref_mut_dbg<T>(self, func: impl FnOnce(&mut T)) -> Self
```

### `impl<T> ToOwned for T` where `T: Clone`

**Source:** [alloc::borrow](https://doc.rust-lang.org/nightly/src/alloc/borrow.rs.html#72-74)

```rust
type Owned = T
```
```rust
fn to_owned(&self) -> T
```
```rust
fn clone_into(&self, target: &mut T)
```

### `impl<T> TryConv for T`

**Source:** [tap::conv](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#87)

```rust
fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>
```

### `impl<T> TryFrom<U> for T` where `U: Into<T>`

**Source:** [core::convert](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#827-829)

```rust
type Error = Infallible
```
```rust
fn try_from(value: U) -> Result<T, <Self as TryFrom<U>>::Error>
```

### `impl<T> TryInto<U> for T` where `U: TryFrom<T>`

**Source:** [core::convert](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#811-813)

```rust
type Error = <U as TryFrom<T>>::Error
```
```rust
fn try_into(self) -> Result<U, <Self as TryInto<U>>::Error>
```

### `impl<T> TryInto<U> for T` (async-convert) where `U: TryFrom<T>`

**Source:** [async-convert](https://docs.rs/async-convert/1.0.0/x86_64-unknown-linux-gnu/src/async_convert/lib.rs.html#102-104)

```rust
type Error = <U as TryFrom<T>>::Error
```
```rust
fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <Self as TryInto<U>>::Error>> + 'async_trait>>
```

### `impl<T> VZip<V> for T` where `V: MultiLane`

**Source:** [ppv-lite86::types](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/src/ppv_lite86/types.rs.html#221-223)

```rust
fn vzip(self) -> V
```

### `impl<T> WithSubscriber for T`

**Source:** [tracing::instrument](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#393)

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
```
```rust
fn with_current_subscriber(self) -> WithDispatch
```

### `impl<T> Allocation for T` where `T: RefUnwindSafe + Send + Sync`

**Source:** [arrow-buffer::alloc](https://docs.rs/arrow-buffer/58.3.0/x86_64-unknown-linux-gnu/src/arrow_buffer/alloc/mod.rs.html#33)

(No methods defined – marker trait.)

### `impl<T> ErasedDestructor for T` where `T: 'static`

**Source:** [yoke::erased](https://docs.rs/yoke/0.8.2/x86_64-unknown-linux-gnu/src/yoke/erased.rs.html#22)

(No methods defined – marker trait.)

### `impl<T> MaybeSend for T` where `T: Send`

**Source:** [opendal-core](https://docs.rs/opendal-core/0.56.0/x86_64-unknown-linux-gnu/src/opendal_core/raw/futures_util.rs.html#62)

(No methods defined – marker trait.)

### `impl<T> MaybeSend for T` (reqsign-core) where `T: Send`

**Source:** [reqsign-core](https://docs.rs/reqsign-core/3.0.0/x86_64-unknown-linux-gnu/src/reqsign_core/futures_util.rs.html#39)

(No methods defined – marker trait.)

### `impl<E> ResultError for E` where `E: Send + Debug + Sync`

**Source:** [xet-runtime](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/src/xet_runtime/utils/singleflight.rs.html#73)

(No methods defined – marker trait.)

### `impl<T> ResultType for T` where `T: Send + Clone + Sync + Debug`

**Source:** [xet-runtime](https://docs.rs/xet-runtime/1.5.2/x86_64-unknown-linux-gnu/src/xet_runtime/utils/singleflight.rs.html#67)

(No methods defined – marker trait.)
