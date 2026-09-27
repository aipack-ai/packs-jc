# GenaiAiClient

`GenaiAiClient` is a real genai-backed AI client.

```rust
pub struct GenaiAiClient {
    /* private fields */
}
```

## Associated Functions

### `new`

Create a provider-backed client for `model`.

```rust
pub fn new(model: impl Into<String>) -> Self
```

### `with_client`

Use an already configured genai client.

```rust
pub fn with_client(self, client: genai::Client) -> Self
```

### `model`

Return the model name used for completion requests.

```rust
pub fn model(&self) -> &str
```

## Trait Implementations

### `MaprAiClient`

Generate a completion for `prompt`.

```rust
fn complete<'a>(
    &'a self,
    prompt: &'a str,
) -> BoxFuture<'a, Result<MaprAiResponse>>
```

### `Clone`

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result
```

## Auto Traits

`GenaiAiClient` implements the following auto traits:

- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

It does not implement:

- `RefUnwindSafe`
- `UnwindSafe`
