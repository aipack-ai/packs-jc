# ProgressUpdate

`refinr` 0.0.1

A progress event and its associated workflow statistics snapshot.

- Source: [`progress.rs`](../src/refinr/process/progress.rs.html#90-99)

## Definition

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

`ProgressUpdate` implements `Clone`.

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### `Debug`

`ProgressUpdate` implements `Debug`.

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result;
```

## Auto Traits

`ProgressUpdate` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

The standard and dependency-provided blanket implementations include `Any`, `Borrow<T>`, `BorrowMut<T>`, `CloneToUninit`, `From<T>`, `Instrument`, `Into<U>`, `PolicyExt`, `ToOwned`, `TryFrom<U>`, `TryInto<U>`, and `WithSubscriber`.
