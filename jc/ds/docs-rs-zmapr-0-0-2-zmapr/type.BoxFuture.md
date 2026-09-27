# BoxFuture

`BoxFuture` is a sendable boxed future returned by AI completion clients.

## Type Alias

```rust
pub type BoxFuture<'a, T> = Pin<Box<dyn Future<Output = T> + Send + 'a>>;
```
