# IndexStatistics

Struct in `lancedb::index`

## Struct Definition

```rust
pub struct IndexStatistics {
    pub num_indexed_rows: usize,
    pub num_unindexed_rows: usize,
    pub index_type: IndexType,
    pub distance_type: Option<DistanceType>,
    pub num_indices: Option<u32>,
    pub loss: Option<f64>,
}
```

## Fields

- `num_indexed_rows: usize` — The number of rows in the table that are covered by this index.
- `num_unindexed_rows: usize` — The number of rows in the table that are not covered by this index. These are rows that haven't yet been added to the index.
- `index_type: IndexType` — The type of the index.
- `distance_type: Option<DistanceType>` — The distance type used by the index. This is only present for vector indices.
- `num_indices: Option<u32>` — The number of parts this index is split into.
- `loss: Option<f64>` — The loss value used by the index.

## Trait Implementations

### impl Debug for IndexStatistics

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### impl<'de> Deserialize<'de> for IndexStatistics

- `fn deserialize<__D>(__deserializer: __D) -> Result<IndexStatistics, __D::Error>` where `__D: Deserializer<'de>` — Deserialize this value from the given Serde deserializer.

### impl PartialEq for IndexStatistics

- `fn eq(&self, other: &IndexStatistics) -> bool` — Tests for `self` and `other` values to be equal, and is used by `==`.
- `fn ne(&self, other: &Rhs) -> bool` — Tests for `!=`. The default implementation is almost always sufficient, and should not be overridden without very good reason.

### impl StructuralPartialEq for IndexStatistics

- (No methods — marker trait)

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### impl Any for T
where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId` — Gets the `TypeId` of `self`.

### impl ArchivePointee for T

- type `ArchivedMetadata = ()` — The archived version of the pointer metadata for this type.
- `fn pointer_metadata(_: &<T as Pointee>::ArchivedMetadata) -> <T as Pointee>::Metadata` — Converts some archived metadata to the pointer metadata for itself.

### impl Borrow<T> for T
where T: ?Sized

- `fn borrow(&self) -> &T` — Immutably borrows from an owned value.

### impl BorrowMut<T> for T
where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T` — Mutably borrows from an owned value.

### impl Conv for T

- `fn conv(self) -> T` where Self: Into<T> — Converts `self` into `T` using `Into`.

### impl DropFlavorWrapper<T> for T

- type `Flavor = MayDrop` — The DropFlavor that wraps `T` into `Self`.

### impl FmtForward for T

- `fn fmt_binary(self) -> FmtBinary` where Self: Binary — Causes `self` to use its `Binary` implementation when `Debug`-formatted.
- `fn fmt_display(self) -> FmtDisplay` where Self: Display — Causes `self` to use its `Display` implementation when `Debug`-formatted.
- `fn fmt_lower_exp(self) -> FmtLowerExp` where Self: LowerExp — Causes `self` to use its `LowerExp` implementation when `Debug`-formatted.
- `fn fmt_lower_hex(self) -> FmtLowerHex` where Self: LowerHex — Causes `self` to use its `LowerHex` implementation when `Debug`-formatted.
- `fn fmt_octal(self) -> FmtOctal` where Self: Octal — Causes `self` to use its `Octal` implementation when `Debug`-formatted.
- `fn fmt_pointer(self) -> FmtPointer` where Self: Pointer — Causes `self` to use its `Pointer` implementation when `Debug`-formatted.
- `fn fmt_upper_exp(self) -> FmtUpperExp` where Self: UpperExp — Causes `self` to use its `UpperExp` implementation when `Debug`-formatted.
- `fn fmt_upper_hex(self) -> FmtUpperHex` where Self: UpperHex — Causes `self` to use its `UpperHex` implementation when `Debug`-formatted.
- `fn fmt_list(self) -> FmtList` where &'a Self: for<'a> IntoIterator — Formats each item in a sequence.

### impl From<T> for T

- `fn from(t: T) -> T` — Returns the argument unchanged.

### impl HasTypeWitness<W> for T
where W: MakeTypeWitness, T: ?Sized

- const `WITNESS: W = W::MAKE` — A constant of the type witness.

### impl Identity for T
where T: ?Sized

- const `TYPE_EQ: TypeEq<Self, <Self as Identity>::Type> = TypeEq::NEW` — Proof that `Self` is the same type as `Self::Type`.
- type `Type = T` — The same type as `Self`, used to emulate type equality constraints.

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented` — Instruments this type with the provided `Span`, returning an `Instrumented` wrapper.
- `fn in_current_span(self) -> Instrumented` — Instruments this type with the current `Span`, returning an `Instrumented` wrapper.

### impl Into<U> for T
where U: From<T>

- `fn into(self) -> U` — Calls `U::from(self)`.

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either` — Converts `self` into a `Left` variant of `Either` if `into_left` is `true`, otherwise `Right`.
- `fn into_either_with(self, into_left: F) -> Either` where F: FnOnce(&Self) -> bool — Converts `self` into a `Left` or `Right` based on the given function.

### impl IntoShared<Shared> for Unshared
where Shared: FromUnshared

- `fn into_shared(self) -> Shared` — Creates a shared type from an unshared type.

### impl LayoutRaw for T

- `fn layout_raw(_: <T as Pointee>::Metadata) -> Result<Layout, LayoutError>` — Returns the layout of the type.

### impl Niching<NichedOption<T, N1>> for N2
where T: SharedNiching, N1: Niching, N2: Niching

- `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool` — Returns whether the given value has been niched.
- `fn resolve_niched(out: Place<NichedOption<T, N1>>)` — Writes data to `out` indicating that a `T` is niched.

### impl Pipe for T
where T: ?Sized

- `fn pipe(self, func: impl FnOnce(Self) -> R) -> R` where Self: Sized — Pipes by value.
- `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R` where R: 'a — Borrows `self` and passes that borrow into the pipe function.
- `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R` where R: 'a — Mutably borrows `self` and passes that borrow into the pipe function.
- `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R` where Self: Borrow<B>, B: 'a + ?Sized, R: 'a — Borrows `self`, then passes `self.borrow()` into the pipe function.
- `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R` where Self: BorrowMut<B>, B: 'a + ?Sized, R: 'a — Mutably borrows `self`, then passes `self.borrow_mut()` into the pipe function.
- `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R` where Self: AsRef<U>, U: 'a + ?Sized, R: 'a — Borrows `self`, then passes `self.as_ref()` into the pipe function.
- `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R` where Self: AsMut<U>, U: 'a + ?Sized, R: 'a — Mutably borrows `self`, then passes `self.as_mut()` into the pipe function.
- `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R` where Self: Deref<Target = T>, T: 'a + ?Sized, R: 'a — Borrows `self`, then passes `self.deref()` into the pipe function.
- `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R` where Self: DerefMut + Deref, T: 'a + ?Sized, R: 'a — Mutably borrows `self`, then passes `self.deref_mut()` into the pipe function.

### impl Pointable for T

- const `ALIGN: usize` — The alignment of pointer.
- type `Init = T` — The type for initializers.
- `unsafe fn init(init: <T as Pointable>::Init) -> usize` — Initializes a with the given initializer.
- `unsafe fn deref<'a>(ptr: usize) -> &'a T` — Dereferences the given pointer.
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T` — Mutably dereferences the given pointer.
- `unsafe fn drop(ptr: usize)` — Drops the object pointed to by the given pointer.

### impl Pointee for T

- type `Metadata = ()` — The metadata type for pointers and references to this type.

### impl PolicyExt for T
where T: ?Sized

- `fn and(self, other: P) -> And<T, P>` where T: Policy, P: Policy — Create a new `Policy` that returns `Action::Follow` only if `self` and `other` return `Action::Follow`.
- `fn or(self, other: P) -> Or<T, P>` where T: Policy, P: Policy — Create a new `Policy` that returns `Action::Follow` if either `self` or `other` returns `Action::Follow`.

### impl Same for T

- type `Output = T` — Should always be `Self`.

### impl Tap for T

- `fn tap(self, func: impl FnOnce(&Self)) -> Self` — Immutable access to a value.
- `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self` — Mutable access to a value.
- `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>, B: ?Sized — Immutable access to the `Borrow` of a value.
- `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>, B: ?Sized — Mutable access to the `BorrowMut` of a value.
- `fn tap_ref(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>, R: ?Sized — Immutable access to the `AsRef` view of a value.
- `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>, R: ?Sized — Mutable access to the `AsMut` view of a value.
- `fn tap_deref(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<Target = T>, T: ?Sized — Immutable access to the `Deref::Target` of a value.
- `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut + Deref, T: ?Sized — Mutable access to the `Deref::Target` of a value.
- `fn tap_dbg(self, func: impl FnOnce(&Self)) -> Self` — Calls `.tap()` only in debug builds.
- `fn tap_mut_dbg(self, func: impl FnOnce(&mut Self)) -> Self` — Calls `.tap_mut()` only in debug builds.
- `fn tap_borrow_dbg(self, func: impl FnOnce(&B)) -> Self` where Self: Borrow<B>, B: ?Sized — Calls `.tap_borrow()` only in debug builds.
- `fn tap_borrow_mut_dbg(self, func: impl FnOnce(&mut B)) -> Self` where Self: BorrowMut<B>, B: ?Sized — Calls `.tap_borrow_mut()` only in debug builds.
- `fn tap_ref_dbg(self, func: impl FnOnce(&R)) -> Self` where Self: AsRef<R>, R: ?Sized — Calls `.tap_ref()` only in debug builds.
- `fn tap_ref_mut_dbg(self, func: impl FnOnce(&mut R)) -> Self` where Self: AsMut<R>, R: ?Sized — Calls `.tap_ref_mut()` only in debug builds.
- `fn tap_deref_dbg(self, func: impl FnOnce(&T)) -> Self` where Self: Deref<Target = T>, T: ?Sized — Calls `.tap_deref()` only in debug builds.
- `fn tap_deref_mut_dbg(self, func: impl FnOnce(&mut T)) -> Self` where Self: DerefMut + Deref, T: ?Sized — Calls `.tap_deref_mut()` only in debug builds.

### impl TryConv for T

- `fn try_conv(self) -> Result<T, Self::Error>` where Self: TryInto<T> — Attempts to convert `self` into `T` using `TryInto`.

### impl TryFrom<U> for T
where U: Into<T>

- type `Error = Infallible` — The type returned in the event of a conversion error.
- `fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>` — Performs the conversion.

### impl TryInto<U> for T
where U: TryFrom<T>

- type `Error = <U as TryFrom<T>>::Error` — The type returned in the event of a conversion error.
- `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>` — Performs the conversion.

### impl TryInto<U> for T (async)
where U: TryFrom<T>

- type `Error = <U as TryFrom<T>>::Error`
- `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, <U as TryFrom<T>>::Error>> + 'async_trait>>` where T: 'async_trait — Performs the conversion asynchronously.

### impl VZip<V> for T
where V: MultiLane

- `fn vzip(self) -> V`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: Into<Dispatch> — Attaches the provided `Subscriber` to this type, returning a `WithDispatch` wrapper.
- `fn with_current_subscriber(self) -> WithDispatch` — Attaches the current default `Subscriber` to this type, returning a `WithDispatch` wrapper.

### impl Allocation for T
where T: RefUnwindSafe + Send + Sync

- (No methods – implementation details)

### impl DeserializeOwned for T
where T: for<'de> Deserialize<'de>

- (No methods – marker trait)

### impl ErasedDestructor for T
where T: 'static

- (No methods – marker trait)

### impl MaybeSend for T
where T: Send

- (No methods – marker trait, multiple implementations)

### impl ResultError for E
where E: Send + Debug + Sync

- (No methods – marker trait)
