# Trait AipModule

In `aiprog::registry`

```rust
pub trait AipModule: Send + Sync + 'static {
    fn register(
        &self,
        builder: AipRegistryBuilder,
    ) -> Result<AipRegistryBuilder>;
}
```

## Required Methods

- `fn register(&self, builder: AipRegistryBuilder) -> Result<AipRegistryBuilder>`

## Implementors

- `FileModule`
- `HtmlModule`
- `JsonModule`
- `WebModule`
