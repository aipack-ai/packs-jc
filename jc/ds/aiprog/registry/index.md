# Module registry

The registry defines the Rust-to-Lua handler boundary.

Use [`AipRegistryBuilder`](struct.AipRegistryBuilder.html) to register handlers and build an immutable [`AipRegistry`](struct.AipRegistry.html). A registry can be cloned cheaply, merged with another registry, or filtered with path patterns through [`AipRegistry::select`](struct.AipRegistry.html#method.select) and [`AipRegistry::exclude`](struct.AipRegistry.html#method.exclude).

## Handler types

A handler parameter type implements [`AipParams`](trait.AipParams.html), and an output type implements [`AipOutput`](trait.AipOutput.html). These traits combine Lua conversion, JSON schema generation, thread-safety, and static lifetime requirements.

Handlers return [`HandlerResult`](type.HandlerResult.html), allowing handler-specific failures to be reported to Lua as runtime errors.

The [`AipHandler`](trait.AipHandler.html) trait is implemented by types generated through the [`aip_handler`](../attr.aip_handler.html) attribute macro. The macro captures handler metadata and schema information for documentation and registry introspection.

## Registration approaches

- Use [`AipRegistryBuilder::register_sync`](struct.AipRegistryBuilder.html#method.register_sync) for a synchronous closure.
- Use [`AipRegistryBuilder::register_async`](struct.AipRegistryBuilder.html#method.register_async) for an asynchronous closure.
- Use [`AipRegistryBuilder::register_handler`](struct.AipRegistryBuilder.html#method.register_handler) with an `#[aip_handler]` generated handler type.
- Use [`AipRegistryBuilder::add_module`](struct.AipRegistryBuilder.html#method.add_module) with an [`AipModule`](trait.AipModule.html) to compose a module of related handlers.

## Registry selection

[`RegistrySelectionOptions`](struct.RegistrySelectionOptions.html) controls unmatched-pattern behavior. With [`UnmatchedPatternPolicy::Error`](enum.UnmatchedPatternPolicy.html#variant.Error), selecting or excluding with a pattern that matches no handler returns [`RegistrySelectionError`](enum.RegistrySelectionError.html). This is useful when the configured script surface must be validated strictly.

## Re-exports

```js
pub use handler_types::*;
```

## Modules

- [`handler_types`](handler_types/index.html)
- [`registry_internal`](registry_internal/index.html)

## Structs

- [`AipHandlerMeta`](struct.AipHandlerMeta.html) - Metadata extracted from handler doc comments.
- [`AipRegisteredFn`](struct.AipRegisteredFn.html)
- [`AipRegistry`](struct.AipRegistry.html)
- [`AipRegistryBuilder`](struct.AipRegistryBuilder.html)
- [`HandlerError`](struct.HandlerError.html) - Generic handler error.
- [`KindNone`](struct.KindNone.html) - Marker type for HandlerError kind that serializes to nothing.
- [`RegistrySelectionOptions`](struct.RegistrySelectionOptions.html)

## Enums

- [`AipFnKind`](enum.AipFnKind.html)
- [`AipRegistryError`](enum.AipRegistryError.html)
- [`RegistrySelectionError`](enum.RegistrySelectionError.html)
- [`UnmatchedPatternPolicy`](enum.UnmatchedPatternPolicy.html)

## Traits

- [`AipAsyncFnWrapper`](trait.AipAsyncFnWrapper.html)
- [`AipHandler`](trait.AipHandler.html) - Trait for handlers that can be registered in the AIP registry.
- [`AipModule`](trait.AipModule.html)
- [`AipOutput`](trait.AipOutput.html) - Unified trait for handler output types.
- [`AipParams`](trait.AipParams.html) - Unified trait for handler params types.
- [`AipSyncFnWrapper`](trait.AipSyncFnWrapper.html)

## Type Aliases

- [`AipAsyncBoxFuture`](type.AipAsyncBoxFuture.html)
- [`AipRegistryResult`](type.AipRegistryResult.html)
- [`HandlerResult`](type.HandlerResult.html)
- [`RegistrySelectionResult`](type.RegistrySelectionResult.html)
