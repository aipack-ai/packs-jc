# ItemId

`ItemId` identifies an item registered in a process run.

## Definition

```rust
pub struct ItemId(/* private fields */);
```

The fields are private; use the public method below to access the item’s numeric index.

## Methods

### `index`

```rust
pub fn index(&self) -> usize
```

Returns the numeric index of this item in the process run.

## Trait Implementations

`ItemId` implements `Clone`, `Copy`, `Debug`, `Eq`, `Hash`, `Ord`, `PartialEq`, `PartialOrd`, and `StructuralPartialEq`.

The trait methods include:

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);

fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result;

fn hash<H: std::hash::Hasher>(&self, state: &mut H);

fn cmp(&self, other: &Self) -> std::cmp::Ordering;

fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;

fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering>;
fn lt(&self, other: &Self) -> bool;
fn le(&self, other: &Self) -> bool;
fn gt(&self, other: &Self) -> bool;
fn ge(&self, other: &Self) -> bool;
```

`Clone`, `Debug`, `Hash`, `Ord`, `PartialEq`, and `PartialOrd` provide the listed methods. The remaining implementations are marker traits.

## Auto Traits

`ItemId` implements the auto traits `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Crate

- Crate: `zmapr`
- Version: `0.0.2`
