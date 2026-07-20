# HasQuery in lancedb::query - Rust

## Trait Definition

The `HasQuery` trait provides a method to obtain a mutable reference to a `QueryRequest`.

```rust
pub trait HasQuery {
    // Required method
    fn mut_query(&mut self) -> &mut QueryRequest;
}
```

## Required Methods

- `fn mut_query(&mut self) -> &mut QueryRequest`

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). (In older Rust versions, “dyn compatibility” was called “object safety”.)

## Implementors

- `impl HasQuery for Query`
- `impl HasQuery for TakeQuery`
- `impl HasQuery for VectorQuery`
