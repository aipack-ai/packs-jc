# `render_file_prompt`

## Function

```rust
pub fn render_file_prompt(
    file_path: &str,
    file_content: &str,
) -> zmapr::Result<String>
```

Renders the content-map prompt for a source file by replacing the `{{file_path}}` and `{{file_content}}` placeholders in the embedded template.

## Errors

Returns an error if the prompt template replacement engine could not be initialized.
