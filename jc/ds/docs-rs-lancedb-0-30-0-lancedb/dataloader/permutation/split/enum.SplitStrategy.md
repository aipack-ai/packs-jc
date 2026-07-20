# SplitStrategy in lancedb::dataloader::permutation::split

**Module:** `lancedb::dataloader::permutation::split`

**Source:** [../../../../src/lancedb/dataloader/permutation/split.rs.html#31-75]()

## Enum SplitStrategy

Copy item path.

Strategy for assigning rows to splits.

```rust
pub enum SplitStrategy {
    NoSplit,
    Random {
        seed: Option<u64>,
        sizes: SplitSizes,
    },
    Hash {
        columns: Vec<String>,
        split_weights: Vec<u64>,
        discard_weight: u64,
    },
    Sequential {
        sizes: SplitSizes,
    },
    Calculated {
        calculation: String,
    },
}
```

### Variants

- **`NoSplit`** – All rows will have split id 0.
- **`Random`** – Rows will be randomly assigned to splits. A seed can be provided to make the assignment deterministic.
  - Fields:
    - `seed: Option<u64>`
    - `sizes: SplitSizes`
- **`Hash`** – Rows will be assigned to splits based on the values in the specified columns. This ensures rows are always assigned to the same split if the given columns do not change. The `split_weights` determine the approximate number of rows in each split. The `discard_weight` controls what percentage of rows should be thrown away.
  - Fields:
    - `columns: Vec<String>`
    - `split_weights: Vec<u64>`
    - `discard_weight: u64`
- **`Sequential`** – Rows will be assigned to splits sequentially. Mainly useful for debugging and testing.
  - Fields:
    - `sizes: SplitSizes`
- **`Calculated`** – Rows will be assigned to splits based on a calculation of one or more columns. The provided `calculation` should be an SQL statement returning an integer between 0 and number of splits - 1.
  - Fields:
    - `calculation: String`

## Implementations

### `impl SplitStrategy`

**Source:** [../../../../src/lancedb/dataloader/permutation/split.rs.html#78-107]()

```rust
pub fn validate(&self, num_rows: u64) -> Result<()>
```

## Trait Implementations

### `impl Clone for SplitStrategy`

**Source:** [../../../../src/lancedb/dataloader/permutation/split.rs.html#30]()

```rust
fn clone(&self) -> SplitStrategy

fn clone_from(&mut self, source: &Self)
```

### `impl Debug for SplitStrategy`

**Source:** [../../../../src/lancedb/dataloader/permutation/split.rs.html#30]()

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Default for SplitStrategy`

**Source:** [../../../../src/lancedb/dataloader/permutation/split.rs.html#30]()

```rust
fn default() -> SplitStrategy
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- **`impl Any for T`** where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- **`impl ArchivePointee for T`**
  - `type ArchivedMetadata = ()`
  - `fn pointer_metadata(_: &...) -> ...`
- **`impl Borrow<T> for T`** where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- **`impl BorrowMut<T> for T`** where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- **`impl CloneToUninit for T`** where `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- **`impl Conv for T`**
  - `fn conv(self) -> T` where `Self: Into<T>`
- **`impl DropFlavorWrapper for T`**
  - `type Flavor = MayDrop`
- **`impl DynClone for T`** where `T: Clone`
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- **`impl FmtForward for T`**
  - Methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list`
- **`impl From<T> for T`**
  - `fn from(t: T) -> T`
- **`impl FromRef<T> for T`** where `T: Clone`
  - `fn from_ref(input: &T) -> T`
- **`impl HasTypeWitness for T`** where `W: MakeTypeWitness`, `T: ?Sized`
  - `const WITNESS: W = W::MAKE`
- **`impl Identity for T`** where `T: ?Sized`
  - `const TYPE_EQ: TypeEq = TypeEq::NEW`
  - `type Type = T`
- **`impl Instrument for T`**
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- **`impl Into<U> for T`** where `U: From<T>`
  - `fn into(self) -> U`
- **`impl IntoEither for T`**
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either`
- **`impl IntoShared<Shared> for Unshared`** where `Shared: FromUnshared`
  - `fn into_shared(self) -> Shared`
- **`impl LayoutRaw for T`**
  - `fn layout_raw(_: ...) -> Result<Layout, LayoutError>`
- **`impl Niching<NichedOption<T, N1>> for N2`** where `T: SharedNiching`, `N1: Niching`, `N2: Niching`
  - `unsafe fn is_niched(niched: *const NichedOption<T, N1>) -> bool`
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- **`impl Pipe for T`** where `T: ?Sized`
  - Methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`
- **`impl Pointable for T`**
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`
- **`impl Pointee for T`**
  - `type Metadata = ()`
- **`impl PolicyExt for T`** where `T: ?Sized`
  - `fn and(self, other: P) -> And`
  - `fn or(self, other: P) -> Or`
- **`impl Same for T`**
  - `type Output = T`
- **`impl Tap for T`**
  - Methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`
- **`impl ToOwned for T`** where `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- **`impl TryConv for T`**
  - `fn try_conv(self) -> Result<T, Self::Error>` where `Self: TryInto<T>`
- **`impl TryFrom<U> for T`** where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- **`impl TryInto<U> for T`** where `U: TryFrom<T>`
  - `type Error = U::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
- **`impl TryInto<U> for T`** (async) where `U: TryFrom<T>`
  - `type Error = U::Error`
  - `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<...> + 'async_trait>>`
- **`impl VZip<V> for T`** where `V: MultiLane`
  - `fn vzip(self) -> V`
- **`impl WithSubscriber for T`**
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`
  - `fn with_current_subscriber(self) -> WithDispatch`
- **`impl Allocation for T`** where `T: RefUnwindSafe + Send + Sync`
- **`impl ErasedDestructor for T`** where `T: 'static`
- **`impl MaybeSend for T`** where `T: Send`
- **`impl MaybeSend for T`** (second impl)
- **`impl ResultError for E`** where `E: Send + Debug + Sync`
- **`impl ResultType for T`** where `T: Send + Clone + Sync + Debug`
