# `parse_file_info`

In crate `zmapr` version `0.0.2`.

## Function

```rust
pub fn parse_file_info(response: &str) -> Result<FileMapEntry>
```

Parses the first code block into a content-map entry.

Accepts JSON wrapped in Markdown fences and list fields as either arrays or comma-separated strings. Parsed topics are limited to seven entries of at most three words each.

[Source](../src/zmapr/mapr/mapr_prompt.rs.html#89-140)

## Errors

Returns an error if the response is missing a required tag or contains malformed JSON.
