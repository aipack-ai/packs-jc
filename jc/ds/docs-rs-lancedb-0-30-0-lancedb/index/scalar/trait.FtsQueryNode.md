# FtsQueryNode

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#100)

```rust
pub trait FtsQueryNode {
    // Required method
    fn columns(&self) -> HashSet<String>;
}
```

## Required Methods

[Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#101)

- `fn columns(&self) -> HashSet<String>`

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). (In older versions of Rust, dyn compatibility was called "object safety".)

## Implementors

- [Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#139) – `impl FtsQueryNode for FtsQuery`
- [Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#703) – `impl FtsQueryNode for BooleanQuery`
- [Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#445) – `impl FtsQueryNode for BoostQuery`
- [Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#373) – `impl FtsQueryNode for MatchQuery`
- [Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#544) – `impl FtsQueryNode for MultiMatchQuery`
- [Source](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#413) – `impl FtsQueryNode for PhraseQuery`
