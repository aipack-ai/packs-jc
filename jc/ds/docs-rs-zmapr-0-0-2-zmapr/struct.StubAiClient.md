# StubAiClient

`StubAiClient` is a deterministic stub AI client for offline testing, provided by `zmapr` 0.0.2.

## Definition

```rust
pub struct StubAiClient {
    /* private fields */
}
```

## Constructors and methods

### `from_response`

```rust
pub fn from_response(response: impl Into<String>) -> Self
```

Create a stub that always returns `response`.

### `with_response`

```rust
pub fn with_response(self, response: impl Into<String>) -> Self
```

Configure the response returned by this stub.

### `with_usage`

```rust
pub fn with_usage(self, usage: genai::chat::usage::Usage) -> Self
```

Configure the usage associated with this stub's response.

## Trait implementations

### `MaprAiClient`

```rust
fn complete<'a>(
    &'a self,
    prompt: &'a str,
) -> BoxFuture<'a, Result<MaprAiResponse>>
```

Generate a completion for `prompt`.

### `Clone`

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result
```

### `Default`

```rust
fn default() -> Self
```

## Auto traits

`StubAiClient` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
