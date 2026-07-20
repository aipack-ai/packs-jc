# IntoPolars in lancedb::arrow - Rust

## Definition

```rust
pub trait IntoPolars {
    fn into_polars(self) -> impl Future<Result<DataFrame>> + Send;
}
```

## Description

A trait for converting the result of a LanceDB query into a Polars DataFrame with aligned chunks. The resulting Polars DataFrame will have aligned chunks, but the series’s chunks are not guaranteed to be contiguous.

## Required Methods

- `into_polars` – see signature above.

## Dyn Compatibility

This trait is **not** dyn compatible.

## Implementors

- `impl IntoPolars for SendableRecordBatchStream`  
  Available on **crate feature `polars`** only.
