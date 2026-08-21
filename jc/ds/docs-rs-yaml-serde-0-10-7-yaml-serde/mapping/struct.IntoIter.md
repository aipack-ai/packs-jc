# `IntoIter` in `yaml_serde::mapping`

## `yaml_serde` 0.10.7

# Struct `IntoIter`

```rust
pub struct IntoIter {
    /* private fields */
}
```

Iterator over [`yaml_serde::Mapping`](https://docs.rs/yaml_serde/0.10.7/yaml_serde/struct.Mapping.html) by value.

## Trait Implementations

### `ExactSizeIterator`

```rust
impl ExactSizeIterator for IntoIter
```

#### `len`

```rust
fn len(&self) -> usize
```

Returns the exact remaining length of the iterator.

#### `is_empty`

```rust
fn is_empty(&self) -> bool
```

This is a nightly-only experimental API: `exact_size_is_empty`.

Returns `true` if the iterator is empty.

### `Iterator`

```rust
impl Iterator for IntoIter {
    type Item = (Value, Value);
}
```

#### Associated Types

##### `Item`

```rust
type Item = (Value, Value);
```

The type of the elements being iterated over.

#### `next`

```rust
fn next(&mut self) -> Option<Self::Item>
```

Advances the iterator and returns the next value.

#### `size_hint`

```rust
fn size_hint(&self) -> (usize, Option<usize>)
```

Returns the bounds on the remaining length of the iterator.

## Auto Trait Implementations

`IntoIter` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The following blanket implementations apply to `IntoIter` through its implemented traits:

- `Any`
  - `fn type_id(&self) -> TypeId`
- `Borrow<T>`
  - `fn borrow(&self) -> &T`
- `BorrowMut<T>`
  - `fn borrow_mut(&mut self) -> &mut T`
- `From<T>`
  - `fn from(t: T) -> T`
- `Into<U>`
  - `fn into(self) -> U`
- `IntoIterator`
  - Associated type `Item`
  - Associated type `IntoIter`
  - `fn into_iter(self) -> Self::IntoIter`
- `TryFrom<U>`
  - Associated type `Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `TryInto<U>`
  - Associated type `Error`
  - `fn try_into(self) -> Result<U, Self::Error>`

## Inherited `Iterator` Methods

Because `IntoIter` implements `Iterator`, it also provides the standard iterator adapters and consumers, including:

- `next_chunk`
- `count`
- `last`
- `advance_by`
- `nth`
- `step_by`
- `chain`
- `zip`
- `intersperse`
- `intersperse_with`
- `map`
- `for_each`
- `filter`
- `filter_map`
- `enumerate`
- `peekable`
- `skip_while`
- `take_while`
- `map_while`
- `skip`
- `take`
- `scan`
- `flat_map`
- `flatten`
- `map_windows`
- `fuse`
- `inspect`
- `by_ref`
- `collect`
- `try_collect`
- `collect_into`
- `partition`
- `is_partitioned`
- `try_fold`
- `try_for_each`
- `fold`
- `reduce`
- `try_reduce`
- `all`
- `any`
- `find`
- `find_map`
- `try_find`
- `position`
- `max`
- `min`
- `max_by_key`
- `max_by`
- `min_by_key`
- `min_by`
- `unzip`
- `copied`
- `cloned`
- `array_chunks`
- `sum`
- `product`
- `cmp`
- `cmp_by`
- `partial_cmp`
- `partial_cmp_by`
- `eq`
- `eq_by`
- `ne`
- `lt`
- `le`
- `gt`
- `ge`
- `is_sorted`
- `is_sorted_by`
- `is_sorted_by_key`
