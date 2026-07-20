# MultiMatchQuery in lancedb::index::scalar - Rust

In lancedb 0.30.0, located at `lancedb::index::scalar`.

## Struct

```rust
pub struct MultiMatchQuery {
    pub match_queries: Vec<MatchQuery>,
}
```

### Fields

- `match_queries: Vec<MatchQuery>` – A vector of individual match queries to be combined.

## Implementations

### impl MultiMatchQuery

- `pub fn try_new(query: String, columns: Vec<String>) -> Result<MultiMatchQuery, Error>`
- `pub fn try_with_boosts(self, boosts: Vec<f32>) -> Result<MultiMatchQuery, Error>`
- `pub fn with_operator(self, operator: Operator) -> MultiMatchQuery`

## Trait Implementations

### Clone

- `fn clone(&self) -> MultiMatchQuery`
- `fn clone_from(&mut self, source: &Self)`

### Debug

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### Deserialize<'de>

- `fn deserialize<D>(deserializer: D) -> Result<MultiMatchQuery, D::Error> where D: Deserializer<'de>`

### From<MultiMatchQuery> for FtsQuery

- `fn from(query: MultiMatchQuery) -> FtsQuery`

### FtsQueryNode

- `fn columns(&self) -> HashSet<String>`

### JsonParser

- `fn from_json(value: &Value) -> Result<MultiMatchQuery, Error>`

### PartialEq

- `fn eq(&self, other: &MultiMatchQuery) -> bool`
- `fn ne(&self, other: &MultiMatchQuery) -> bool`

### Serialize

- `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error> where S: Serializer`

### StructuralPartialEq

*(No methods, marker trait)*

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- `Any` (where T: 'static + ?Sized)
- `ArchivePointee` (type ArchivedMetadata = ())
- `Borrow<T>` (fn borrow(&self) -> &T)
- `BorrowMut<T>` (fn borrow_mut(&mut self) -> &mut T)
- `CloneToUninit` (unsafe fn clone_to_uninit(&self, dest: *mut u8))
- `Conv` (fn conv(self) -> T)
- `DeserializeOwned` (for any `'de`)
- `DropFlavorWrapper<T>` (type Flavor = MayDrop)
- `DynClone` (fn __clone_box(&self, _: Private) -> *mut ())
- `ErasedDestructor`
- `FmtForward` (multiple formatting methods)
- `From<T>` (fn from(t: T) -> T)
- `FromRef<T>` (fn from_ref(input: &T) -> T)
- `HasTypeWitness<W>` (const WITNESS: W)
- `Identity` (type Type = T, const TYPE_EQ)
- `Instrument` (fn instrument(self, span) -> Instrumented)
- `Into<U>` (fn into(self) -> U)
- `IntoEither` (fn into_either, into_either_with)
- `IntoShared` (for Unshared)
- `LayoutRaw` (fn layout_raw(metadata) -> Result<Layout, LayoutError>)
- `MaybeSend` (where T: Send)
- `Niching<NichedOption<T, N1>>` for N2
- `Pipe` (multiple pipe methods)
- `Pointable` (type Init = T, const ALIGN, unsafe init/deref/drop)
- `Pointee` (type Metadata = ())
- `PolicyExt` (fn and, or)
- `ResultError` (for E: Send + Debug + Sync)
- `ResultType` (for T: Send + Clone + Sync + Debug)
- `Same` (type Output = T)
- `Tap` (multiple tap methods)
- `ToOwned` (type Owned = T, fn to_owned, clone_into)
- `TryConv` (fn try_conv(self) -> Result<T, E>)
- `TryFrom<U>` (type Error = Infallible, fn try_from)
- `TryInto<U>` (type Error = TryFrom::Error, fn try_into)
- `TryInto<U>` (async variant)
- `VZip<V>` (fn vzip(self) -> V)
- `WithSubscriber` (fn with_subscriber, with_current_subscriber)
- `Allocation` (where T: RefUnwindSafe + Send + Sync)
