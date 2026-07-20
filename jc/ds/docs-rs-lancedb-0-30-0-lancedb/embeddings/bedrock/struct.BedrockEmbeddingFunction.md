# BedrockEmbeddingFunction

`lancedb::embeddings::bedrock` (version 0.30.0)

## Struct Definition

```rust
pub struct BedrockEmbeddingFunction { /* private fields */ }
```

## Associated Functions

- `pub fn new(client: BedrockClient) -> Self`  
  Creates a new `BedrockEmbeddingFunction` with the given Bedrock client.

- `pub fn with_model(client: BedrockClient, model: BedrockEmbeddingModel) -> Self`  
  Creates a new `BedrockEmbeddingFunction` with a specific embedding model.

## Trait Implementations

### `Debug`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`  
  Formats the value using the given formatter.

### `EmbeddingFunction`

- `fn name(&self) -> &str`

- `fn source_type(&self) -> Result<Cow<'_, DataType>>`  
  The type of the input data.

- `fn dest_type(&self) -> Result<Cow<'_, DataType>>`  
  The type of the output data. Must match the output of `embed`.

- `fn compute_source_embeddings(&self, source: ArrayRef) -> Result<ArrayRef>`  
  Compute embeddings for the source column in the database.

- `fn compute_query_embeddings(&self, input: Arc<Array>) -> Result<Arc<Array>>`  
  Compute embeddings for a given user query.

## Auto Trait Implementations

- `Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

The following blanket implementations are automatically available for `BedrockEmbeddingFunction` (non-exhaustive list):

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
- `IntoShared<Shared>`
- `LayoutRaw`
- `MaybeSend` (two instances)
- `Niching<NichedOption<T, N1>>`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError`
- `Same`
- `Tap`
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>` (two instances)
- `VZip<V>`
- `WithSubscriber`
