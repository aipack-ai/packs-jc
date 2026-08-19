# Crate aiprog

AIProg is a Rust runtime for executing constrained Lua programs against explicitly registered, Rust-backed APIs.

The crate is designed for applications that want an AI system, or another program author, to orchestrate approved capabilities as a small Lua program instead of making individual tool calls.

## Primary entry points

- [`ScriptEngine`](struct.ScriptEngine.html) creates isolated script execution environments from an [`AipRegistry`](registry/struct.AipRegistry.html). It is the preferred API for handlers that need execution-scoped state.
- [`AipRegistryBuilder`](registry/struct.AipRegistryBuilder.html) registers synchronous and asynchronous handlers, combines modules, and builds an immutable [`AipRegistry`](registry/struct.AipRegistry.html).
- [`AipModule`](registry/trait.AipModule.html) provides composable registration for a group of handlers. Built-in modules include [`JsonModule`](modules/struct.JsonModule.html), [`WebModule`](modules/struct.WebModule.html), [`FileModule`](modules/struct.FileModule.html), and [`HtmlModule`](modules/struct.HtmlModule.html).

## Execution with context

Use [`ScriptEngine`](struct.ScriptEngine.html) when handlers need caller-provided capabilities or state. Insert values into a [`RunningContext`](struct.RunningContext.html) before execution, then recover them from the returned [`RunOutcome`](struct.RunOutcome.html). 

```rust
use aiprog::{AipRegistry, RunningContext, ScriptEngine};

let engine = ScriptEngine::builder()
    .with_registry(AipRegistry::from_empty())
    .build()?;
let outcome = engine
    .exec("return { message = 'hello' }", RunningContext::default())
    .await?;
let value = outcome.result?;
```

Handlers receive a [`HandlerCallContext`](struct.HandlerCallContext.html) and can access typed values in the current [`RunningContext`](struct.RunningContext.html). Applications commonly insert capability policies, service clients, or request-specific state into the context before starting an engine. 

## Registering handlers

A handler accepts a [`HandlerCallContext`](struct.HandlerCallContext.html), a strongly typed parameter value implementing [`AipParams`](registry/trait.AipParams.html), and returns a [`HandlerResult`](registry/type.HandlerResult.html) containing an output type implementing [`AipOutput`](registry/trait.AipOutput.html). 

Use the [`aip_handler`](attr.aip_handler.html) attribute and [`register_handler`](macro.register_handler.html) macro for generated handler metadata and registration support. For lower-level registration, use [`AipRegistryBuilder::register_sync`](registry/struct.AipRegistryBuilder.html#method.register_sync) or [`AipRegistryBuilder::register_async`](registry/struct.AipRegistryBuilder.html#method.register_async). 

## Filesystem capabilities

The built-in file module requires a [`DirContext`](modules/struct.DirContext.html) in the running context. Construct it with separate read and write [`PathPolicy`](modules/struct.PathPolicy.html) values. Each policy defines canonical allowed roots and whether absolute paths are permitted through [`AbsolutePathPolicy`](modules/enum.AbsolutePathPolicy.html). 

This explicit capability model prevents a script from obtaining filesystem access outside roots supplied by the host application.

## Error handling

Most public APIs return [`Result`](type.Result.html), whose error type is [`Error`](enum.Error.html). Script engine startup and execution preserve ownership of the caller’s context when possible through [`EngineError`](enum.EngineError.html). 

Use [`RunOutcome::into_parts`](struct.RunOutcome.html#method.into_parts) when both the script result and recovered context need to be handled together. 

## Schema inspection

[`SchemaRef`](schema_ref/struct.SchemaRef.html) and [`SchemaPropRef`](schema_ref/struct.SchemaPropRef.html) provide borrowed convenience views over `schemars` schemas. They are useful for consumers that generate documentation or UI from registered handler schemas. 

## Feature organization

- [`registry`](registry/index.html) contains handler registration, schemas, handler errors, and registry selection.
- [`schema_ref`](schema_ref/index.html) contains read-only schema inspection helpers.
- [`modules`](modules/index.html) exposes the built-in module marker types and filesystem policy types.
- [`webc`](webc/index.html) provides the underlying web client abstractions.
- [`types`](types/index.html) contains public supporting types.

The Lua runtime’s built-in functions and registered handlers are implementation details of the selected registry and modules. Rustdoc documents the Rust API used to configure and host that runtime.

## Re-exports

- `pub use modules::AbsolutePathPolicy;`
- `pub use modules::DirContext;`
- `pub use modules::DirPolicyError;`
- `pub use modules::PathPolicy;`
- `pub use modules::ResolvedDirPath;`
- `pub use mlua;`
- `pub use serde_json;`
- `pub use registry::*;`

## Modules

- [`derive`](derive/index.html): Derive macros for AIProg types.
- [`modules`](modules/index.html): Built-in module marker types and filesystem policies.
- [`registry`](registry/index.html): Handler registry, schemas, handler errors, and registry selection.
- [`schema_ref`](schema_ref/index.html): Schema reference helpers.
- [`types`](types/index.html): Public supporting types.
- [`webc`](webc/index.html): Underlying web client abstractions.

## Macros

- [`impl_lua_serde_traits`](macro.impl_lua_serde_traits.html): Generates `FromLua` and `ToLua` implementations for types implementing `serde::Serialize` and `serde::de::DeserializeOwned`.
- [`register_handler`](macro.register_handler.html): Registers a handler function into the registry.

## Structs

- [`HandlerCallContext`](struct.HandlerCallContext.html)
- [`LuaErrorDetails`](struct.LuaErrorDetails.html): Script-aware error container carried by `Error::LuaScript`.
- [`LuaExecutionLimits`](struct.LuaExecutionLimits.html)
- [`LuaRuntimePolicy`](struct.LuaRuntimePolicy.html)
- [`LuaStdLibPolicy`](struct.LuaStdLibPolicy.html)
- [`NativeFunctionSet`](struct.NativeFunctionSet.html)
- [`RunOutcome`](struct.RunOutcome.html): The result of one script execution together with its recovered context.
- [`RunningContext`](struct.RunningContext.html)
- [`RunningEngine`](struct.RunningEngine.html)
- [`ScriptEngine`](struct.ScriptEngine.html)
- [`ScriptEngineBuilder`](struct.ScriptEngineBuilder.html)

## Enums

- [`ContextAccessError`](enum.ContextAccessError.html)
- [`ContextRecoveryError`](enum.ContextRecoveryError.html)
- [`EngineError`](enum.EngineError.html)
- [`Error`](enum.Error.html)

## Traits

- [`AipFromLua`](trait.AipFromLua.html)
- [`AipIntoLua`](trait.AipIntoLua.html)
- [`LuaExt`](trait.LuaExt.html): Convenient Lua Value extension.
- [`LuaJsonExt`](trait.LuaJsonExt.html): Lua JSON conversion extension trait for Lua values.

## Type Aliases

- `pub type NativeFunctionInstaller = ...`
- `pub type Result<T, E = Error> = std::result::Result<T, E>`

## Attribute Macros

- [`aip_handler`](attr.aip_handler.html)
