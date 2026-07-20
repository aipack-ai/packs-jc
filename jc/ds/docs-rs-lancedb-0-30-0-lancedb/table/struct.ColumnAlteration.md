# ColumnAlteration

In lancedb::table

## Struct Definition

```text
pub struct ColumnAlteration {
    pub path: String,
    pub rename: Option<String>,
    pub nullable: Option<bool>,
    pub data_type: Option<DataType>,
}
```

## Description

Definition of a change to a column in a dataset.

## Fields

- `path: String` – Path to the existing column to be altered.
- `rename: Option<String>` – The new name of the column. If `None`, the column name will not be changed.
- `nullable: Option<bool>` – Whether the column is nullable. If `None`, the nullability will not be changed.
- `data_type: Option<DataType>` – The new data type of the column. If `None`, the data type will not be changed.

## Implementations

### `impl ColumnAlteration`

- `pub fn new(path: String) -> ColumnAlteration`
- `pub fn rename(self, name: String) -> ColumnAlteration`
- `pub fn set_nullable(self, nullable: bool) -> ColumnAlteration`
- `pub fn cast_to(self, data_type: DataType) -> ColumnAlteration`

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation<T>` where T: `RefUnwindSafe + Send + Sync`
- `Any<T>` where T: `'static + ?Sized` – method `fn type_id(&self) -> TypeId`
- `ArchivePointee<T>` – associated type `ArchivedMetadata = ()`, method `fn pointer_metadata(_: &()) -> <Pointee>::Metadata`
- `Borrow<T>` where T: `?Sized` – method `fn borrow(&self) -> &T`
- `BorrowMut<T>` where T: `?Sized` – method `fn borrow_mut(&mut self) -> &mut T`
- `Conv<T>` – method `fn conv(self) -> T` where `Self: Into<T>`
- `DropFlavorWrapper<T>` – associated type `Flavor = MayDrop`
- `FmtForward<T>` – methods: `fmt_binary`, `fmt_display`, `fmt_lower_exp`, `fmt_lower_hex`, `fmt_octal`, `fmt_pointer`, `fmt_upper_exp`, `fmt_upper_hex`, `fmt_list`
- `From<T>` – method `fn from(t: T) -> T`
- `HasTypeWitness<W>` where `W: MakeTypeWitness, T: ?Sized` – constant `WITNESS: W`
- `Identity<T>` where T: `?Sized` – constant `TYPE_EQ: TypeEq<Self::Type>`, associated type `Type = T`
- `Instrument<T>` – methods: `fn instrument(self, span: Span) -> Instrumented`, `fn in_current_span(self) -> Instrumented`
- `Into<U>` where `U: From<T>` – method `fn into(self) -> U`
- `IntoEither<T>` – methods: `fn into_either(self, into_left: bool) -> Either`, `fn into_either_with(self, into_left: F) -> Either`
- `IntoShared<Shared>` where `Shared: FromUnshared` – method `fn into_shared(self) -> Shared`
- `LayoutRaw<T>` – method `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`
- `Niching<NichedOption<T, N1>>` where `T: SharedNiching, N1: Niching, N2: Niching` – methods: `unsafe fn is_niched(niched: *const NichedOption) -> bool`, `fn resolve_niched(out: Place<NichedOption>)`
- `Pipe<T>` where T: `?Sized` – methods: `pipe`, `pipe_ref`, `pipe_ref_mut`, `pipe_borrow`, `pipe_borrow_mut`, `pipe_as_ref`, `pipe_as_mut`, `pipe_deref`, `pipe_deref_mut`
- `Pointable<T>` – associated constant `ALIGN: usize`, associated type `Init = T`, methods: `unsafe fn init(init: Self::Init) -> usize`, `unsafe fn deref<'a>(ptr: usize) -> &'a T`, `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`, `unsafe fn drop(ptr: usize)`
- `Pointee<T>` – associated type `Metadata = ()`
- `PolicyExt<T>` where T: `?Sized` – methods: `fn and(self, other: P) -> And`, `fn or(self, other: P) -> Or`
- `Same<T>` – associated type `Output = T`
- `Tap<T>` – methods: `tap`, `tap_mut`, `tap_borrow`, `tap_borrow_mut`, `tap_ref`, `tap_ref_mut`, `tap_deref`, `tap_deref_mut`, `tap_dbg`, `tap_mut_dbg`, `tap_borrow_dbg`, `tap_borrow_mut_dbg`, `tap_ref_dbg`, `tap_ref_mut_dbg`, `tap_deref_dbg`, `tap_deref_mut_dbg`
- `TryConv<T>` – method `fn try_conv(self) -> Result<T, Error>` where `Self: TryInto<T>`
- `TryFrom<U>` where `U: Into<T>` – associated type `Error = Infallible`, method `fn try_from(value: U) -> Result<T, Self::Error>`
- `TryInto<U>` where `U: TryFrom<T>` – associated type `Error = <U as TryFrom<T>>::Error`, method `fn try_into(self) -> Result<U, Self::Error>`
- `TryInto<U>` (async version) where `U: TryFrom<T>` – associated type `Error = <U as TryFrom<T>>::Error`, method `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<...>>>`
- `VZip<V>` where `V: MultiLane` – method `fn vzip(self) -> V`
- `WithSubscriber<T>` – methods: `fn with_subscriber(self, subscriber: S) -> WithDispatch`, `fn with_current_subscriber(self) -> WithDispatch`
- `ErasedDestructor<T>` where T: `'static`
- `MaybeSend<T>` where T: `Send` (two separate implementations)
