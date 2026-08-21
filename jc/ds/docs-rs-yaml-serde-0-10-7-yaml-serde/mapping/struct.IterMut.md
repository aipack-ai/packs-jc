# `IterMut` in `yaml_serde::mapping`

## Crate

- Crate: [`yaml_serde`](../../yaml_serde/index.html)
- Version: `0.10.7`
- Module: `yaml_serde::mapping`
- Source: [`mapping.rs`](../../src/yaml_serde/mapping.rs.html#622-624)

## Struct `IterMut`

```rust
pub struct IterMut<'a> {
    /* private fields */
}
```

An iterator over mutable entries in a [`yaml_serde::Mapping`](struct.Mapping.html).

The iterator yields each mapping entry as a tuple containing an immutable key reference and a mutable value reference.

## Trait Implementations

### `Iterator`

```rust
impl<'a> Iterator for IterMut<'a> {
    type Item = (
        &'a Value,
        &'a mut Value,
    );

    fn next(&mut self) -> Option<Self::Item>;

    fn size_hint(&self) -> (usize, Option<usize>);
}
```

Source: [`mapping.rs`](../../src/yaml_serde/mapping.rs.html#626)

#### Associated Types

##### `Item`

```rust
type Item = (
    &'a Value,
    &'a mut Value,
);
```

The type of each item yielded by the iterator.

#### Methods

##### `next`

```rust
fn next(&mut self) -> Option<Self::Item>
```

Advances the iterator and returns the next key-value pair. Returns `None` when the iterator is exhausted.

##### `size_hint`

```rust
fn size_hint(&self) -> (usize, Option<usize>)
```

Returns bounds on the number of remaining items.

### `ExactSizeIterator`

```rust
impl<'a> ExactSizeIterator for IterMut<'a> {
    fn len(&self) -> usize;

    fn is_empty(&self) -> bool;
}
```

Source: [`mapping.rs`](../../src/yaml_serde/mapping.rs.html#626)

#### Methods

##### `len`

```rust
fn len(&self) -> usize
```

Returns the exact number of remaining items.

##### `is_empty`

```rust
fn is_empty(&self) -> bool
```

Returns whether the iterator contains no remaining items.

This method is a nightly-only experimental API enabled by the `exact_size_is_empty` feature.

## Auto Trait Implementations

`IterMut<'a>` implements:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

`IterMut<'a>` does not implement:

- `UnwindSafe`

## Blanket Implementations

### `Any`

```rust
impl<T> Any for T
where
    T: 'static + ?Sized,
{
    fn type_id(&self) -> TypeId;
}
```

### `Borrow`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
{
    fn borrow(&self) -> &T;
}
```

### `BorrowMut`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
{
    fn borrow_mut(&mut self) -> &mut T;
}
```

### `From`

```rust
impl<T> From<T> for T {
    fn from(value: T) -> T;
}
```

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

### `IntoIterator`

```rust
impl<I> IntoIterator for I
where
    I: Iterator,
{
    type Item = I::Item;
    type IntoIter = I;

    fn into_iter(self) -> I;
}
```

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = U::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```

## Inherited `Iterator` Methods

Because `IterMut<'a>` implements [`Iterator`](https://doc.rust-lang.org/nightly/core/iter/traits/iterator/trait.Iterator.html), it also provides the standard iterator methods, including:

- `advance_by`
- `all`
- `any`
- `array_chunks`
- `by_ref`
- `chain`
- `cloned`
- `cmp`
- `cmp_by`
- `collect`
- `collect_into`
- `copied`
- `count`
- `eq`
- `eq_by`
- `enumerate`
- `filter`
- `filter_map`
- `find`
- `find_map`
- `flat_map`
- `flatten`
- `fold`
- `for_each`
- `fuse`
- `ge`
- `gt`
- `inspect`
- `intersperse`
- `intersperse_with`
- `is_partitioned`
- `is_sorted`
- `is_sorted_by`
- `is_sorted_by_key`
- `last`
- `le`
- `lt`
- `map`
- `map_while`
- `map_windows`
- `max`
- `max_by`
- `max_by_key`
- `min`
- `min_by`
- `min_by_key`
- `ne`
- `next_chunk`
- `nth`
- `partial_cmp`
- `partial_cmp_by`
- `partition`
- `peekable`
- `position`
- `product`
- `reduce`
- `scan`
- `skip`
- `skip_while`
- `size_hint`
- `step_by`
- `sum`
- `take`
- `take_while`
- `try_collect`
- `try_find`
- `try_fold`
- `try_for_each`
- `try_reduce`
- `unzip`
- `zip`

Some iterator methods are nightly-only experimental APIs.
