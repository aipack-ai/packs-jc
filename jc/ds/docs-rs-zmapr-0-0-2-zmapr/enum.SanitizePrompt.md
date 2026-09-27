# `SanitizePrompt`

`SanitizePrompt` is an enum in the `zmapr` crate, version `0.0.2`. It supplies custom instructions for the Sanitize stage. When provided through `ProcessContentOptions::sanitize_prompt`, these instructions replace the built-in Sanitize instructions.

```rust
pub enum SanitizePrompt {
    FilePath(SPath),
    Content(String),
}
```

## Variants

- `FilePath(SPath)` — A filesystem path containing custom Sanitize instructions. The file must exist when process configuration is validated.
- `Content(String)` — Custom Sanitize instructions supplied directly as text. The content must not be empty or whitespace-only when process configuration is validated.

Invalid prompt values cause configuration validation to fail.

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

- `Clone::clone(&self) -> Self`
- `Clone::clone_from(&mut self, source: &Self) -> ()`
- `Debug::fmt(&self, f: &mut Formatter<'_>) -> Result`
