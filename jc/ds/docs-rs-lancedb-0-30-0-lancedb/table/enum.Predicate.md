# Predicate

A predicate for filtering rows in delete operations. Accepts either a SQL string or a DataFusion `Expr`. Use the `From` implementations to convert from `&str` or `&Expr` automatically. See `Table::delete` for usage examples.

## Variants

- `String(&'a str)` — A SQL predicate string
- `Expr(&'a Expr)` — A DataFusion logical expression

## Enum definition

```rust
pub enum Predicate<'a> {
    String(&'a str),
    Expr(&'a Expr),
}
```

[Source](../../src/lancedb/table.rs.html#261-266)

## Trait Implementations

### impl<'a> From<&'a Expr> for Predicate<'a>

[Source](../../src/lancedb/table.rs.html#280-284)

```rust
fn from(e: &'a Expr) -> Self
```

### impl<'a> From<&'a String> for Predicate<'a>

[Source](../../src/lancedb/table.rs.html#274-278)

```rust
fn from(s: &'a String) -> Self
```

### impl<'a> From<&'a str> for Predicate<'a>

[Source](../../src/lancedb/table.rs.html#268-272)

```rust
fn from(s: &'a str) -> Self
```

## Auto Trait Implementations

- `impl<'a> Freeze for Predicate<'a>`
- `impl<'a> !RefUnwindSafe for Predicate<'a>`
- `impl<'a> Send for Predicate<'a>`
- `impl<'a> Sync for Predicate<'a>`
- `impl<'a> Unpin for Predicate<'a>`
- `impl<'a> UnsafeUnpin for Predicate<'a>`
- `impl<'a> !UnwindSafe for Predicate<'a>`

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/any.rs.html#141)

```rust
fn type_id(&self) -> TypeId
```

### impl ArchivePointee for T

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#55)

- type `ArchivedMetadata` = `()`
- fn `pointer_metadata`( \_: &ArchivedMetadata) -> <T as Pointee>::Metadata

### impl Borrow<T> for T

where T: ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#212)

```rust
fn borrow(&self) -> &T
```

### impl BorrowMut<T> for T

where T: ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#221)

```rust
fn borrow_mut(&mut self) -> &mut T
```

### impl Conv for T

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#58)

```rust
fn conv(self) -> T
```

### impl DropFlavorWrapper<T> for T

[Source](https://docs.rs/konst/0.4.3/x86_64-unknown-linux-gnu/src/konst/drop_flavor.rs.html#123)

- type `Flavor` = `MayDrop`

### impl FmtForward for T

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

### impl From<T> for T

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#785)

```rust
fn from(t: T) -> T
```

### impl HasTypeWitness<W> for T

where W: MakeTypeWitness, T: ?Sized

[Source](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_witness_traits.rs.html#106-109)

- const `WITNESS`: W = W::MAKE

### impl Identity for T

where T: ?Sized

[Source](https://docs.rs/typewit/1.15.2/x86_64-unknown-linux-gnu/src/typewit/type_identity.rs.html#77)

- const `TYPE_EQ`: TypeEq<Self, Self::Type> = TypeEq::NEW
- type `Type` = T

### impl Instrument for T

[Source](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#325)

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into<U> for T

where U: From<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#767-769)

```rust
fn into(self) -> U
```

### impl IntoEither for T

[Source](https://docs.rs/either/1.15.0/x86_64-unknown-linux-gnu/src/either/into_either.rs.html#64)

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### impl IntoShared<Shared> for Unshared

where Shared: FromUnshared

[Source](https://docs.rs/aws-smithy-runtime-api/1.12.1/x86_64-unknown-linux-gnu/src/aws_smithy_runtime_api/shared.rs.html#114-116)

```rust
fn into_shared(self) -> Shared
```

### impl LayoutRaw for T

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/mod.rs.html#30)

```rust
fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>
```

### impl Niching<NichedOption<T, N1>> for N2

where T: SharedNiching, N1: Niching, N2: Niching

[Source](https://docs.rs/rkyv/0.8.16/x86_64-unknown-linux-gnu/src/rkyv/impls/core/with/niching.rs.html#132-136)

- `unsafe fn is_niched(niched: *const NichedOption) -> bool`
- `fn resolve_niched(out: Place<NichedOption>)`

### impl Pipe for T

where T: ?Sized

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

### impl Pointable for T

[Source](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/src/crossbeam_epoch/atomic.rs.html#194)

- const `ALIGN`: usize
- type `Init` = T
- `unsafe fn init(init: Self::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### impl Pointee for T

[Source](https://docs.rs/ptr_meta/0.3.1/x86_64-unknown-linux-gnu/src/ptr_meta/lib.rs.html#141)

- type `Metadata` = ()

### impl PolicyExt for T

where T: ?Sized

[Source](https://docs.rs/tower-http/0.5.2/x86_64-unknown-linux-gnu/src/tower_http/follow_redirect/policy/mod.rs.html#171-173)

- `fn and(self, other: P) -> And`
- `fn or(self, other: P) -> Or`

### impl Same for T

[Source](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/src/typenum/type_operators.rs.html#34)

- type `Output` = T

### impl Tap for T

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/tap.rs.html#329)

- `fn tap(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self`
- `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self`
- `fn tap_ref(self, func: impl FnOnce(&R)) -> Self`
- `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self`
- `fn tap_deref(self, func: impl FnOnce(&T)) -> Self`
- `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self`
- `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self`
- `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self`
- `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self`
- `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self`
- `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self`
- `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self`
- `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self`
- `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self`

### impl TryConv for T

[Source](https://docs.rs/tap/1.0.1/x86_64-unknown-linux-gnu/src/tap/conv.rs.html#87)

```rust
fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error>
```

### impl TryFrom<U> for T

where U: Into<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#827-829)

- type `Error` = Infallible
- `fn try_from(value: U) -> Result<T, Self::Error>`

### impl TryInto<U> for T

where U: TryFrom<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#811-813)

- type `Error` = <U as TryFrom<T>>::Error
- `fn try_into(self) -> Result<U, Self::Error>`

### impl TryInto<U> for T (async)

where U: TryFrom<T>

[Source](https://docs.rs/async-convert/1.0.0/x86_64-unknown-linux-gnu/src/async_convert/lib.rs.html#102-104)

- type `Error` = <U as TryFrom<T>>::Error
- `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>>`

### impl VZip<V> for T

where V: MultiLane

[Source](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/src/ppv_lite86/types.rs.html#221-223)

```rust
fn vzip(self) -> V
```

### impl WithSubscriber for T

[Source](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#393)

- `fn with_subscriber(self, subscriber: S) -> WithDispatch`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl ErasedDestructor for T

where T: 'static

[Source](https://docs.rs/yoke/0.8.2/x86_64-unknown-linux-gnu/src/yoke/erased.rs.html#22)

### impl MaybeSend for T

where T: Send

[Source](https://docs.rs/opendal-core/0.56.0/x86_64-unknown-linux-gnu/src/opendal_core/raw/futures_util.rs.html#62)

### impl MaybeSend for T (reqsign)

where T: Send

[Source](https://docs.rs/reqsign-core/3.0.0/x86_64-unknown-linux-gnu/src/reqsign_core/futures_util.rs.html#39)
