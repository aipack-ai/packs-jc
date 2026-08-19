# Trait Handler

```rust
pub trait Handler: Clone
where
    P: Send + Sync + 'static,
    R: AipIntoLua + Send + Sync + 'static,
{
    type Future: Future<Output = HandlerResult> + 'static;

    // Required method
    fn call(
        self,
        lua: Lua,
        call_context: HandlerCallContext,
        params: P,
    ) -> Self::Future;
}
```

## Description

The generic, Lua-agnostic handler trait, modeled on `rpc-router::Handler`.

Key points:

- A handler is a plain Rust function or closure taking a single typed `P` (params) argument and returning a typed `Result`.
- The trait operates on `mlua::Value` at its public boundary. Typed conversion happens inside the handler implementation (params satisfy `AipParams`, response satisfy `AipResponse`, error via `IntoHandlerError`).
- Both sync and async handler kinds are supported through the `impl_handler!` macro implementations.
- The handler layer now depends on `mlua` for the Lua value types.

Type parameters:

- `P` is the typed params (satisfies `AipParams`).
- `R` is the typed response (satisfies `AipResponse`).
- `M` is a marker type used to distinguish the sync and async implementations during type resolution.

## Required Associated Types

- `type Future: Future<Output = HandlerResult> + 'static`

The future type returned by calling this handler.

## Required Methods

- `fn call(self, lua: Lua, call_context: HandlerCallContext, params: P) -> Self::Future`

Call the handler with a Lua state and a pre-converted params value, and return a future resolving to a Lua value response or a normalized error.

## Dyn Compatibility

This trait is **not** [dyn compatible](https://doc.rust-lang.org/1.97.1/reference/items/traits.html#dyn-compatibility).

*In older versions of Rust, dyn compatibility was called "object safety", so this trait is not object safe.*

## Implementors

- None listed.
