# ColumnOrdering in lancedb::query

## Struct Definition

```rust
pub struct ColumnOrdering {
    pub ascending: bool,
    pub nulls_first: bool,
    pub column_name: String,
}
```

Re-export Lance ColumnOrdering type for use in query ordering. Defines an ordering for a single column.

Floats are sorted using the IEEE 754 total ordering. Strings are sorted using UTF-8 lexicographic order (i.e. we sort the binary).

## Fields

- `ascending: bool`
- `nulls_first: bool`
- `column_name: String`

## Implementations

### `impl ColumnOrdering`

```rust
pub fn asc_nulls_first(column_name: String) -> ColumnOrdering
```

```rust
pub fn asc_nulls_last(column_name: String) -> ColumnOrdering
```

```rust
pub fn desc_nulls_first(column_name: String) -> ColumnOrdering
```

```rust
pub fn desc_nulls_last(column_name: String) -> ColumnOrdering
```

## Trait Implementations

### `impl Clone for ColumnOrdering`

```rust
fn clone(&self) -> ColumnOrdering
```

```rust
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for ColumnOrdering`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
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

- `Allocation` for T where T: RefUnwindSafe + Send + Sync
- `Any` for T where T: 'static + ?Sized
- `ArchivePointee` for T
- `Borrow<T>` for T where T: ?Sized
- `BorrowMut<T>` for T where T: ?Sized
- `CloneToUninit` for T where T: Clone
- `Conv` for T
- `DropFlavorWrapper<T>` for T
- `DynClone` for T where T: Clone
- `ErasedDestructor` for T where T: 'static
- `FmtForward` for T
- `From<T>` for T
- `FromRef<T>` for T where T: Clone
- `HasTypeWitness<W>` for T where W: MakeTypeWitness, T: ?Sized
- `Identity` for T where T: ?Sized
- `Instrument` for T
- `Into<U>` for T where U: From<T>
- `IntoEither` for T
- `IntoShared<Shared>` for Unshared
- `LayoutRaw` for T
- `MaybeSend` for T where T: Send
- `MaybeSend` (opendal) for T where T: Send
- `Niching<NichedOption<T, N1>>` for N2
- `Pipe` for T where T: ?Sized
- `Pointable` for T
- `Pointee` for T
- `PolicyExt` for T where T: ?Sized
- `ResultError` for E where E: Send + Debug + Sync
- `ResultType` for T where T: Send + Clone + Sync + Debug
- `Same` for T
- `Tap` for T
- `ToOwned` for T where T: Clone
- `TryConv` for T
- `TryFrom<U>` for T where U: Into<T>
- `TryInto<U>` for T where U: TryFrom<T>
- `TryInto<U>` (async-convert) for T where U: TryFrom<T>
- `VZip<V>` for T where V: MultiLane
- `WithSubscriber` for T
