# MaprAiClient

In crate `zmapr` version `0.0.2`.

## Overview

`MaprAiClient` is a trait abstracting AI completion calls for content mapping. It is dyn compatible.

## Trait Definition

```rust
pub trait MaprAiClient: Debug + Send + Sync {
    fn complete<'a>(
        &'a self,
        prompt: &'a str,
    ) -> BoxFuture<'a, Result<MaprAiResponse>>;
}
```

## Required Methods

### `complete`

Generate a completion for `prompt`.

```rust
fn complete<'a>(
    &'a self,
    prompt: &'a str,
) -> BoxFuture<'a, Result<MaprAiResponse>>;
```

## Implementations

### `Arc<T>`

`MaprAiClient` is implemented for `Arc<T>` when `T` implements `MaprAiClient` and may be unsized.

```rust
impl<T: ?Sized + MaprAiClient> MaprAiClient for Arc<T> {
    fn complete<'a>(
        &'a self,
        prompt: &'a str,
    ) -> BoxFuture<'a, Result<MaprAiResponse>>;
}
```

### Implementors

- `GenaiAiClient`
- `StubAiClient`
