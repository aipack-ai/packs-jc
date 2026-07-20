# FtsIndexBuilder

**lancedb::index::scalar**  
*Source: [https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/tokenizer.rs.html#34](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/tokenizer.rs.html#34)*

```text
pub struct FtsIndexBuilder { /* private fields */ }
```

**Description**: Tokenizer configs for building a full‑text search (FTS) index.

---

## Implementations

### Methods

All methods are defined on `FtsIndexBuilder` (also referred to as `InvertedIndexParams`).

- **`new(base_tokenizer: String, language: Language) -> InvertedIndexParams`**  
  Create a new `InvertedIndexParams` with the given base tokenizer and language.  
  - `base_tokenizer` can be `simple`, `whitespace`, `raw`, `ngram`, `lindera/*`, `jieba/*`.  
  - `language` is used for stemming and stop words (default `English`).

- **`lance_tokenizer(self, lance_tokenizer: String) -> InvertedIndexParams`**  

- **`base_tokenizer(self, base_tokenizer: String) -> InvertedIndexParams`**  

- **`language(self, language: &str) -> Result<InvertedIndexParams, Error>`**  

- **`with_position(self, with_position: bool) -> InvertedIndexParams`**  
  Set whether to store the position of the term in the document. Default `false`. Does not work with `ngram` tokenizer.

- **`has_positions(&self) -> bool`**  
  Get whether positions are stored in this index.

- **`max_token_length(self, max_token_length: Option<usize>) -> InvertedIndexParams`**  

- **`lower_case(self, lower_case: bool) -> InvertedIndexParams`**  

- **`stem(self, stem: bool) -> InvertedIndexParams`**  

- **`remove_stop_words(self, remove_stop_words: bool) -> InvertedIndexParams`**  

- **`custom_stop_words(self, custom_stop_words: Option<Vec<String>>) -> InvertedIndexParams`**  

- **`ascii_folding(self, ascii_folding: bool) -> InvertedIndexParams`**  

- **`ngram_min_length(self, min_length: u32) -> InvertedIndexParams`**  
  Set the minimum N‑Gram length (only works with `ngram` tokenizer). Must be > 0 and ≤ `max_ngram_length`. Default 3.

- **`ngram_max_length(self, max_length: u32) -> InvertedIndexParams`**  
  Set the maximum N‑Gram length (only works with `ngram` tokenizer). Must be > 0 and ≥ `min_ngram_length`. Default 3.

- **`ngram_prefix_only(self, prefix_only: bool) -> InvertedIndexParams`**  
  Set whether only prefix N‑Gram is generated (only works with `ngram` tokenizer). Default `false`.

- **`memory_limit_mb(self, memory_limit_mb: u64) -> InvertedIndexParams`**  

- **`num_workers(self, num_workers: usize) -> InvertedIndexParams`**  
  Set the number of workers to use for this build. Default is roughly `num_cpus / 2`, clamped to `[1, num_cpus - 2]`.

- **`to_training_json(&self) -> Result<Value, Error>`**  
  Serialize params for the build/training path, including build‑only fields.

- **`build(&self) -> Result<Box<LanceTokenizer>, Error>`**  

---

## Trait Implementations

The following standard traits are implemented for `FtsIndexBuilder`:

- `Clone` – `fn clone(&self) -> InvertedIndexParams`
- `Debug` – `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`
- `Default` – `fn default() -> InvertedIndexParams`
- `Deserialize<'de>` – `fn deserialize<__D>(__deserializer: __D) -> Result<InvertedIndexParams, __D::Error>`
- `IndexParams` – provides `as_any()` and `index_name()`
- `PartialEq` – `fn eq(&self, other: &InvertedIndexParams) -> bool`
- `Serialize` – `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>`
- `StructuralPartialEq`
- `TryFrom<&InvertedIndexDetails>` – `type Error = Error`; `fn try_from(details: &InvertedIndexDetails) -> Result<InvertedIndexParams, Error>`

### Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

### Blanket Implementations

Includes common traits such as `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `Conv`, `DropFlavorWrapper`, `DynClone`, `FmtForward`, `From`, `FromRef`, `HasTypeWitness`, `Identity`, `Instrument`, `Into`, `IntoEither`, `IntoShared`, `LayoutRaw`, `Niching`, `Pipe`, `Pointable`, `Pointee`, `PolicyExt`, `ResultError`, `ResultType`, `Same`, `Tap`, `ToOwned`, `TryConv`, `TryFrom`, `TryInto`, `VZip`, `WithSubscriber`, `Allocation`, `DeserializeOwned`, `ErasedDestructor`, `MaybeSend` (multiple implementations).

---

*Full documentation of the underlying crate can be found at [lancedb docs](https://docs.rs/lancedb/0.30.0).*
