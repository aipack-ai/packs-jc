# ItemId

`ItemId` is a type in the `refinr` crate, version `0.0.1`.

## Description

Identifies an item registered in a process run.

## Definition

```rust
pub struct ItemId(/* private fields */);
```

## Methods

### `index`

```rust
pub fn index(&self) -> usize
```

Returns the numeric index of this item in the process run.

## Trait Implementations

`ItemId` implements the following traits:

- `Clone`
- `Copy`
- `Debug`
- `Eq`
- `Hash`
- `Ord`
- `PartialEq`
- `PartialOrd`
- `StructuralPartialEq`

### `Clone`

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### `Hash`

```rust
fn hash<__H: Hasher>(&self, state: &mut __H)
fn hash_slice<H: Hasher>(data: &[Self], state: &mut H)
```

`hash` feeds this value into the given hasher. `hash_slice` feeds a slice of values into the given hasher.

### `Ord`

```rust
fn cmp(&self, other: &Self) -> Ordering
fn max(self, other: Self) -> Self
fn min(self, other: Self) -> Self
fn clamp(self, min: Self, max: Self) -> Self
```

`cmp` returns the ordering between `self` and `other`. The other methods compare values or restrict a value to an interval.

### `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool
fn ne(&self, other: &Self) -> bool
```

These methods implement the equality (`==`) and inequality (`!=`) comparisons.

### `PartialOrd`

```rust
fn partial_cmp(&self, other: &Self) -> Option<Ordering>
fn lt(&self, other: &Self) -> bool
fn le(&self, other: &Self) -> bool
fn gt(&self, other: &Self) -> bool
fn ge(&self, other: &Self) -> bool
```

These methods provide partial ordering comparisons.

## Auto Traits

`ItemId` implements these auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The documentation also lists these blanket implementations:

- `Any`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `Comparable<K>`
- `Equivalent<K>` (from `hashbrown`)
- `Equivalent<K>` (from `equivalent`)
- `From<T>`
- `Instrument`
- `Into<U>`
- `PolicyExt`
- `ToOwned`
- `TryFrom<U>`
- `TryInto<U>`
- `WithSubscriber`
