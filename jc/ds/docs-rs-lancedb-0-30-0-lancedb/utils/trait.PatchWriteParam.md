# PatchWriteParam in lancedb::utils - Rust

**Module:** [lancedb::utils](index.html)  
**Source:** [src/lancedb/utils/mod.rs.html#54-57](../../src/lancedb/utils/mod.rs.html#54-57)

```text
pub trait PatchWriteParam {
    // Required method
    fn patch_with_store_wrapper(
        self,
        wrapper: Arc<WrappingObjectStore>,
    ) -> Result<WriteParams>;
}
```

## Required Methods

### `fn patch_with_store_wrapper(self, wrapper: Arc<WrappingObjectStore>) -> Result<WriteParams>`

**Source:** [src/lancedb/utils/mod.rs.html#55-56](../../src/lancedb/utils/mod.rs.html#55-56)

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

## Implementations on Foreign Types

### impl PatchWriteParam for WriteParams

**Source:** [src/lancedb/utils/mod.rs.html#59-67](../../src/lancedb/utils/mod.rs.html#59-67)

#### `fn patch_with_store_wrapper(self, wrapper: Arc<WrappingObjectStore>) -> Result<WriteParams>`

**Source:** [src/lancedb/utils/mod.rs.html#60-66](../../src/lancedb/utils/mod.rs.html#60-66)

## Implementors

(No implementors listed.)
