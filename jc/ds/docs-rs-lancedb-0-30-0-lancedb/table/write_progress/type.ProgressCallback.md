# ProgressCallback in lancedb::table::write_progress - Rust

## Type Alias: `ProgressCallback`

**Source:** [`lancedb::table::write_progress`](index.html) (line 75)

```rust
pub type ProgressCallback = Arc<Mutex<dyn FnMut(&WriteProgress) + Send>>;
```

**Expand description:**

Callback type for progress updates.

Callbacks are serialized by the tracker and are never invoked reentrantly, so `FnMut` is safe to use here.

## Aliased Type

```rust
pub struct ProgressCallback { /* private fields */ }
```
