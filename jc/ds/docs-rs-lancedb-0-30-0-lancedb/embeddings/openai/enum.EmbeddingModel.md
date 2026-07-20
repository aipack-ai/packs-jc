# EmbeddingModel in lancedb::embeddings::openai

In [lancedb](../../index.html)::[embeddings](../index.html)::[openai](index.html)

## Enum EmbeddingModel

Source: [src/lancedb/embeddings/openai.rs.html#22-26](https://github.com/lancedb/lancedb/blob/main/src/lancedb/embeddings/openai.rs#L22-L26)

```rust
pub enum EmbeddingModel {
    TextEmbeddingAda002,
    TextEmbedding3Small,
    TextEmbedding3Large,
}
```

## Variants

- **TextEmbeddingAda002**
- **TextEmbedding3Small**
- **TextEmbedding3Large**

## Trait Implementations

### impl Debug for EmbeddingModel

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Display for EmbeddingModel

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl FromStr for EmbeddingModel

- `type Err = Error`
- `fn from_str(s: &str) -> Result<Self, Self::Err>`

### impl TryFrom<&str> for EmbeddingModel

- `type Error = Error`
- `fn try_from(value: &str) -> Result<Self, Self::Error>`
