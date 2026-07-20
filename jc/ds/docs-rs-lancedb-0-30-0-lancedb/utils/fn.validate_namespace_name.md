# validate_namespace_name

## In lancedb::utils

Function `validate_namespace_name` [Source](../../src/lancedb/utils/mod.rs.html#117-132)

### Signature

```text
pub fn validate_namespace_name(name: &str) -> Result<()>
```

### Description

Validate a namespace name component.

Namespace names must:
- Not be empty
- Only contain alphanumeric characters, underscores, hyphens, and periods

### Arguments

- `name` - A single namespace component (not the full path)

### Returns

- `Ok(())` if the namespace name is valid
- `Err(Error)` if the namespace name is invalid
