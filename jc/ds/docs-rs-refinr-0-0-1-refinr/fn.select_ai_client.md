# `select_ai_client`

Function in `refinr` 0.0.1.

## Signature

```rust
pub fn select_ai_client(
    selector: Option<&MaprAiSelector>,
    model: &str,
) -> Arc<MaprAiClient>
```

## Description

Selects a client using `selector`, or uses the active process-wide selector when `selector` is `None`.

[View source](../src/refinr/mapr/mapr_ai.rs.html#229-236)
