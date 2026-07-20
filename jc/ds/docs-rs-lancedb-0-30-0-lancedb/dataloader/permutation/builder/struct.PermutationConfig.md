# PermutationConfig

**Module:** `lancedb::dataloader::permutation::builder`

**Source:** [View source](https://github.com/lancedb/lancedb/blob/0.30.0/lancedb/dataloader/permutation/builder.rs#L44-L57)

Configuration for creating a permutation table.

```rust
pub struct PermutationConfig { /* private fields */ }
```

## Trait Implementations

### `impl Debug for PermutationConfig`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)

### `impl Default for PermutationConfig`

```rust
fn default() -> PermutationConfig
```

Returns the default value for this type. [Read more](https://doc.rust-lang.org/nightly/core/default/trait.Default.html#tymethod.default)

## Auto Trait Implementations

- `impl Freeze for PermutationConfig`
- `impl !RefUnwindSafe for PermutationConfig`
- `impl Send for PermutationConfig`
- `impl Sync for PermutationConfig`
- `impl Unpin for PermutationConfig`
- `impl UnsafeUnpin for PermutationConfig`
- `impl !UnwindSafe for PermutationConfig`

## Blanket Implementations

### `impl<T> Any for T` where `T: 'static + ?Sized`

```rust
fn type_id(&self) -> TypeId
```

### `impl<T> ArchivePointee for T`

```rust
type ArchivedMetadata = ()
fn pointer_metadata(_: &<ArchivePointee>::ArchivedMetadata) -> <Pointee>::Metadata
```

### `impl<T> Borrow<T> for T` where `T: ?Sized`

```rust
fn borrow(&self) -> &T
```

### `impl<T> BorrowMut<T> for T` where `T: ?Sized`

```rust
fn borrow_mut(&mut self) -> &mut T
```

### `impl<T> Conv for T`

```rust
fn conv(self) -> T where Self: Into<T>
```

### `impl<T> DropFlavorWrapper<T> for T`

```rust
type Flavor = MayDrop
```

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

### `impl<T> From<T> for T`

```rust
fn from(t: T) -> T
```

### `impl<T> HasTypeWitness<W> for T` where `W: MakeTypeWitness, T: ?Sized`

```rust
const WITNESS: W = W::MAKE
```

### `impl<T> Identity for T` where `T: ?Sized`

```rust
const TYPE_EQ: TypeEq<Identity::Type> = TypeEq::NEW
type Type = T
```

### `impl<T> Instrument for T`

```rust
fn instrument(self, span: Span) -> Instrumented
fn in_current_span(self) -> Instrumented
```

### `impl<T> Into<U> for T` where `U: From<T>`

```rust
fn into(self) -> U
```

### `impl<T> IntoEither for T`

```rust
fn into_either(self, into_left: bool) -> Either
fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool
```

### `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared`

```rust
fn into_shared(self) -> Shared
```

### `impl<T> LayoutRaw for T`

```rust
fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>
```

### `impl<T> Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching, N1: Niching, N2: Niching`

```rust
unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool
fn resolve_niched(out: Place<NichedOption<T, N1>>)
```

### `impl<T> Pipe for T` where `T: ?Sized`

```rust
fn pipe(self, func: impl FnOnce(Self) -> R) -> R where Self: Sized
fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R where R: 'a
fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R where R: 'a
fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R where Self: Borrow<B>, B: 'a + ?Sized, R: 'a
fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a
fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R where Self: AsRef<U>, U: 'a + ?Sized, R: 'a
fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R where Self: AsMut<U>, U: 'a + ?Sized, R: 'a
fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R where Self: Deref<Target=T>, T: 'a + ?Sized, R: 'a
fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a
```

### `impl<T> Pointable for T`

```rust
const ALIGN: usize
type Init = T
unsafe fn init(init: <T as Pointable>::Init) -> usize
unsafe fn deref<'a>(ptr: usize) -> &'a T
unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
unsafe fn drop(ptr: usize)
```

### `impl<T> Pointee for T`

```rust
type Metadata = ()
```

### `impl<T> PolicyExt for T` where `T: ?Sized`

```rust
fn and(self, other: P) -> And where T: Policy, P: Policy
fn or(self, other: P) -> Or where T: Policy, P: Policy
```

### `impl<T> Same for T`

```rust
type Output = T
```

### `impl<T> Tap for T`

```rust
fn tap(self, func: impl FnOnce(&Self)) -> Self
fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self
fn tap_borrow(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized
fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized
fn tap_ref(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized
fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized
fn tap_deref(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target=T>, T: ?Sized
fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized
fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self
fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self
fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self where Self: Borrow<B>, B: ?Sized
fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self where Self: BorrowMut<B>, B: ?Sized
fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self where Self: AsRef<R>, R: ?Sized
fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self where Self: AsMut<R>, R: ?Sized
fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self where Self: Deref<Target=T>, T: ?Sized
fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self where Self: DerefMut + Deref, T: ?Sized
```

### `impl<T> TryConv for T`

```rust
fn try_conv(self) -> Result<T, <Self as TryInto<T>>::Error> where Self: TryInto<T>
```

### `impl<T, U> TryFrom<U> for T` where `U: Into<T>`

```rust
type Error = Infallible
fn try_from(value: U) -> Result<T, <U as TryFrom<T>>::Error>
```

### `impl<T, U> TryInto<U> for T` where `U: TryFrom<T>`

```rust
type Error = <U as TryFrom<T>>::Error
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```

### `impl<T, U> TryInto<U> for T` where `U: TryFrom<T>` (async version)

```rust
type Error = <U as TryFrom<T>>::Error
fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>> where T: 'async_trait
```

### `impl<T, V> VZip<V> for T` where `V: MultiLane`

```rust
fn vzip(self) -> V
```

### `impl<T> WithSubscriber for T`

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into<Dispatch>
fn with_current_subscriber(self) -> WithDispatch
```

### `impl<T> ErasedDestructor for T` where `T: 'static`

### `impl<T> MaybeSend for T` where `T: Send`

### `impl<T> MaybeSend for T` where `T: Send` (from reqsign)

### `impl<E> ResultError for E` where `E: Send + Debug + Sync`
