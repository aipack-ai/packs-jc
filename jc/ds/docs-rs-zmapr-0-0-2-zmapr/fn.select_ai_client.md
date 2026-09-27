# `select_ai_client`

## Function

```rust
pub fn select_ai_client(
    selector: Option<&MaprAiSelector>,
    model: &str,
) -> Arc<MaprAiClient>
```

Selects a client using `selector`, or the active process-wide selector when `selector` is absent.

[View source](../src/zmapr/mapr/mapr_ai.rs.html#229-236)
