# FragmentStatistics

Struct documentation for `lancedb::table::FragmentStatistics`.

## Source

```rust
pub struct FragmentStatistics {
    pub num_fragments: usize,
    pub num_small_fragments: usize,
    pub lengths: FragmentSummaryStats,
}
```

## Fields

- `num_fragments: usize` — The number of fragments in the table.
- `num_small_fragments: usize` — The number of uncompacted fragments in the table.
- `lengths: FragmentSummaryStats` — Statistics on the number of rows in the table fragments.

## Trait Implementations

### `impl Debug for FragmentStatistics`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `impl<'de> Deserialize<'de> for FragmentStatistics`

```rust
fn deserialize<__D>(__deserializer: __D) -> Result<Self, __D::Error>
where __D: Deserializer<'de>,
```

Deserialize this value from the given Serde deserializer.

### `impl PartialEq for FragmentStatistics`

```rust
fn eq(&self, other: &FragmentStatistics) -> bool
fn ne(&self, other: &Rhs) -> bool
```

### `impl StructuralPartialEq for FragmentStatistics`

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- **`impl Any for T` where T: 'static + ?Sized**  
  `fn type_id(&self) -> TypeId`

- **`impl ArchivePointee for T`**  
  `type ArchivedMetadata = ()`  
  `fn pointer_metadata(_: &...) -> ...`

- **`impl Borrow<T> for T` where T: ?Sized**  
  `fn borrow(&self) -> &T`

- **`impl BorrowMut<T> for T` where T: ?Sized**  
  `fn borrow_mut(&mut self) -> &mut T`

- **`impl Conv for T`**  
  `fn conv(self) -> T`

- **`impl DropFlavorWrapper<T> for T`**  
  `type Flavor = MayDrop`

- **`impl FmtForward for T`**  
  multiple methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list`

- **`impl From<T> for T`**  
  `fn from(t: T) -> T`

- **`impl HasTypeWitness<W> for T`**  
  `const WITNESS: W = W::MAKE`

- **`impl Identity for T`**  
  `const TYPE_EQ: TypeEq = TypeEq::NEW`  
  `type Type = T`

- **`impl Instrument for T`**  
  `fn instrument(self, span: Span) -> Instrumented`  
  `fn in_current_span(self) -> Instrumented`

- **`impl Into<U> for T` where U: From<T>**  
  `fn into(self) -> U`

- **`impl IntoEither for T`**  
  `fn into_either(self, into_left: bool) -> Either`  
  `fn into_either_with(self, into_left: F) -> Either`

- **`impl IntoShared<Shared> for Unshared`**  
  `fn into_shared(self) -> Shared`

- **`impl LayoutRaw for T`**  
  `fn layout_raw(_: ...) -> Result<Layout, LayoutError>`

- **`impl Niching<NichedOption<T, N1>> for N2`**  
  `unsafe fn is_niched(...) -> bool`  
  `fn resolve_niched(...)`

- **`impl Pipe for T`**  
  multiple methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`

- **`impl Pointable for T`**  
  `const ALIGN: usize`  
  `type Init = T`  
  `unsafe fn init(init: Self::Init) -> usize`  
  `unsafe fn deref<'a>(ptr: usize) -> &'a T`  
  `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`  
  `unsafe fn drop(ptr: usize)`

- **`impl Pointee for T`**  
  `type Metadata = ()`

- **`impl PolicyExt for T` where T: ?Sized**  
  `fn and(self, other: P) -> And`  
  `fn or(self, other: P) -> Or`

- **`impl Same for T`**  
  `type Output = T`

- **`impl Tap for T`**  
  multiple methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`

- **`impl TryConv for T`**  
  `fn try_conv(self) -> Result<T, Error>`

- **`impl TryFrom<U> for T` where U: Into<T>**  
  `type Error = Infallible`  
  `fn try_from(value: U) -> Result<T, Infallible>`

- **`impl TryInto<U> for T` where U: TryFrom<T>**  
  `type Error = U::Error`  
  `fn try_into(self) -> Result<U, U::Error>`

- **`impl TryInto<U> for T` where U: async_convert::TryFrom<T>**  
  `type Error = U::Error`  
  `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, U::Error>> + 'async_trait>>`

- **`impl VZip<V> for T` where V: MultiLane**  
  `fn vzip(self) -> V`

- **`impl WithSubscriber for T`**  
  `fn with_subscriber(self, subscriber: S) -> WithDispatch`  
  `fn with_current_subscriber(self) -> WithDispatch`

- **`impl Allocation for T` where T: RefUnwindSafe + Send + Sync**

- **`impl DeserializeOwned for T` where T: for<'de> Deserialize<'de>**

- **`impl ErasedDestructor for T` where T: 'static**

- **`impl MaybeSend for T` where T: Send** (from `opendal_core` and `reqsign_core`)

- **`impl ResultError for E` where E: Send + Debug + Sync**
