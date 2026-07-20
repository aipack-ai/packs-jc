# WriteOptions in lancedb::table

Struct definition in `lancedb::table`.

## Struct WriteOptions

```text
pub struct WriteOptions {
    pub lance_write_params: Option<WriteParams>,
}
```

Expand description: Options to use when writing data.

## Fields

- `lance_write_params: Option<WriteParams>` — Advanced parameters that can be used to customize table creation. Overlapping `OpenTableBuilder` options (e.g. `AddDataBuilder::mode`) will take precedence over their counterparts in `WriteOptions` (e.g. `WriteParams::mode`).

## Trait Implementations

### Clone

- `fn clone(&self) -> WriteOptions` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### Debug

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### Default

- `fn default() -> WriteOptions` — Returns the “default value” for a type.

## Auto Trait Implementations

- Freeze
- `!RefUnwindSafe`
- Send
- Sync
- Unpin
- UnsafeUnpin
- `!UnwindSafe`

## Blanket Implementations

- **Any** — Where `T: 'static + ?Sized`. Method: `fn type_id(&self) -> TypeId`
- **ArchivePointee** — Associated type `ArchivedMetadata = ()`. Method: `fn pointer_metadata(&self, _: &ArchivedMetadata) -> Pointee::Metadata`
- **Borrow<T>** — Where `T: ?Sized`. Method: `fn borrow(&self) -> &T`
- **BorrowMut<T>** — Where `T: ?Sized`. Method: `fn borrow_mut(&mut self) -> &mut T`
- **CloneToUninit** — Where `T: Clone`. Method: `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- **Conv** — Method: `fn conv(self) -> T` where `Self: Into<T>`
- **DropFlavorWrapper<T>** — Associated type `Flavor = MayDrop`
- **DynClone** — Where `T: Clone`. Method: `fn __clone_box(&self, _: Private) -> *mut ()`
- **FmtForward** — Methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list`
- **From<T>** — Method: `fn from(t: T) -> T`
- **FromRef<T>** — Where `T: Clone`. Method: `fn from_ref(input: &T) -> T`
- **HasTypeWitness<W>** — Where `W: MakeTypeWitness, T: ?Sized`. Associated constant `WITNESS: W`
- **Identity** — Where `T: ?Sized`. Associated constant `TYPE_EQ: TypeEq`, associated type `Type = T`
- **Instrument** — Methods: `fn instrument(self, span: Span) -> Instrumented`, `fn in_current_span(self) -> Instrumented`
- **Into<U>** — Where `U: From<T>`. Method: `fn into(self) -> U`
- **IntoEither** — Methods: `fn into_either(self, into_left: bool) -> Either`, `fn into_either_with(self, into_left: F) -> Either`
- **IntoShared<Shared>** — Where `Shared: FromUnshared`. Method: `fn into_shared(self) -> Shared`
- **LayoutRaw** — Method: `fn layout_raw(&self, _: Pointee::Metadata) -> Result<Layout, LayoutError>`
- **Niching<NichedOption<T, N1>> for N2** — Where `T: SharedNiching, N1: Niching, N2: Niching`. Methods: `unsafe fn is_niched(niched: *const NichedOption) -> bool`, `fn resolve_niched(out: Place<NichedOption>)`
- **Pipe** — Methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`
- **Pointable** — Associated constant `ALIGN: usize`, associated type `Init = T`. Methods: `unsafe fn init(init: Init) -> usize`, `unsafe fn deref<'a>(ptr: usize) -> &'a T`, `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`, `unsafe fn drop(ptr: usize)`
- **Pointee** — Associated type `Metadata = ()`
- **PolicyExt** — Where `T: ?Sized`. Methods: `fn and(self, other: P) -> And`, `fn or(self, other: P) -> Or`
- **Same** — Associated type `Output = T`
- **Tap** — Methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`
- **ToOwned** — Where `T: Clone`. Associated type `Owned = T`. Methods: `fn to_owned(&self) -> T`, `fn clone_into(&self, target: &mut T)`
- **TryConv** — Method: `fn try_conv(self) -> Result<T, Self::Error>` where `Self: TryInto<T>`
- **TryFrom<U>** — Where `U: Into<T>`. Associated type `Error = Infallible`. Method: `fn try_from(value: U) -> Result<T, Self::Error>`
- **TryInto<U>** — Where `U: TryFrom<T>`. Associated type `Error = <U as TryFrom<T>>::Error`. Method: `fn try_into(self) -> Result<U, Self::Error>` (also an async variant)
- **VZip<V>** — Where `V: MultiLane`. Method: `fn vzip(self) -> V`
- **WithSubscriber** — Methods: `fn with_subscriber(self, subscriber: S) -> WithDispatch`, `fn with_current_subscriber(self) -> WithDispatch`
- **ErasedDestructor** — Where `T: 'static`
- **MaybeSend** — Where `T: Send` (two implementations)
- **ResultError** — Where `E: Send + Debug + Sync`
- **ResultType** — Where `T: Send + Clone + Sync + Debug`
