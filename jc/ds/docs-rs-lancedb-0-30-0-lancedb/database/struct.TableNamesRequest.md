# TableNamesRequest in lancedb::database

## Struct TableNamesRequest

A request to list names of tables in the database (deprecated, use `ListTablesRequest`).

**Source:** [src/lancedb/database.rs.html#42-53](../../src/lancedb/database.rs.html#42-53)

```text
pub struct TableNamesRequest {
    pub namespace_path: Vec<String>,
    pub start_after: Option<String>,
    pub limit: Option<u32>,
}
```

### Fields

- `namespace_path: Vec<String>` — The namespace path to list tables in. Empty list represents root namespace.
- `start_after: Option<String>` — If present, only return names that come lexicographically after the supplied value. This can be combined with `limit` to implement pagination by setting this to the last table name from the previous page.
- `limit: Option<u32>` — The maximum number of table names to return.

## Trait Implementations

### impl Clone for TableNamesRequest

- `fn clone(&self) -> TableNamesRequest` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### impl Debug for TableNamesRequest

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### impl Default for TableNamesRequest

- `fn default() -> TableNamesRequest` — Returns the “default value” for a type.

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
- `DropFlavorWrapper<T>`
- `DynClone`
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
- `MaybeSend` (two implementations)
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
- `TryInto<U>` (two implementations)
- `VZip<V>`
- `WithSubscriber`
