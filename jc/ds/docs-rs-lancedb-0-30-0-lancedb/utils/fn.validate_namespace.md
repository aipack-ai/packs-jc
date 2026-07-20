# validate_namespace

**Module:** [lancedb::utils](index.html)

**Function** `validate_namespace`

[Source](../src/lancedb/utils/mod.rs.html#145-150)

```rust
pub fn validate_namespace(namespace: &[String]) -> Result<()>
```

Validate all components of a namespace.

Iterates through all namespace components and validates each one. Returns an error if any component is invalid.

## Arguments

- `namespace` – The namespace components to validate

## Returns

- `Ok(())` if all namespace components are valid
- `Err(Error)` if any component is invalid
