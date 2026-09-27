# ProcessContentHandle

```rust
pub struct ProcessContentHandle {
    /* private fields */
}
```

Provides progress observation and final output for a running workflow.

## Methods

### `take_progress_rx`

```rust
pub fn take_progress_rx(&mut self) -> Option<ProgressRx>
```

Transfers ownership of the single progress receiver. Returns `None` if the receiver has already been taken or is unavailable.

### `query`

```rust
pub fn query(&self) -> ProcessQuery
```

Returns a read-only query handle for authoritative in-memory state.

### `wait_output`

```rust
pub async fn wait_output(self) -> Result<ProcessContentOutput>
```

Waits for the completed workflow output. Consumes the handle.

## Example

This example obtains a query handle, listens for progress updates, and then waits for the workflow output:

```rust
let mut handle = process_content(options).await?;
let query = handle.query();

if let Some(mut rx) = handle.take_progress_rx() {
    while let Ok(update) = rx.recv().await {
        if let ProgressEvent::ItemStatusChanged {
            id,
            stage,
            status: ItemStatus::Completed,
        } = update.event
            && let Some(item) = query.item(id)
        {
            let output_path = item
                .stage(stage)
                .and_then(|state| state.path.as_ref())
                .map_or("(no output path)", |path| path.as_str());

            println!("{output_path}");
        }
    }
}

let output = handle.wait_output().await?;
println!("Fetched content into {}", output.content_root);
```

## Auto Traits

`ProcessContentHandle` implements `Freeze`, `Send`, `Sync`, `Unpin`, and `UnsafeUnpin`. It does not implement `RefUnwindSafe` or `UnwindSafe`.

## Blanket Implementations

The type receives the standard blanket implementations for `Any`, `Borrow`, `BorrowMut`, `From`, `Into`, `TryFrom`, and `TryInto`. It also receives `Instrument`, `PolicyExt`, and `WithSubscriber` from dependencies.
