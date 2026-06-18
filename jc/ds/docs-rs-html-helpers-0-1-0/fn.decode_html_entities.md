# `decode_html_entities` in `html_helpers` 0.1.0

- **Module:** [html_helpers](../html_helpers/index.html)
- **Source:** [slimmer.rs](../src/html_helpers/slimmer.rs.html#32-34)

## Function Signature

```rust
pub fn decode_html_entities(content: &str) -> String
```

## Description

Decodes HTML entities (e.g., `<` becomes `<`). Re-exporting from the original slimmer or using html-escape directly.
