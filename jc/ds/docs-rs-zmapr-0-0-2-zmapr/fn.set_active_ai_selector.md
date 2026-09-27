# `set_active_ai_selector` in zmapr

## Function

```rust
pub fn set_active_ai_selector(selector: Option<MaprAiSelector>) -> ()
```

Sets or clears the process-wide selector used by default client selection.

- **Parameter:** `selector` — an optional `MaprAiSelector`; pass `None` to clear the selector.
- **Return type:** `()`

[Source](../src/zmapr/mapr/mapr_ai.rs.html#217-221)
