# LabelListIndexBuilder in lancedb::index::scalar

**Module:** `lancedb::index::scalar`  
**Source:** [`src/lancedb/index/scalar.rs.html#52`](https://github.com/lancedb/lancedb/blob/v0.30.0/lancedb/src/index/scalar.rs#L52)

```text
pub struct LabelListIndexBuilder {}
```

**Description:**  
Builder for `LabelList` index. `LabelListIndexBuilder` is a scalar index that can be used on `List` columns to support queries with `array_contains_all` and `array_contains_any` using an underlying bitmap index.

## Trait Implementations

### Clone

```text
fn clone(&self) -> LabelListIndexBuilder
```
Returns a duplicate of the value.

```text
fn clone_from(&mut self, source: &Self)
```
Performs copy-assignment from `source`.

### Debug

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```
Formats the value using the given formatter.

### Default

```text
fn default() -> LabelListIndexBuilder
```
Returns the “default value” for a type.

### Serialize

```text
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where __S: Serializer,
```
Serialize this value into the given Serde serializer.

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation` (impl for T where T: RefUnwindSafe + Send + Sync)
- `Any` (impl for T where T: 'static + ?Sized)
- `ArchivePointee`
- `Borrow<T>` (impl for T where T: ?Sized)
- `BorrowMut<T>` (impl for T where T: ?Sized)
- `CloneToUninit` (impl for T where T: Clone)
- `Conv`
- `DropFlavorWrapper<T>`
- `DynClone` (impl for T where T: Clone)
- `ErasedDestructor` (impl for T where T: 'static)
- `FmtForward`
- `From<T>` (impl for T)
- `FromRef<T>` (impl for T where T: Clone)
- `HasTypeWitness<W>` (impl for T where W: MakeTypeWitness, T: ?Sized)
- `Identity`
- `Instrument`
- `Into<U>` (impl for T where U: From<T>)
- `IntoEither`
- `IntoShared<Shared>` (impl for Unshared where Shared: FromUnshared)
- `LayoutRaw`
- `MaybeSend` (impl for T where T: Send)
- `MaybeSend` (impl for T where T: Send) – duplicate
- `Niching<NichedOption<T, N1>>`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError` (impl for E where E: Send + Debug + Sync)
- `ResultType` (impl for T where T: Send + Clone + Sync + Debug)
- `Same`
- `Tap`
- `ToOwned` (impl for T where T: Clone)
- `TryConv`
- `TryFrom<U>` (impl for T where U: Into<T>)
- `TryInto<U>` (impl for T where U: TryFrom<T>)
- `TryInto<U>` (impl for T where U: TryFrom<T>) – duplicate
- `VZip<V>` (impl for T where V: MultiLane)
- `WithSubscriber`
