# ProgressRx

`ProgressRx` receives progress notifications from one running workflow.

```rust
pub struct ProgressRx {
    /* private fields */
}
```

## Methods

### `recv`

```rust
pub async fn recv(&mut self) -> Result<ProgressUpdate>
```

Receives the next progress notification.

Example:

```rust
async fn print_progress(mut progress_rx: ProgressRx, query: ProcessQuery) {
    while let Ok(update) = progress_rx.recv().await {
        if let ProgressEvent::ItemStatusChanged { id, stage, status } = update.event
            && let Some(item) = query.item(id)
        {
            match status {
                ItemStatus::Completed | ItemStatus::Reused | ItemStatus::Skipped => {
                    println!("{stage:?} - {}", item.source);
                }
                ItemStatus::Failed => {
                    let message = item
                        .stage(stage)
                        .and_then(|state| state.error.as_deref())
                        .unwrap_or("unknown");
                    println!(" - (FAIL) {} (cause: {message})", item.source);
                }
                _ => {}
            }
        }
    }
}
```

The receiver can also be taken from a workflow handle and used to report completed output paths:

```rust
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
```

### `is_disconnected`

```rust
pub fn is_disconnected(&self) -> bool
```

Returns whether the progress channel has been disconnected.
