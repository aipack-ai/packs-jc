# SentenceTransformersEmbeddingsBuilder

**Module:** `lancedb::embeddings::sentence_transformers`

Compute embeddings using huggingface sentence-transformers.

## Struct Definition

```text
pub struct SentenceTransformersEmbeddingsBuilder { /* private fields */ }
```

## Implementations

### Associated Functions

#### `pub fn new() -> Self`

Creates a new `SentenceTransformersEmbeddingsBuilder`.

### Methods

#### `pub fn model<S: Into<String>>(self, name: S) -> Self`

Set the model name.

#### `pub fn device<D: Into<Device>>(self, device: D) -> Self`

Set the device (e.g., CPU, CUDA).

#### `pub fn normalize(self, normalize: bool) -> Self`

Set whether to normalize embeddings.

#### `pub fn ndims(self, n_dims: usize) -> Self`

If you know the number of dimensions of the embeddings, you can set it here. This will avoid a call to the model to determine the number of dimensions.

#### `pub fn revision<S: Into<String>>(self, revision: S) -> Self`

If you want to use a specific revision of the model, you can set it here.

#### `pub fn config_path<S: Into<String>>(self, config: S) -> Self`

Set the path to the configuration file. Defaults to `config.json`. Note: this is the path inside the huggingface repo, **NOT the path on disk**.

#### `pub fn tokenizer_path<S: Into<String>>(self, tokenizer: S) -> Self`

Set the path to the tokenizer file. Defaults to `tokenizer.json`. Note: this is the path inside the huggingface repo, **NOT the path on disk**.

#### `pub fn model_path<S: Into<String>>(self, model: S) -> Self`

Set the path inside the huggingface repo to the model file. Defaults to `model.safetensors`. Note: this is the path inside the huggingface repo, **NOT the path on disk**. Note: we currently only support a single model file.

#### `pub fn build(self) -> Result<SentenceTransformersEmbeddings>`

Build the embeddings model.

## Trait Implementations

### `impl Default for SentenceTransformersEmbeddingsBuilder`

#### `fn default() -> Self`

Returns the "default value" for a type.

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation` (where T: `RefUnwindSafe` + `Send` + `Sync`)
- `Any` (where T: `'static` + ? `Sized`)
- `ArchivePointee`
- `Borrow<T>` (where T: ? `Sized`)
- `BorrowMut<T>` (where T: ? `Sized`)
- `Conv`
- `DropFlavorWrapper<T>` (with associated type `Flavor = MayDrop`)
- `ErasedDestructor` (where T: `'static`)
- `FmtForward`
- `From<T>`
- `HasTypeWitness<W>` (where W: `MakeTypeWitness`, T: ? `Sized`)
- `Identity`
- `Instrument`
- `Into<U>` (where U: `From<T>`)
- `IntoEither`
- `IntoShared<Shared>` (where Shared: `FromUnshared`)
- `LayoutRaw`
- `MaybeSend` (where T: `Send`)
- `Niching<NichedOption<T, N1>>` (for N2)
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt` (where T: ? `Sized`)
- `Same`
- `Tap`
- `TryConv`
- `TryFrom<U>` (where U: `Into<T>`)
- `TryInto<U>` (where U: `TryFrom<T>`)
- `TryInto<U>` (async version)
- `VZip<V>`
- `WithSubscriber`
