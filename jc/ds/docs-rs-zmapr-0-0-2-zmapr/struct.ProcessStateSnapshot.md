# `ProcessStateSnapshot`

`ProcessStateSnapshot` is defined in the `zmapr` crate, version `0.0.2`.

A point-in-time copy of workflow state and retained progress history.

## Definition

```rust
pub struct ProcessStateSnapshot {
    pub stats: ProgressStats,
    pub items: Vec<ItemState>,
}
```

## Fields

- `stats: ProgressStats` — Current stage statistics.
- `items: Vec<ItemState>` — Current state of all registered items.

## Trait Implementations

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

`clone` returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result;
```

Formats the value using the given formatter.

### `Default`

```rust
fn default() -> Self;
```

Returns the default value for `ProcessStateSnapshot`.

## Auto Trait Implementations

`ProcessStateSnapshot` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The type also receives these blanket implementations:

- `Any`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `From<T>`
- `Instrument`
- `Into<U>`
- `PolicyExt`
- `ToOwned`
- `TryFrom<U>`
- `TryInto<U>`
- `WithSubscriber`
