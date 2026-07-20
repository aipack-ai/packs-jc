# FragmentSummaryStats in lancedb::table

## Struct Definition

[Source](../../src/lancedb/table.rs.html#3139-3147)

```text
pub struct FragmentSummaryStats {
    pub min: usize,
    pub max: usize,
    pub mean: usize,
    pub p25: usize,
    pub p50: usize,
    pub p75: usize,
    pub p99: usize,
}
```

## Fields

- `min: usize`
- `max: usize`
- `mean: usize`
- `p25: usize`
- `p50: usize`
- `p75: usize`
- `p99: usize`

## Trait Implementations

### `impl Debug for FragmentSummaryStats`

[Source](../../src/lancedb/table.rs.html#3138)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### `impl<'de> Deserialize<'de> for FragmentSummaryStats`

[Source](../../src/lancedb/table.rs.html#3138)

- `fn deserialize<__D>(__deserializer: __D) -> Result<Self, __D::Error> where __D: Deserializer<'de>` — Deserialize this value from the given Serde deserializer.

### `impl PartialEq for FragmentSummaryStats`

[Source](../../src/lancedb/table.rs.html#3138)

- `fn eq(&self, other: &FragmentSummaryStats) -> bool` — Tests for `self` and `other` values to be equal.
- `fn ne(&self, other: &Rhs) -> bool` — Tests for `!=`.

### `impl StructuralPartialEq for FragmentSummaryStats`

[Source](../../src/lancedb/table.rs.html#3138)

- (no methods)

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation`
- `Any`
- `ArchivePointee`
- `Borrow<T>`
- `BorrowMut<T>`
- `Conv`
- `DeserializeOwned`
- `DropFlavorWrapper<T>`
- `ErasedDestructor`
- `FmtForward`
- `From<T>`
- `HasTypeWitness<W>`
- `Identity`
- `Instrument`
- `Into<U>`
- `IntoEither`
- `IntoShared<Shared>`
- `LayoutRaw`
- `MaybeSend`
- `Niching<NichedOption<T, N1>>`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError`
- `Same`
- `Tap`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>`
- `VZip<V>`
- `WithSubscriber`
