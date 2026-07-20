# PatchReadParam

## In lancedb::utils

[lancedb](../index.html):: [utils](index.html)

# Trait PatchReadParam

[Source](../../src/lancedb/utils/mod.rs.html#72-74)

```text
pub trait PatchReadParam {
    // Required method
    fn patch_with_store_wrapper(
        self,
        wrapper: Arc<WrappingObjectStore>,
    ) -> Result<ReadParams>;
}
```

## Required Methods

[Source](../../src/lancedb/utils/mod.rs.html#73)

- `fn patch_with_store_wrapper(self, wrapper: Arc<WrappingObjectStore>) -> Result<ReadParams>`

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

## Implementors

[Source](../../src/lancedb/utils/mod.rs.html#76-84)

### `impl PatchReadParam for ReadParams`
