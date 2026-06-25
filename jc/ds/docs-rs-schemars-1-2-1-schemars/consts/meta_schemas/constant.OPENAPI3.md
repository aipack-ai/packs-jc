# OPENAPI3

## schemars::consts::meta\_schemas

Constant definition:

```text
pub const OPENAPI3: &str = "https://spec.openapis.org/oas/3.0/schema/2024-10-18#/definitions/Schema";
```

The meta-schema for [OpenAPI 3.0 schemas](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.4.md#schema) (`https://spec.openapis.org/oas/3.0/schema/2024-10-18#/definitions/Schema`).

This should rarely be encountered in practice, as OpenAPI schemas are typically only embedded within OpenAPI documents, so do not have a `$schema` property set.

[Source](../../../src/schemars/consts.rs.html#24-25)
