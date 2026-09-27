# MaprAiSelector

`MaprAiSelector` selects which AI client implementation to instantiate.

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

```rust
pub fn create_client(&self, model: &str) -> Arc<MaprAiClient>
```

Creates a client from this selector, using `model` for the real client.

## Trait Implementations

- `Clone` — Provides `clone(&self) -> Self` and `clone_from(&mut self, source: &Self)`.
- `Debug` — Provides `fmt(&self, f: &mut Formatter<'_>) -> Result`.
- `Default` — Provides `default() -> Self`.

## Auto Traits

`MaprAiSelector` implements `Freeze`, `Send`, `Sync`, `Unpin`, and `UnsafeUnpin`. It does not implement `RefUnwindSafe` or `UnwindSafe`.
