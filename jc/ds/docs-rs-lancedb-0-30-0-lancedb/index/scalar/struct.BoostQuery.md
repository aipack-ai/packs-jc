# BoostQuery

**Module:** `lancedb::index::scalar`

**Source:** [https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#424](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#424)

## Struct Definition

```rust
pub struct BoostQuery {
    pub positive: Box<FtsQuery>,
    pub negative: Box<FtsQuery>,
    pub negative_boost: f32,
}
```

## Fields

- `positive: Box<FtsQuery>` — The positive query.
- `negative: Box<FtsQuery>` — The negative query.
- `negative_boost: f32` — The boost factor for negative matches.

## Implementations

### `impl BoostQuery`

#### `pub fn new(positive: FtsQuery, negative: FtsQuery, negative_boost: Option<f32>) -> BoostQuery`

Creates a new `BoostQuery`.

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#432)

## Trait Implementations

### `impl Clone for BoostQuery`

- `fn clone(&self) -> BoostQuery`
- `fn clone_from(&mut self, source: &Self)`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#423)

### `impl Debug for BoostQuery`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#423)

### `impl<'de> Deserialize<'de> for BoostQuery`

- `fn deserialize<__D>(__deserializer: __D) -> Result<BoostQuery, <__D as Deserializer<'de>>::Error>` where `__D: Deserializer<'de>`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#423)

### `impl From<BoostQuery> for FtsQuery`

- `fn from(query: BoostQuery) -> FtsQuery`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#258)

### `impl FtsQueryNode for BoostQuery`

- `fn columns(&self) -> HashSet<String>`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#445)

### `impl JsonParser for BoostQuery`

- `fn from_json(value: &Value) -> Result<BoostQuery, Error>`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/parser.rs.html#76)

### `impl PartialEq for BoostQuery`

- `fn eq(&self, other: &BoostQuery) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#423)

### `impl Serialize for BoostQuery`

- `fn serialize<__S>(&self, __serializer: __S) -> Result<<__S as Serializer>::Ok, <__S as Serializer>::Error>` where `__S: Serializer`

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#423)

### `impl StructuralPartialEq for BoostQuery`

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

- `Allocation`
- `Any`
- `ArchivePointee`
- `Borrow`
- `BorrowMut`
- `CloneToUninit`
- `Conv`
- `DeserializeOwned`
- `DropFlavorWrapper`
- `DynClone`
- `ErasedDestructor`
- `FmtForward`
- `From`
- `FromRef`
- `HasTypeWitness`
- `Identity`
- `Instrument`
- `Into`
- `IntoEither`
- `IntoShared`
- `LayoutRaw`
- `MaybeSend` (two implementations)
- `Niching`
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
- `TryFrom`
- `TryInto` (two implementations)
- `VZip`
- `WithSubscriber`
