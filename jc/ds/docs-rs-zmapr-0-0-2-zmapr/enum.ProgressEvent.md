# ProgressEvent

**Crate:** `zmapr` 0.0.2  
**Source:** [`process/progress.rs`](../src/zmapr/process/progress.rs.html#17-86)

A notification describing a workflow or stage progress event.

## Definition

```rust
pub enum ProgressEvent {
    StageStarted {
        stage: ProcessStage,
    },
    StageCompleted {
        stage: ProcessStage,
    },
    StageFailed {
        stage: ProcessStage,
        message: String,
    },
    ItemsRegistered {
        stage: ProcessStage,
        count: usize,
    },
    ItemsExcluded {
        stage: ProcessStage,
        count: usize,
    },
    StageTotalKnown {
        stage: ProcessStage,
        total_items: usize,
    },
    ItemStatusChanged {
        id: ItemId,
        stage: ProcessStage,
        status: ItemStatus,
    },
    WorkflowCompleted,
    WorkflowFailed {
        message: String,
    },
}
```

## Variants

- `StageStarted { stage: ProcessStage }` — A selected stage has started.
- `StageCompleted { stage: ProcessStage }` — A stage has completed.
- `StageFailed { stage: ProcessStage, message: String }` — A stage has failed. `message` contains the failure message.
- `ItemsRegistered { stage: ProcessStage, count: usize }` — Items have been registered for a stage. `count` is the number of registered items.
- `ItemsExcluded { stage: ProcessStage, count: usize }` — Items have been excluded from a stage. `count` is the number of excluded items.
- `StageTotalKnown { stage: ProcessStage, total_items: usize }` — The total item count for a stage is known. `total_items` is the total number of items in the stage.
- `ItemStatusChanged { id: ItemId, stage: ProcessStage, status: ItemStatus }` — An item’s status changed in a stage. The fields identify the item, stage, and its new status.
- `WorkflowCompleted` — The workflow completed successfully.
- `WorkflowFailed { message: String }` — The workflow failed. `message` contains the failure message.

## Types

- [`ProcessStage`](enum.ProcessStage.html) — The workflow stage associated with an event.
- [`ItemId`](struct.ItemId.html) — The identifier of an item whose status changed.
- [`ItemStatus`](enum.ItemStatus.html) — The item’s status after the change.
- `String` — A failure message.
- `usize` — An item count or stage total.

## Trait Implementations

`ProgressEvent` implements `Clone` and `Debug`.

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

`clone` returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

Formats the value using the given formatter.

## Auto Traits

`ProgressEvent` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
