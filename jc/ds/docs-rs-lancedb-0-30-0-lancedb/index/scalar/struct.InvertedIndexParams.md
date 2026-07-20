# InvertedIndexParams in lancedb::index::scalar - Rust

- **Module:** lancedb::index::scalar
- **Struct:** `InvertedIndexParams` (private fields)
- **Description:** Tokenizer configs for inverted index.

## Implementations

### `impl InvertedIndexParams`

- `pub fn new(base_tokenizer: String, language: Language) -> InvertedIndexParams`
  - Create a new `InvertedIndexParams` with the given base tokenizer and language.
  - `base_tokenizer` can be: `"simple"`, `"whitespace"`, `"raw"`, `"ngram"`, `"lindera/*"`, `"jieba/*"`.
  - Default language: `English`.

- `pub fn lance_tokenizer(self, lance_tokenizer: String) -> InvertedIndexParams`

- `pub fn base_tokenizer(self, base_tokenizer: String) -> InvertedIndexParams`

- `pub fn language(self, language: &str) -> Result<InvertedIndexParams, Error>`

- `pub fn with_position(self, with_position: bool) -> InvertedIndexParams`
  - Set whether to store the position of the term. Default: `false`. Not for `ngram` tokenizer.

- `pub fn has_positions(&self) -> bool`
  - Get whether positions are stored.

- `pub fn max_token_length(self, max_token_length: Option<usize>) -> InvertedIndexParams`

- `pub fn lower_case(self, lower_case: bool) -> InvertedIndexParams`

- `pub fn stem(self, stem: bool) -> InvertedIndexParams`

- `pub fn remove_stop_words(self, remove_stop_words: bool) -> InvertedIndexParams`

- `pub fn custom_stop_words(self, custom_stop_words: Option<Vec<String>>) -> InvertedIndexParams`

- `pub fn ascii_folding(self, ascii_folding: bool) -> InvertedIndexParams`

- `pub fn ngram_min_length(self, min_length: u32) -> InvertedIndexParams`
  - Min N‑Gram length (only for `"ngram"`). Must be >0 and ≤ `max_length`. Default: 3.

- `pub fn ngram_max_length(self, max_length: u32) -> InvertedIndexParams`
  - Max N‑Gram length (only for `"ngram"`). Must be ≥ `min_length`. Default: 3.

- `pub fn ngram_prefix_only(self, prefix_only: bool) -> InvertedIndexParams`
  - Only prefix N‑Gram (only for `"ngram"`). Default: `false`.

- `pub fn memory_limit_mb(self, memory_limit_mb: u64) -> InvertedIndexParams`

- `pub fn num_workers(self, num_workers: usize) -> InvertedIndexParams`
  - Number of workers for build. Default: ~`num_cpus / 2`, clamped to `[1, num_cpus - 2]`.

- `pub fn to_training_json(&self) -> Result<Value, Error>`
  - Serialize params for build/training, including build‑only fields.

- `pub fn build(&self) -> Result<Box<LanceTokenizer>, Error>`

## Trait Implementations

- `Clone`: `fn clone(&self) -> InvertedIndexParams` and `fn clone_from(&mut self, source: &Self)`
- `Debug`: `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`
- `Default`: `fn default() -> InvertedIndexParams`
- `Deserialize<'de>`: `fn deserialize<__D>(__deserializer: __D) -> Result<InvertedIndexParams, __D::Error>`
- `IndexParams`: `fn as_any(&self) -> &(dyn Any + 'static)` and `fn index_name(&self) -> &str`
- `PartialEq`: `fn eq(&self, other: &InvertedIndexParams) -> bool` and `fn ne(&self, other: &Rhs) -> bool`
- `Serialize`: `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>`
- `StructuralPartialEq`: (marker trait)
- `TryFrom<&InvertedIndexDetails>`: `type Error = Error; fn try_from(details: &InvertedIndexDetails) -> Result<InvertedIndexParams, Error>`

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
- `MaybeSend` (multiple)
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
- `TryInto` (multiple)
- `VZip`
- `WithSubscriber`
