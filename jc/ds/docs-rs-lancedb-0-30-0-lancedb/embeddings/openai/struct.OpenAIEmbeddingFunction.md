# OpenAIEmbeddingFunction

**Module:** `lancedb::embeddings::openai` (version 0.30.0)

## Struct Definition

```rust
pub struct OpenAIEmbeddingFunction { /* private fields */ }
```

## Implementations

### `impl OpenAIEmbeddingFunction`

- **`pub fn new<A: Into<String>>(api_key: A) -> Self`**  
  Create a new OpenAIEmbeddingFunction.

- **`pub fn new_with_model<A: Into<String>, M: TryInto<EmbeddingModel>>(api_key: A, model: M) -> Result`**  
  where `M::Error: Into<Error>`  
  Create a new OpenAIEmbeddingFunction with a specific model.

- **`pub fn api_base<S: Into<String>>(self, api_base: S) -> Self`**  
  To use an API base URL different from default `"https://api.openai.com/v1"`.

- **`pub fn org_id<S: Into<String>>(self, org_id: S) -> Self`**  
  To use a different OpenAI organization ID other than default.

## Trait Implementations

### `impl Debug for OpenAIEmbeddingFunction`

- **`fn fmt(&self, f: &mut Formatter<'_>) -> Result`**  
  Formats the value using the given formatter.

### `impl EmbeddingFunction for OpenAIEmbeddingFunction`

- **`fn name(&self) -> &str`**  
  (no description)

- **`fn source_type(&self) -> Result<Cow<'_, DataType>>`**  
  The type of the input data.

- **`fn dest_type(&self) -> Result<Cow<'_, DataType>>`**  
  The type of the output data. This should **always** match the output of the `embed` function.

- **`fn compute_source_embeddings(&self, source: ArrayRef) -> Result<ArrayRef>`**  
  Compute the embeddings for the source column in the database.

- **`fn compute_query_embeddings(&self, input: Arc<dyn Array>) -> Result<Arc<dyn Array>>`**  
  Compute the embeddings for a given user query.

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation<T>`
- `Any`
- `ArchivePointee`
- `Borrow<T>`
- `BorrowMut<T>`
- `Conv`
- `DropFlavorWrapper<T>`
- `ErasedDestructor`
- `FmtForward`
- `From<T>`
- `HasTypeWitness<W>`
- `Identity`
- `Instrument`
- `Into<U>`
- `IntoEither`
- `IntoShared<Shared> for Unshared`
- `LayoutRaw`
- `MaybeSend`
- `Niching<NichedOption<T, N1>> for N2`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError`
- `Same`
- `Tap`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>`
- `VZip<V>`
- `WithSubscriber`

*Note: Blanket implementations are automatically provided for types satisfying their bounds. For full method signatures, see the [official Rust documentation](https://doc.rust-lang.org/nightly/).*
