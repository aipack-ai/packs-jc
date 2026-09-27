# `ProcessContentHandle`

`ProcessContentHandle` provides progress observation and access to the final output of a running workflow.

## Struct definition

```rust
pub struct ProcessContentHandle {
    /* private fields */
}
```

## Methods

### `take_progress_rx`

```rust
pub fn take_progress_rx(&mut self) -> Option<ProgressRx>
```

Transfers ownership of the single progress receiver. Returns `None` if the receiver is unavailable or has already been taken.

```rust
if let Some(mut progress_rx) = handle.take_progress_rx() {
    while let Ok(update) = progress_rx.recv().await {
        // Handle the progress update.
    }
}
```

### `query`

```rust
pub fn query(&self) -> ProcessQuery
```

Returns a read-only query handle for authoritative in-memory state.

```rust
let query = handle.query();
let stats = query.stats();
```

### `wait_output`

```rust
pub async fn wait_output(self) -> Result<ProcessContentOutput>
```

Waits for the workflow to complete and returns its output. This method consumes the handle.

```rust
let output = handle.wait_output().await?;
println!("Fetched content into {}", output.content_root);
```

## Auto trait implementations

- `!RefUnwindSafe`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket implementations

The type also has blanket implementations for `Any`, `Borrow`, `BorrowMut`, `From`, `Instrument`, `Into`, `PolicyExt`, `TryFrom`, `TryInto`, and `WithSubscriber`.
