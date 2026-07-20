# TableNamesBuilder in lancedb::connection - Rust

## Struct

```text
pub struct TableNamesBuilder { /* private fields */ }
```

A builder for configuring a [`Connection::table_names`](struct.Connection.html#method.table_names) operation.

## Implementations

### `impl TableNamesBuilder`

#### `pub fn start_after(self, start_after: impl Into<String>) -> Self`

If present, only return names that come lexicographically after the supplied value. This can be combined with limit to implement pagination by setting this to the last table name from the previous page.

#### `pub fn limit(self, limit: u32) -> Self`

The maximum number of table names to return.

#### `pub fn namespace(self, namespace_path: Vec<String>) -> Self`

Set the namespace path to list tables from.

#### `pub async fn execute(self) -> Result<Vec<String>>`

Execute the table names operation.

## Auto Trait Implementations

- Freeze
- !RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- !UnwindSafe

## Blanket Implementations

- Any
- ArchivePointee
- Borrow<T>
- BorrowMut<T>
- Conv
- DropFlavorWrapper<T>
- ErasedDestructor
- FmtForward
- From<T>
- HasTypeWitness<W>
- Identity
- Instrument
- Into<U>
- IntoEither
- IntoShared<Shared> for Unshared
- LayoutRaw
- MaybeSend (two implementations)
- Niching<NichedOption<T, N1>> for N2
- Pipe
- Pointable
- Pointee
- PolicyExt
- Same
- Tap
- TryConv
- TryFrom<U>
- TryInto<U> (two implementations)
- VZip<V>
- WithSubscriber
