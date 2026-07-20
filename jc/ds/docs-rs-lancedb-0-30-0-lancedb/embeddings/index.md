# Module embeddings

[Source](../../src/lancedb/embeddings.rs.html#4-394)

## Modules

- [bedrock](bedrock/index.html)
- [openai](openai/index.html)
- [sentence\_transformers](sentence_transformers/index.html)

## Structs

- [EmbeddingDefinition](struct.EmbeddingDefinition.html) - Defines an embedding from input data into a lower-dimensional space
- [MemoryRegistry](struct.MemoryRegistry.html) - A [`EmbeddingRegistry`](trait.EmbeddingRegistry.html) that uses in-memory [`HashMap`](https://doc.rust-lang.org/nightly/std/collections/hash/map/struct.HashMap.html)s
- [WithEmbeddings](struct.WithEmbeddings.html) - A record batch reader that has embeddings applied to it

## Enums

- [MaybeEmbedded](enum.MaybeEmbedded.html) - A record batch that might have embeddings applied to it.

## Traits

- [EmbeddingFunction](trait.EmbeddingFunction.html) - Trait for embedding functions
- [EmbeddingRegistry](trait.EmbeddingRegistry.html) - A registry of embedding

## Functions

- [compute\_embeddings\_for\_batch](fn.compute_embeddings_for_batch.html) - Compute embeddings for a batch and append as new columns.
- [compute\_output\_schema](fn.compute_output_schema.html) - Compute the output schema when embeddings are applied to a base schema.
