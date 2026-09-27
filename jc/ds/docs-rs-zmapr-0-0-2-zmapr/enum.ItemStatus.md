# ItemStatus

`ItemStatus` is an enum in the `zmapr` crate, version `0.0.2`. It represents the lifecycle status of a processing stage for an item.

## Definition

```rust
pub enum ItemStatus {
    Pending,
    Running,
    Completed,
    Reused,
    Skipped,
    Failed,
}
```

## Variants

- `Pending` - The stage has not started.
- `Running` - The stage is currently running.
- `Completed` - The stage completed successfully.
- `Reused` - The stage output was reused rather than produced again.
- `Skipped` - The stage was skipped.
- `Failed` - The stage failed.

## Trait Implementations

`ItemStatus` implements `Clone`, `Copy`, `Debug`, `Eq`, `PartialEq`, and `StructuralPartialEq`.

The relevant `Clone`, `Debug`, and `PartialEq` method signatures are:

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

## Auto Traits

`ItemStatus` implements the auto traits `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
