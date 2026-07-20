# BooleanQuery

## In `lancedb::index::scalar`

Struct representing a boolean query for full-text search.

### Source

- [View source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#586)

### Definition

```text
pub struct BooleanQuery {
    pub should: Vec<FtsQuery>,
    pub must: Vec<FtsQuery>,
    pub must_not: Vec<FtsQuery>,
}
```

---

## Fields

- **`should`**: `Vec<FtsQuery>` – Queries that should match.
- **`must`**: `Vec<FtsQuery>` – Queries that must match.
- **`must_not`**: `Vec<FtsQuery>` – Queries that must not match.

---

## Implementations

### `impl BooleanQuery`

#### `pub fn new(iter: impl IntoIterator<Item = (Occur, FtsQuery)>) -> BooleanQuery`

Constructs a new `BooleanQuery` from an iterator of `(Occur, FtsQuery)` pairs.

#### `pub fn with_should(self, query: FtsQuery) -> BooleanQuery`

Adds a query to the `should` list.

#### `pub fn with_must(self, query: FtsQuery) -> BooleanQuery`

Adds a query to the `must` list.

#### `pub fn with_must_not(self, query: FtsQuery) -> BooleanQuery`

Adds a query to the `must_not` list.

---

## Trait Implementations

### `impl Clone for BooleanQuery`

- `fn clone(&self) -> BooleanQuery`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for BooleanQuery`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### `impl<'de> Deserialize<'de> for BooleanQuery`

- `fn deserialize<__D>(__deserializer: __D) -> Result<BooleanQuery, __D::Error>` where `__D: Deserializer<'de>`

### `impl From<BooleanQuery> for FtsQuery`

- `fn from(query: BooleanQuery) -> FtsQuery`

### `impl FtsQueryNode for BooleanQuery`

- `fn columns(&self) -> HashSet<String>`

### `impl JsonParser for BooleanQuery`

- `fn from_json(value: &Value) -> Result<BooleanQuery, Error>`

### `impl PartialEq for BooleanQuery`

- `fn eq(&self, other: &BooleanQuery) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl Serialize for BooleanQuery`

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where `__S: Serializer`

### `impl StructuralPartialEq for BooleanQuery`

---

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

---

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
