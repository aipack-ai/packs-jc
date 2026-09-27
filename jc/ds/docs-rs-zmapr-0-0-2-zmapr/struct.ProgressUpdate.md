# ProgressUpdate in zmapr - Rust

## Struct: `ProgressUpdate`

A progress event and its associated workflow statistics snapshot.

```rust
pub struct ProgressUpdate {
    pub seq: u64,
    pub event: ProgressEvent,
    pub stats: ProgressStats,
}
```

## Fields

- `seq: u64` — Sequence number assigned to this update.
- `event: ProgressEvent` — Event represented by this update.
- `stats: ProgressStats` — Workflow statistics snapshot associated with this update.

## Trait Implementations

### `Clone`

- `fn clone(&self) -> Self` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### `Debug`

- `fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result` — Formats the value using the given formatter.

## Auto Traits

`ProgressUpdate` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
