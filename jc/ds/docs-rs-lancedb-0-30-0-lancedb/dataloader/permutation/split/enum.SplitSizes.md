# SplitSizes

Enum in `lancedb::dataloader::permutation::split`.

## Enum Definition

```text
pub enum SplitSizes {
    Percentages(Vec<f64>),
    Counts(Vec<u64>),
    Fixed(u64),
}
```

Split configuration – either percentages or absolute counts.  
If the percentages do not sum to 1.0 (or the counts do not sum to the total number of rows) the remaining rows will not be included in the permutation.  
The default implementation assigns all rows to a single split.

## Variants

- **Percentages(Vec<f64>)** – Percentage splits (must sum to ≤ 1.0). The number of rows in each split is the nearest integer to the percentage multiplied by the total number of rows.
- **Counts(Vec<u64>)** – Absolute row counts per split. If the dataset doesn’t contain enough matching rows to fill all splits then an error will be raised.
- **Fixed(u64)** – Divides data into a fixed number of splits. Will divide the data evenly. If the number of rows is not divisible by the number of splits then the rows per split is rounded down.

## Implementations

### `impl SplitSizes`

```text
pub fn validate(&self, num_rows: u64) -> Result<()>
```

```text
pub fn to_counts(&self, num_rows: u64) -> Vec<u64>
```

## Trait Implementations

### `Clone`

```text
fn clone(&self) -> SplitSizes
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result<()>
```

### `Default`

```text
fn default() -> Self
```

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- Allocation (where T: RefUnwindSafe + Send + Sync)
- Any (where T: 'static + ?Sized)
- ArchivePointee
- Borrow<T> (where T: ?Sized)
- BorrowMut<T> (where T: ?Sized)
- CloneToUninit (where T: Clone)
- Conv
- DropFlavorWrapper<T>
- DynClone (where T: Clone)
- ErasedDestructor (where T: 'static)
- FmtForward
- From<T>
- FromRef<T> (where T: Clone)
- HasTypeWitness<W> (where W: MakeTypeWitness, T: ?Sized)
- Identity (where T: ?Sized)
- Instrument
- Into<U> (where U: From<T>)
- IntoEither
- IntoShared<Shared> (where Shared: FromUnshared)
- LayoutRaw
- MaybeSend (where T: Send) (two occurrences)
- Niching<NichedOption<T, N1>> (where T: SharedNiching, N1: Niching, N2: Niching)
- Pipe (where T: ?Sized)
- Pointable
- Pointee
- PolicyExt (where T: ?Sized)
- ResultError (where E: Send + Debug + Sync)
- ResultType (where T: Send + Clone + Sync + Debug)
- Same
- Tap (where T: ?Sized)
- ToOwned (where T: Clone)
- TryConv
- TryFrom<U> (where U: Into<T>)
- TryInto<U> (where U: TryFrom<T>) – two implementations
- VZip<V> (where V: MultiLane)
- WithSubscriber
