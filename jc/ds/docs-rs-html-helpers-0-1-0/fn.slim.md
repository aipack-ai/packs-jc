# slim

Function in `html_helpers` crate.

## Signature

```rust
pub fn slim(html_content: &[str]) -> Result<String>
```

[Source](../src/html_helpers/slimmer.rs.html#61-72)

## Description

Strips non-content elements from the provided HTML content using the `scraper` crate, preserving essential head tags, and returns the cleaned HTML as a string.

This function aims to replicate the behavior of `slimmer::slim` using `scraper`. It removes:

- Non-visible tags like `<script>`, `<style>`, etc.

## Arguments

- `html_content`: &[str] — The HTML content to clean.

## Returns

- `Result<String>` — The cleaned HTML as a string, or an error.
