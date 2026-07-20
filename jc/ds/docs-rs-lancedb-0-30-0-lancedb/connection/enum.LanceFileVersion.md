# LanceFileVersion

Enum in [`lancedb::connection`](index.html).

**Source:** [https://docs.rs/lance-encoding/7.0.0/x86_64-unknown-linux-gnu/src/lance_encoding/version.rs.html#18](https://docs.rs/lance-encoding/7.0.0/x86_64-unknown-linux-gnu/src/lance_encoding/version.rs.html#18)

```rust
pub enum LanceFileVersion {
    Legacy,
    V2_0,
    V2_1,
    Stable,
    V2_2,
    Next,
    V2_3,
}
```

Lance file version.

## Variants

- **Legacy** – The legacy (0.1) format.
- **V2_0** – 
- **V2_1** – 
- **Stable** – The latest stable release (also the default version for new datasets).
- **V2_2** – 
- **Next** – The latest unstable release.
- **V2_3** – 

## Implementations

### `impl LanceFileVersion`

#### `pub fn resolve(&self) -> LanceFileVersion`

Convert Stable or Next to the actual version.

#### `pub fn is_unstable(&self) -> bool`

#### `pub fn try_from_major_minor(major: u32, minor: u32) -> Result<LanceFileVersion, Error>`

#### `pub fn to_numbers(&self) -> (u32, u32)`

#### `pub fn iter_non_legacy() -> impl Iterator<LanceFileVersion>`

#### `pub fn support_add_sub_column(&self) -> bool`

#### `pub fn support_remove_sub_column(&self, field: &Field) -> bool`

## Trait Implementations

### `impl Clone for LanceFileVersion`

- `fn clone(&self) -> LanceFileVersion`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for LanceFileVersion`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### `impl Default for LanceFileVersion`

- `fn default() -> LanceFileVersion`

### `impl Display for LanceFileVersion`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### `impl FromStr for LanceFileVersion`

- `type Err = Error`
- `fn from_str(value: &str) -> Result<LanceFileVersion, Error>`

### `impl IntoEnumIterator for LanceFileVersion`

- `type Iterator = LanceFileVersionIter`
- `fn iter() -> LanceFileVersionIter`

### `impl Ord for LanceFileVersion`

- `fn cmp(&self, other: &LanceFileVersion) -> Ordering`
- `fn max(self, other: Self) -> Self`
- `fn min(self, other: Self) -> Self`
- `fn clamp(self, min: Self, max: Self) -> Self`

### `impl PartialEq for LanceFileVersion`

- `fn eq(&self, other: &LanceFileVersion) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl PartialOrd for LanceFileVersion`

- `fn partial_cmp(&self, other: &LanceFileVersion) -> Option<Ordering>`
- `fn lt(&self, other: &Rhs) -> bool`
- `fn le(&self, other: &Rhs) -> bool`
- `fn gt(&self, other: &Rhs) -> bool`
- `fn ge(&self, other: &Rhs) -> bool`

### `impl Copy for LanceFileVersion`

### `impl Eq for LanceFileVersion`

### `impl StructuralPartialEq for LanceFileVersion`

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
- `AsOut<T>`
- `Boilerplate`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `Comparable<K>`
- `Conv`
- `DropFlavorWrapper<T>`
- `DynClone`
- `DynEq`
- `Equivalent<K>`
- `ErasedDestructor`
- `FmtForward`
- `From<T>`
- `FromRef<T>`
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
- `ResultType`
- `Same`
- `Tap`
- `ToOwned`
- `ToString`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>`
- `VZip<V>`
- `WithSubscriber`
