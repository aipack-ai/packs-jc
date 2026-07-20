# EmbeddingFunction in lancedb::embeddings - Rust

In [lancedb::embeddings](index.html)

## Trait EmbeddingFunction

[Source](../../src/lancedb/embeddings.rs.html#45-56)

```text
pub trait EmbeddingFunction:
    Debug + Send + Sync {
    // Required methods
    fn name(&self) -> &str;
    fn source_type(&self) -> Result<Cow<'_, DataType>>;
    fn dest_type(&self) -> Result<Cow<'_, DataType>>;
    fn compute_source_embeddings(
        &self,
        source: Arc<dyn Array>,
    ) -> Result<Arc<dyn Array>>;
    fn compute_query_embeddings(
        &self,
        input: Arc<dyn Array>,
    ) -> Result<Arc<dyn Array>>;
}
```

Expand description

Trait for embedding functions

An embedding function is a function that is applied to a column of input data to produce an “embedding” of that input. This embedding is then stored in the database alongside (or instead of) the original input. 

An “embedding” is often a lower-dimensional representation of the input data. For example, sentence-transformers can be used to embed sentences into a 768-dimensional vector space. This is useful for tasks like similarity search, where we want to find similar sentences to a query sentence. 

To use an embedding function you must first register it with the `EmbeddingsRegistry`. Then you can define it on a column in the table schema. That embedding will then be used to embed the data in that column. 

## Required Methods

[Source](../../src/lancedb/embeddings.rs.html#46)
### fn name(&self) -> &str

[Source](../../src/lancedb/embeddings.rs.html#48)
### fn source_type(&self) -> Result<Cow<'_, DataType>>

The type of the input data

[Source](../../src/lancedb/embeddings.rs.html#51)
### fn dest_type(&self) -> Result<Cow<'_, DataType>>

The type of the output data. This should **always** match the output of the `embed` function.

[Source](../../src/lancedb/embeddings.rs.html#53)
### fn compute_source_embeddings(
    &self,
    source: Arc<dyn Array>,
) -> Result<Arc<dyn Array>>

Compute the embeddings for the source column in the database

[Source](../../src/lancedb/embeddings.rs.html#55)
### fn compute_query_embeddings(
    &self,
    input: Arc<dyn Array>,
) -> Result<Arc<dyn Array>>

Compute the embeddings for a given user query

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). 

*In older versions of Rust, dyn compatibility was called "object safety".*

## Implementors

- [Source](../../src/lancedb/embeddings/bedrock.rs.html#73-110) — `impl EmbeddingFunction for BedrockEmbeddingFunction`
- [Source](../../src/lancedb/embeddings/openai.rs.html#142-181) — `impl EmbeddingFunction for OpenAIEmbeddingFunction`
- [Source](../../src/lancedb/embeddings/sentence_transformers.rs.html#405-444) — `impl EmbeddingFunction for SentenceTransformersEmbeddings`
