# Reranker

**Location:** [lancedb](https://docs.rs/lancedb/0.30.0/lancedb/index.html) :: [rerankers](https://docs.rs/lancedb/0.30.0/lancedb/rerankers/index.html)

## Description

Interface for a reranker. A reranker is used to rerank the results from a vector and FTS search. This is useful for combining the results from both search methods.

## Trait Definition

```text
pub trait Reranker:
    Debug + Sync + Send {
    // Required method
    fn rerank_hybrid<'life0, 'life1, 'async_trait>(
        &'life0 self,
        query: &'life1 str,
        vector_results: RecordBatch,
        fts_results: RecordBatch,
    ) -> Pin<Box<dyn Future<Output = Result<RecordBatch>> + Send + 'async_trait>>
    where
        Self: 'async_trait,
        'life0: 'async_trait,
        'life1: 'async_trait;

    // Provided method
    fn merge_results(
        &self,
        vector_results: RecordBatch,
        fts_results: RecordBatch,
    ) -> Result<RecordBatch> { ... }
}
```

## Required Methods

- `fn rerank_hybrid<'life0, 'life1, 'async_trait>(&'life0 self, query: &'life1 str, vector_results: RecordBatch, fts_results: RecordBatch) -> Pin<Box<dyn Future<Output = Result<RecordBatch>> + Send + 'async_trait>>`  
  where `Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait`

  Rerank function receives the individual results from the vector and FTS search results. You can choose to use any of the results to generate the final results, allowing maximum flexibility.

## Provided Methods

- `fn merge_results(&self, vector_results: RecordBatch, fts_results: RecordBatch) -> Result<RecordBatch>`

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).  
*(In older versions of Rust, dyn compatibility was called "object safety".)*

## Implementors

- `impl Reranker for RRFReranker`
