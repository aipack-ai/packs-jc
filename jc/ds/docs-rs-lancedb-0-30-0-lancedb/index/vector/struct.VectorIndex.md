# VectorIndex

In `lancedb::index::vector`

## Struct Definition

```text
pub struct VectorIndex {
    pub columns: Vec<String>,
    pub index_name: String,
    pub index_uuid: String,
}
```

## Fields

- `columns: Vec<String>`
- `index_name: String`
- `index_uuid: String`

## Implementations

### `impl VectorIndex`

#### `pub fn new_from_format(manifest: &Manifest, index: &IndexMetadata) -> Self`

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
- `Same`
- `Tap`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>`
- `VZip<V>`
- `WithSubscriber`
