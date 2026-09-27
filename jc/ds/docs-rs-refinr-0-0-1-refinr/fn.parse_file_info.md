# `parse_file_info`

In crate `refinr` 0.0.1.

## Function

```rust
pub fn parse_file_info(response: &str) -> Result<FileMapEntry>
```

Parses the first fenced JSON block into a content-map entry.

Accepts JSON wrapped in Markdown fences and list fields as either arrays or comma-separated strings. Parsed topics are limited to seven entries of at most three words each.

### Errors

Returns an error if the response is missing a required tag or contains malformed JSON.
