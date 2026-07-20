# MatchQuery

In `lancedb::index::scalar`

## Struct Definition

```text
pub struct MatchQuery {
    pub column: Option<String>,
    pub terms: String,
    pub boost: f32,
    pub fuzziness: Option<u32>,
    pub max_expansions: usize,
    pub operator: Operator,
    pub prefix_length: u32,
}
```

## Fields

- `column: Option<String>` – The column to query.
- `terms: String` – The search terms.
- `boost: f32` – Boost factor for scoring.
- `fuzziness: Option<u32>` – Optional fuzziness value for fuzzy matching.
- `max_expansions: usize` – The maximum number of terms to expand for fuzzy matching. Default to 50.
- `operator: Operator` – The operator to use for combining terms. Can be `And` or `Or` (default `Or`).
- `prefix_length: u32` – The number of beginning characters unchanged for fuzzy matching. Default to 0.

## Implementations

### Associated Functions

- `pub fn new(terms: String) -> MatchQuery`
- `pub fn auto_fuzziness(token: &str) -> u32`

### Methods

- `pub fn with_column(self, column: Option<String>) -> MatchQuery`
- `pub fn with_boost(self, boost: f32) -> MatchQuery`
- `pub fn with_fuzziness(self, fuzziness: Option<u32>) -> MatchQuery`
- `pub fn with_max_expansions(self, max_expansions: usize) -> MatchQuery`
- `pub fn with_operator(self, operator: Operator) -> MatchQuery`
- `pub fn with_prefix_length(self, prefix_length: u32) -> MatchQuery`

## Trait Implementations

### Clone

- `fn clone(&self) -> MatchQuery`
- `fn clone_from(&mut self, source: &Self)`

### Debug

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### Deserialize<'de>

- `fn deserialize<__D>(__deserializer: __D) -> Result<MatchQuery, __D::Error>` where `__D: Deserializer<'de>`

### From<MatchQuery> for FtsQuery

- `fn from(query: MatchQuery) -> FtsQuery`

### FtsQueryNode

- `fn columns(&self) -> HashSet<String>`

### JsonParser

- `fn from_json(value: &Value) -> Result<MatchQuery, Error>`

### PartialEq

- `fn eq(&self, other: &MatchQuery) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### Serialize

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where `__S: Serializer`

### StructuralPartialEq

(No methods)

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- **Any** – `fn type_id(&self) -> TypeId`
- **ArchivePointee** – `type ArchivedMetadata = ()`; `fn pointer_metadata(_: &Self::ArchivedMetadata) -> <Pointee>::Metadata`
- **Borrow<T>** – `fn borrow(&self) -> &T`
- **BorrowMut<T>** – `fn borrow_mut(&mut self) -> &mut T`
- **CloneToUninit** – `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- **Conv** – `fn conv<T>(self) -> T` where `Self: Into<T>`
- **DropFlavorWrapper<T>** – `type Flavor = MayDrop`
- **DynClone** – `fn __clone_box(&self, _: Private) -> *mut ()`
- **FmtForward** – `fn fmt_binary(self) -> FmtBinary`, `fn fmt_display(self) -> FmtDisplay`, `fn fmt_lower_exp(self) -> FmtLowerExp`, `fn fmt_lower_hex(self) -> FmtLowerHex`, `fn fmt_octal(self) -> FmtOctal`, `fn fmt_pointer(self) -> FmtPointer`, `fn fmt_upper_exp(self) -> FmtUpperExp`, `fn fmt_upper_hex(self) -> FmtUpperHex`, `fn fmt_list(self) -> FmtList`
- **From<T>** – `fn from(t: T) -> T`
- **FromRef<T>** – `fn from_ref(input: &T) -> T` where `T: Clone`
- **HasTypeWitness<W>** – `const WITNESS: W`
- **Identity** – `const TYPE_EQ: TypeEq<Self::Type>`; `type Type = T`
- **Instrument** – `fn instrument(self, span: Span) -> Instrumented<Self>`; `fn in_current_span(self) -> Instrumented<Self>`
- **Into<U>** – `fn into(self) -> U`
- **IntoEither** – `fn into_either(self, into_left: bool) -> Either`; `fn into_either_with<F>(self, into_left: F) -> Either`
- **IntoShared<Shared> for Unshared** – `fn into_shared(self) -> Shared`
- **LayoutRaw** – `fn layout_raw(_: <Pointee>::Metadata) -> Result<Layout, LayoutError>`
- **Niching<NichedOption<T, N1>> for N2** – `unsafe fn is_niched(niched: *const NichedOption) -> bool`; `fn resolve_niched(out: Place<NichedOption>)`
- **Pipe** – `fn pipe<R>(self, func: impl FnOnce(Self) -> R) -> R`; `fn pipe_ref<'a, R>(&'a self, func: impl FnOnce(&'a Self) -> R) -> R`; `fn pipe_ref_mut<'a, R>(&'a mut self, func: impl FnOnce(&'a mut Self) -> R) -> R`; `fn pipe_borrow<'a, B, R>(&'a self, func: impl FnOnce(&'a B) -> R) -> R`; `fn pipe_borrow_mut<'a, B, R>(&'a mut self, func: impl FnOnce(&'a mut B) -> R) -> R`; `fn pipe_as_ref<'a, U, R>(&'a self, func: impl FnOnce(&'a U) -> R) -> R`; `fn pipe_as_mut<'a, U, R>(&'a mut self, func: impl FnOnce(&'a mut U) -> R) -> R`; `fn pipe_deref<'a, T, R>(&'a self, func: impl FnOnce(&'a T) -> R) -> R`; `fn pipe_deref_mut<'a, T, R>(&'a mut self, func: impl FnOnce(&'a mut T) -> R) -> R`
- **Pointable** – `const ALIGN: usize`; `type Init = T`; `unsafe fn init(init: Self::Init) -> usize`; `unsafe fn deref<'a>(ptr: usize) -> &'a T`; `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`; `unsafe fn drop(ptr: usize)`
- **Pointee** – `type Metadata = ()`
- **PolicyExt** – `fn and<P>(self, other: P) -> And<Self, P>`; `fn or<P>(self, other: P) -> Or<Self, P>`
- **Same** – `type Output = T`
- **Tap** – `fn tap(self, func: impl FnOnce(&Self)) -> Self`; `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`; `fn tap_borrow<B>(self, func: impl FnOnce(&B)) -> Self`; `fn tap_borrow_mut<B>(self, func: impl FnOnce(&mut B)) -> Self`; `fn tap_ref<R>(self, func: impl FnOnce(&R)) -> Self`; `fn tap_ref_mut<R>(self, func: impl FnOnce(&mut R)) -> Self`; `fn tap_deref<T>(self, func: impl FnOnce(&T)) -> Self`; `fn tap_deref_mut<T>(self, func: impl FnOnce(&mut T)) -> Self`; `fn tap_dbg(...)`; `fn tap_mut_dbg(...)`; `fn tap_borrow_dbg(...)`; `fn tap_borrow_mut_dbg(...)`; `fn tap_ref_dbg(...)`; `fn tap_ref_mut_dbg(...)`; `fn tap_deref_dbg(...)`; `fn tap_deref_mut_dbg(...)`
- **ToOwned** – `type Owned = T`; `fn to_owned(&self) -> T`; `fn clone_into(&self, target: &mut T)`
- **TryConv** – `fn try_conv<T>(self) -> Result<T, Self::Error>`
- **TryFrom<U> for T** – `type Error = Infallible`; `fn try_from(value: U) -> Result<T, Self::Error>`
- **TryInto<U> for T** – `type Error = <U as TryFrom<T>>::Error`; `fn try_into(self) -> Result<U, Self::Error>`
- **TryInto<U> for T (async)** – `type Error = <U as TryFrom<T>>::Error`; `fn try_into<'async_trait>(self) -> Pin<Box<dyn Future<Output = Result<U, Self::Error>> + 'async_trait>>`
- **VZip<V>** – `fn vzip(self) -> V`
- **WithSubscriber** – `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch`; `fn with_current_subscriber(self) -> WithDispatch`
- **Allocation** (conditional) – (blanket for `T: RefUnwindSafe + Send + Sync`)
- **DeserializeOwned** (blanket for `T: for<'de> Deserialize<'de>`)
- **ErasedDestructor** (blanket for `T: 'static`)
- **MaybeSend** (two blanket impls for `T: Send`)
- **ResultError** (blanket for `E: Send + Debug + Sync`)
- **ResultType** (blanket for `T: Send + Clone + Sync + Debug`)
