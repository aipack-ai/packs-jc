# Trait AipAsyncFnWrapper

[Source](../../src/aiprog/registry/registry_types.rs.html#31-37)

```rust
pub trait AipAsyncFnWrapper: Send + Sync + 'static
where
    P: AipParams,
    R: AipOutput,
{
    // Required method
    fn call_async(
        &self,
        call_context: HandlerCallContext,
        params: P,
    ) -> AipAsyncBoxFuture;
}
```

## Required Methods

[Source](../../src/aiprog/registry/registry_types.rs.html#36)

#### fn [call_async](#tymethod.call_async)(&self, call_context: [HandlerCallContext](../struct.HandlerCallContext.html "struct aiprog::HandlerCallContext"), params: P) -> [AipAsyncBoxFuture](type.AipAsyncBoxFuture.html "type aiprog::registry::AipAsyncBoxFuture")

## Implementors

[Source](../../src/aiprog/registry/registry_types.rs.html#39-49)

### impl [AipAsyncFnWrapper](trait.AipAsyncFnWrapper.html "trait aiprog::registry::AipAsyncFnWrapper") for H

```rust
impl<H, P, R, Fut> AipAsyncFnWrapper for H
where
    H: Fn(HandlerCallContext, P) -> Fut + Send + Sync + 'static,
    Fut: Future + Send + 'static,
    P: AipParams,
    R: AipOutput,
```
