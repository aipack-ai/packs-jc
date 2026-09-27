# GenaiAiClient

`GenaiAiClient` is a real genai-backed AI client.

```rust
pub struct GenaiAiClient {
    /* private fields */
}
```

## Constructors and methods

### `new`

```rust
pub fn new(model: impl Into<String>) -> Self
```

Creates a provider-backed client for `model`.

### `with_client`

```rust
pub fn with_client(self, client: genai::Client) -> Self
```

Uses an already configured genai client.

### `model`

```rust
pub fn model(&self) -> &str
```

Returns the model name used for completion requests.

## Trait implementations

### `Clone`

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result
```

### `MaprAiClient`

```rust
fn complete<'a>(
    &'a self,
    prompt: &'a str,
) -> BoxFuture<'a, Result<MaprAiResponse>>
```

Generates a completion for `prompt`.

## Auto traits

`GenaiAiClient` implements `Freeze`, `Send`, `Sync`, `Unpin`, and `UnsafeUnpin`. It does not implement `RefUnwindSafe` or `UnwindSafe`.
