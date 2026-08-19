# init_registry

## Module [aiprog::modules](../index.html)

### Function signature

```rust
pub fn init_registry() -> Result<AipRegistry>
```

### Description

Build and return a combined `AipRegistry` containing all built-in modules (`aip.json`, `aip.web`, `aip.file`). 

The `aip.file` module uses a default `FileContext` (current directory).
