# Trait AipSyncFnWrapper

[Source](../../src/aiprog/registry/registry_types.rs.html#12-18)

```rust
pub trait AipSyncFnWrapper: Send + Sync + 'static
where
    P: AipParams,
    R: AipOutput,
{
    // Required method
    fn call_sync(
        &self,
        call_context: HandlerCallContext,
        params: P,
    ) -> HandlerResult;
}
```

## Required Methods

- [call_sync](#tymethod.call_sync)

[Source](../../src/aiprog/registry/registry_types.rs.html#17)

### fn call_sync

```rust
fn call_sync(
    &self,
    call_context: HandlerCallContext,
    params: P,
) -> HandlerResult
```

## Implementors

[Source](../../src/aiprog/registry/registry_types.rs.html#20-29)

### impl AipSyncFnWrapper for H

```rust
impl<H, P, R> AipSyncFnWrapper for H
where
    H: Fn(HandlerCallContext, P) -> HandlerResult + Send + Sync + 'static,
    P: AipParams,
    R: AipOutput,
```
