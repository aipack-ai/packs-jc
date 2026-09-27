# `select_active_ai_client` in zmapr

## Function

```rust
pub fn select_active_ai_client(model: &str) -> Arc<MaprAiClient>
```

Selects a client using the active process-wide selector.

**Parameter:** `model` — the model name.

**Returns:** `Arc<MaprAiClient>` — a reference-counted handle to the selected AI client.

**Source:** `mapr/mapr_ai.rs`, lines 239–241.
