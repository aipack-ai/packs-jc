# `SanitizePrompt`

`SanitizePrompt` supplies custom instructions for the Sanitize stage. Choose either a file-backed prompt or inline text. When provided through `ProcessContentOptions::sanitize_prompt`, these instructions replace the built-in Sanitize instructions.

## Enum definition

```rust
pub enum SanitizePrompt {
    FilePath(SPath),
    Content(String),
}
```

- `FilePath(SPath)` identifies a file containing custom Sanitize instructions.
- `Content(String)` stores custom Sanitize instructions directly as text.

## Validation

During process configuration validation:

- Inline content must not be empty or whitespace-only.
- A file-backed prompt must point to an existing file.
- Invalid prompt values cause configuration validation to fail.

## Associated functions

### `file`

```rust
pub fn file(path: impl Into<SPath>) -> Self
```

Creates a file-backed prompt.

### `content`

```rust
pub fn content(content: impl Into<String>) -> Self
```

Creates an inline prompt from `content`.

## Trait implementations

`SanitizePrompt` implements `Clone` and `Debug`.

```rust
impl Clone for SanitizePrompt {
    fn clone(&self) -> Self;
    fn clone_from(&mut self, source: &Self);
}

impl Debug for SanitizePrompt {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```
