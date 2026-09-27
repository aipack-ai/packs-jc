# `BoxFuture` in refinr

**Crate:** `refinr` 0.0.1  
**Kind:** Type alias

## Type Alias

```rust
pub type BoxFuture<'a, T> =
    Pin<Box<dyn Future<Output = T> + Send + 'a>>;
```

A sendable, boxed future returned by AI completion clients.

## Source

[View source](../src/refinr/mapr/mapr_ai.rs.html#11)
