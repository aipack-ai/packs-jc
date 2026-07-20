# Trait EmbeddingRegistry

[Source](https://github.com/lancedb/lancedb/blob/.../embeddings.rs#L81-L89)

A registry of embedding functions.

## Definition

```rust
pub trait EmbeddingRegistry:
    Send
    + Sync
    + Debug
{
    // Required methods
    fn functions(&self) -> HashSet<String>;
    fn register(
        &self,
        name: &str,
        function: Arc<EmbeddingFunction>,
    ) -> Result<()>;
    fn get(&self, name: &str) -> Option<Arc<EmbeddingFunction>>;
}
```

## Required Methods

### `functions`
- **Signature:** `fn functions(&self) -> HashSet<String>`
- **Description:** Return the names of all registered embedding functions.

### `register`
- **Signature:** `fn register(&self, name: &str, function: Arc<EmbeddingFunction>) -> Result<()>`
- **Description:** Register a new `EmbeddingFunction`. Returns an error if the function cannot be registered.

### `get`
- **Signature:** `fn get(&self, name: &str) -> Option<Arc<EmbeddingFunction>>`
- **Description:** Get an embedding function by name.

## Dyn Compatibility

This trait **is** dyn compatible (formerly known as "object safety").

## Implementors

- `impl EmbeddingRegistry for MemoryRegistry`
