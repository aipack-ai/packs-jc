# PatchStoreParam in lancedb::utils - Rust

## Overview

This trait provides a method to patch object store parameters with a wrapper.

## Source

The trait is defined in `lancedb/src/utils/mod.rs` (lines 29-34).

## Definition

```text
pub trait PatchStoreParam {
    // Required method
    fn patch_with_store_wrapper(
        self,
        wrapper: Arc<WrappingObjectStore>,
    ) -> Result<Option<ObjectStoreParams>>;
}
```

## Required Methods

### `patch_with_store_wrapper`

```text
fn patch_with_store_wrapper(
    self,
    wrapper: Arc<WrappingObjectStore>,
) -> Result<Option<ObjectStoreParams>>
```

## Dyn Compatibility

This trait **is** dyn compatible.

## Implementations on Foreign Types

### `impl PatchStoreParam for Option<ObjectStoreParams>`

```text
impl PatchStoreParam for Option<ObjectStoreParams> {
    fn patch_with_store_wrapper(
        self,
        wrapper: Arc<WrappingObjectStore>,
    ) -> Result<Option<ObjectStoreParams>> {
        // implementation details
    }
}
```

## Implementors

No implementors are listed.
