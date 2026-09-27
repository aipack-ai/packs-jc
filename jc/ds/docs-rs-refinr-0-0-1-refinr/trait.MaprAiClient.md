# MaprAiClient

`MaprAiClient` abstracts AI completion calls for content mapping.

## Trait Definition

```rust
pub trait MaprAiClient: Debug + Send + Sync {
    fn complete<'a>(
        &'a self,
        prompt: &'a str,
    ) -> BoxFuture<'a, Result<MaprAiResponse>>;
}
```

The trait requires implementors to be `Debug`, `Send`, and `Sync`.

## Required Methods

### `complete`

```rust
fn complete<'a>(
    &'a self,
    prompt: &'a str,
) -> BoxFuture<'a, Result<MaprAiResponse>>;
```

Generates a completion for `prompt`.

## Dyn Compatibility

`MaprAiClient` is dyn compatible.

## Implementations

### `Arc<T>`

`MaprAiClient` is implemented for `Arc<T>` where `T` implements `MaprAiClient`.

### Implementors

- `GenaiAiClient`
- `StubAiClient`
