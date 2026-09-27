# `StageStatus`

`StageStatus` represents the processing state of a workflow stage.

```rust
pub enum StageStatus {
    NotSelected,
    Pending,
    Running,
    Completed,
    Failed,
}
```

## Variants

- `NotSelected` — The stage is not selected for this workflow.
- `Pending` — The selected stage has not started.
- `Running` — The stage is currently processing items.
- `Completed` — The stage finished processing.
- `Failed` — The stage failed.

## Trait implementations

`StageStatus` implements `Clone`, `Copy`, `Debug`, `Default`, `Eq`, `PartialEq`, and `StructuralPartialEq`.

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

Returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result;
```

Formats the value using the given formatter.

### `Default`

```rust
fn default() -> Self;
```

Returns the default value. The documentation does not specify which variant is the default.

### `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

Tests equality (`==`) and inequality (`!=`).

## Auto traits

`StageStatus` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Source

Defined in `zmapr::process::stats`.
