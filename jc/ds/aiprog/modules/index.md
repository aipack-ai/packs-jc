# Module aiprog::modules

[Source](../../src/aiprog/modules/mod.rs.html#1-163)

## Structs

- [DirContext](struct.DirContext.html) - Execution-scoped filesystem capability policy.
- [FileModule](struct.FileModule.html)
- [HtmlModule](struct.HtmlModule.html)
- [JsonModule](struct.JsonModule.html)
- [PathPolicy](struct.PathPolicy.html) - A set of canonical directory roots allowed for one class of operations.
- [ResolvedDirPath](struct.ResolvedDirPath.html) - A policy-authorized path and the allowed root that contains it.
- [WebModule](struct.WebModule.html)

## Enums

- [AbsolutePathPolicy](enum.AbsolutePathPolicy.html) - Controls whether callers may supply absolute paths.
- [DirPolicyError](enum.DirPolicyError.html)

## Functions

- [init_registry](fn.init_registry.html) - Build and return a combined `AipRegistry` containing all built-in modules (`aip.json`, `aip.web`, `aip.file`).
- [native_functions](fn.native_functions.html)
