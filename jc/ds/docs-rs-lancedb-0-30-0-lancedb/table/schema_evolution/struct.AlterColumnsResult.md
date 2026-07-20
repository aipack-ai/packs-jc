# AlterColumnsResult

**Module:** `lancedb::table::schema_evolution`

**Source:** `src/lancedb/table/schema_evolution.rs` (lines 29-35)

## Struct Definition

```text
pub struct AlterColumnsResult {
    pub version: u64,
}
```

## Description

The result of an alter columns operation.

## Fields

- `version: u64` — a commit version.

## Trait Implementations

### `Clone`

```text
fn clone(&self) -> AlterColumnsResult
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `Default`

```text
fn default() -> AlterColumnsResult
```

### `Deserialize<'de>`

```text
fn deserialize<D>(__deserializer: D) -> Result<Self, D::Error>
where D: Deserializer<'de>
```

### `Eq`

(No methods)

### `PartialEq`

```text
fn eq(&self, other: &AlterColumnsResult) -> bool
fn ne(&self, other: &Rhs) -> bool
```

### `Serialize`

```text
fn serialize<S>(&self, __serializer: S) -> Result<S::Ok, S::Error>
where S: Serializer
```

### `StructuralPartialEq`

(No methods)

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
- `CloneToUninit`
- `Conv`
- `DeserializeOwned`
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
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>`
- `TryInto<U>` (async)
- `VZip<V>`
- `WithSubscriber`
