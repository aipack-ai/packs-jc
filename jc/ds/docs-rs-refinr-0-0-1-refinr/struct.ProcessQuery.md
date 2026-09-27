# `ProcessQuery`

`ProcessQuery` provides read-only access to authoritative in-memory workflow state. Its fields are private.

```rust
pub struct ProcessQuery { /* private fields */ }
```

## Methods

### `stats`

```rust
pub fn stats(&self) -> ProgressStats
```

Returns a copy of the current workflow statistics.

### `item`

```rust
pub fn item(&self, id: ItemId) -> Option<ItemState>
```

Returns a copy of an item by its run-scoped ID.

### `item_by_path`

```rust
pub fn item_by_path(&self, relative_path: &str) -> Option<ItemState>
```

Returns a copy of an item by its stored relative path.

### `items`

```rust
pub fn items(&self) -> Vec<ItemState>
```

Returns copies of all registered items in ID order.

### `item_ids`

```rust
pub fn item_ids(&self, stage: ProcessStage, status: ItemStatus) -> Vec<ItemId>
```

Returns IDs of items with the requested stage status, in ID order.

### `snapshot`

```rust
pub fn snapshot(&self) -> ProcessStateSnapshot
```

Returns a point-in-time copy of the workflow state.

## Examples

Read workflow statistics from a query:

```rust
let query = handle.query();
let stats = query.stats();

println!(
    "Fetch: {} of {} registered items completed",
    stats.fetch.completed,
    stats.fetch.registered_items()
);
```

Look up an item while handling progress updates:

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

## Trait Implementations

- `Clone`
  - `fn clone(&self) -> Self`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

## Auto Traits

`ProcessQuery` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
