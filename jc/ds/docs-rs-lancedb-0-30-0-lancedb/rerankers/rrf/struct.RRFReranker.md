# RRFReranker

Reranks the results using Reciprocal Rank Fusion (RRF) algorithm based on the scores of vector and FTS search.

## Struct Definition

```rust
pub struct RRFReranker { /* private fields */ }
```

## Implementations

### `impl RRFReranker`

#### `pub fn new(k: f32) -> Self`

Create a new RRFReranker. The parameter `k` is a constant used in the RRF formula (default is 60). See paper: <https://plg.uwaterloo.ca/~gvcormac/cormacksigir09-rrf.pdf>

## Trait Implementations

### `impl Debug for RRFReranker`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Default for RRFReranker`

```rust
fn default() -> Self
```

### `impl Reranker for RRFReranker`

#### `fn rerank_hybrid<'life0, 'life1, 'async_trait>`

```rust
fn rerank_hybrid<'life0, 'life1, 'async_trait>(
    &'life0 self,
    _query: &'life1 str,
    vector_results: RecordBatch,
    fts_results: RecordBatch,
) -> Pin<Box<dyn Future<Output = Result<RecordBatch>> + Send + 'async_trait>>
where
    Self: 'async_trait,
    'life0: 'async_trait,
    'life1: 'async_trait,
```

Rerank function receives the individual results from the vector and FTS search results. You can choose to use any of the results to generate the final results, allowing maximum flexibility.

#### `fn merge_results`

```rust
fn merge_results(
    &self,
    vector_results: RecordBatch,
    fts_results: RecordBatch,
) -> Result<RecordBatch>
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

(Blanket implementations are omitted as they are not specific to this type.)
