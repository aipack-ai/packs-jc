# DeleteResult

Struct in [lancedb::table::delete](index.html)  
(lancedb 0.30.0)

## Struct Definition

Source: [`src/lancedb/table/delete.rs`](../../../src/lancedb/table/delete.rs.html#13-22)

```rust
pub struct DeleteResult {
    pub num_deleted_rows: u64,
    pub version: u64,
}
```

## Fields

- `num_deleted_rows: u64` – The number of rows that were deleted.
- `version: u64` – A commit version.

## Trait Implementations

### `Clone`

```rust
fn clone(&self) -> DeleteResult
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `Default`

```rust
fn default() -> DeleteResult
```

### `Deserialize<'de>`

```rust
fn deserialize<__D>(__deserializer: __D) -> Result<Self, Error>
where __D: Deserializer<'de>
```

### `PartialEq`

```rust
fn eq(&self, other: &DeleteResult) -> bool
fn ne(&self, other: &Rhs) -> bool
```

### `Serialize`

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where __S: Serializer
```

### `Eq`

(No methods)

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

- `Any` – `fn type_id(&self) -> TypeId`
- `ArchivePointee` – type `ArchivedMetadata = ()`, `fn pointer_metadata(...) -> Metadata`
- `Borrow<T>` – `fn borrow(&self) -> &T`
- `BorrowMut<T>` – `fn borrow_mut(&mut self) -> &mut T`
- `CloneToUninit` – `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `Conv` – `fn conv(self) -> T`
- `DropFlavorWrapper<T>` – type `Flavor = MayDrop`
- `DynClone` – `fn __clone_box(&self, _: Private) -> *mut ()`
- `DynEq` – `fn dyn_eq(&self, other: &(dyn Any + 'static)) -> bool`
- `Equivalent<K>` – `fn equivalent(&self, key: &K) -> bool` (multiple)
- `FmtForward` – methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list`
- `From<T>` – `fn from(t: T) -> T`
- `FromRef<T>` – `fn from_ref(input: &T) -> T`
- `HasTypeWitness<W>` – const `WITNESS: W`
- `Identity<T>` – const `TYPE_EQ: TypeEq<Self, T>`, type `Type = T`
- `Instrument` – `fn instrument(self, span: Span) -> Instrumented`, `fn in_current_span(self) -> Instrumented`
- `Into<U>` – `fn into(self) -> U`
- `IntoEither` – `fn into_either(self, into_left: bool) -> Either`, `fn into_either_with(self, into_left: F) -> Either`
- `IntoShared<Shared>` – `fn into_shared(self) -> Shared`
- `LayoutRaw` – `fn layout_raw(metadata: Metadata) -> Result<Layout, LayoutError>`
- `Niching<NichedOption<T, N1>>` – `unsafe fn is_niched(niched: *const NichedOption) -> bool`, `fn resolve_niched(out: Place<NichedOption>)`
- `Pipe` – methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`
- `Pointable` – const `ALIGN: usize`, type `Init = T`, methods: `init`, `deref`, `deref_mut`, `drop`
- `Pointee` – type `Metadata = ()`
- `PolicyExt` – methods: `and`, `or`
- `ResultError` – (for errors)
- `ResultType` – (for values)
- `Same` – type `Output = T`
- `Tap` – methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`
- `ToOwned` – type `Owned = T`, methods: `to_owned`, `clone_into`
- `TryConv` – `fn try_conv(self) -> Result<T, Error>`
- `TryFrom<U>` – type `Error = Infallible`, `fn try_from(value: U) -> Result<T, Self::Error>`
- `TryInto<U>` – type `Error = TryFrom<U>::Error`, `fn try_into(self) -> Result<U, Self::Error>`
- `TryInto<U>` (async) – type `Error = TryFrom<U>::Error`, `async fn try_into(self) -> Result<U, Self::Error>`
- `VZip<V>` – `fn vzip(self) -> V`
- `WithSubscriber` – `fn with_subscriber(self, subscriber: S) -> WithDispatch`, `fn with_current_subscriber(self) -> WithDispatch`
- `Allocation` – (for buffer allocation)
- `DeserializeOwned` – (for owned deserialization)
- `ErasedDestructor` – (for dynamic destruction)
- `MaybeSend` – (marker)
