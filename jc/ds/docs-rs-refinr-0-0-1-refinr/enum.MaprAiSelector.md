# MaprAiSelector

`MaprAiSelector` selects which AI client implementation to create.

## Definition

```rust
pub enum MaprAiSelector {
    Real,
    Stub,
    Custom(Arc<MaprAiClient>),
}
```

## Variants

- `Real` — Use the genai-backed provider client.
- `Stub` — Use the deterministic local client.
- `Custom(Arc<MaprAiClient>)` — Use the supplied client implementation.

## Methods

### `create_client`

```rust
pub fn create_client(&self, model: &str) -> Arc<MaprAiClient>
```

Creates a client from this selector, using `model` for the real client.

## Trait implementations

- `Clone`
  - `fn clone(&self) -> Self`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
- `Default`
  - `fn default() -> Self`

## Auto traits

- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!RefUnwindSafe`
- `!UnwindSafe`
