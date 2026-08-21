# `yaml_serde::mapping::Iter`

`yaml_serde` 0.10.7

## Struct

```rust
pub struct Iter<'a> {
    /* private fields */
}
```

Iterator over `&yaml_serde::Mapping`.

## Trait Implementations

### `Iterator`

```rust
impl<'a> Iterator for Iter<'a> {
    type Item = (
        &'a yaml_serde::Value,
        &'a yaml_serde::Value,
    );

    fn next(
        &mut self,
    ) -> Option<Self::Item>;

    fn size_hint(
        &self,
    ) -> (usize, Option<usize>);
}
```

- `Item`: A key-value pair containing references to `yaml_serde::Value`.
- `next`: Advances the iterator and returns the next key-value pair, or `None` when exhausted.
- `size_hint`: Returns the lower and upper bounds on the remaining number of elements.

The following methods are also available through the `Iterator` trait:

- `next_chunk<const N: usize>(&mut self) -> Result<[Self::Item; N], IntoIter<Self::Item, N>>`
- `count(self) -> usize`
- `last(self) -> Option<Self::Item>`
- `advance_by(&mut self, n: usize) -> Result<(), NonZero<usize>>`
- `nth(&mut self, n: usize) -> Option<Self::Item>`
- `step_by(self, step: usize) -> StepBy<Self>`
- `chain<U>(self, other: U) -> Chain<Self, U::IntoIter>`
- `zip<U>(self, other: U) -> Zip<Self, U::IntoIter>`
- `intersperse(self, separator: Self::Item) -> Intersperse<Self>`
- `intersperse_with<G>(self, separator: G) -> IntersperseWith<Self, G>`
- `map<B, F>(self, f: F) -> Map<Self, F>`
- `for_each<F>(self, f: F)`
- `filter<P>(self, predicate: P) -> Filter<Self, P>`
- `filter_map<B, F>(self, f: F) -> FilterMap<Self, F>`
- `enumerate(self) -> Enumerate<Self>`
- `peekable(self) -> Peekable<Self>`
- `skip_while<P>(self, predicate: P) -> SkipWhile<Self, P>`
- `take_while<P>(self, predicate: P) -> TakeWhile<Self, P>`
- `map_while<B, P>(self, predicate: P) -> MapWhile<Self, P>`
- `skip(self, n: usize) -> Skip<Self>`
- `take(self, n: usize) -> Take<Self>`
- `scan<St, B, F>(self, initial_state: St, f: F) -> Scan<Self, St, F>`
- `flat_map<U, F>(self, f: F) -> FlatMap<Self, U, F>`
- `flatten(self) -> Flatten<Self>`
- `map_windows<const N: usize, R, F>(self, f: F) -> MapWindows<Self, F, N>`
- `fuse(self) -> Fuse<Self>`
- `inspect<F>(self, f: F) -> Inspect<Self, F>`
- `by_ref(&mut self) -> &mut Self`
- `collect<B>(self) -> B`
- `try_collect<B>(&mut self) -> B`
- `collect_into<E>(self, collection: &mut E) -> &mut E`
- `partition<B, F>(self, f: F) -> (B, B)`
- `is_partitioned<P>(self, predicate: P) -> bool`
- `try_fold<B, F, R>(&mut self, init: B, f: F) -> R`
- `try_for_each<F, R>(&mut self, f: F) -> R`
- `fold<B, F>(self, init: B, f: F) -> B`
- `reduce<F>(self, f: F) -> Option<Self::Item>`
- `try_reduce<R, F>(&mut self, f: F) -> R`
- `all<F>(&mut self, f: F) -> bool`
- `any<F>(&mut self, f: F) -> bool`
- `find<P>(&mut self, predicate: P) -> Option<Self::Item>`
- `find_map<B, F>(&mut self, f: F) -> Option<B>`
- `try_find<R, F>(&mut self, f: F) -> R`
- `position<P>(&mut self, predicate: P) -> Option<usize>`
- `max(self) -> Option<Self::Item>`
- `min(self) -> Option<Self::Item>`
- `max_by_key<B, F>(self, f: F) -> Option<Self::Item>`
- `max_by<F>(self, compare: F) -> Option<Self::Item>`
- `min_by_key<B, F>(self, f: F) -> Option<Self::Item>`
- `min_by<F>(self, compare: F) -> Option<Self::Item>`
- `unzip<A, B>(self) -> (A, B)`
- `copied<'b, T>(self) -> Copied<Self>`
- `cloned<'b, T>(self) -> Cloned<Self>`
- `array_chunks<const N: usize>(self) -> ArrayChunks<Self, N>`
- `sum<S>(self) -> S`
- `product<P>(self) -> P`
- `cmp<I>(self, other: I) -> Ordering`
- `cmp_by<I, F>(self, other: I, cmp: F) -> Ordering`
- `partial_cmp<I>(self, other: I) -> Option<Ordering>`
- `partial_cmp_by<I, F>(self, other: I, partial_cmp: F) -> Option<Ordering>`
- `eq<I>(self, other: I) -> bool`
- `eq_by<I, F>(self, other: I, eq: F) -> bool`
- `ne<I>(self, other: I) -> bool`
- `lt<I>(self, other: I) -> bool`
- `le<I>(self, other: I) -> bool`
- `gt<I>(self, other: I) -> bool`
- `ge<I>(self, other: I) -> bool`
- `is_sorted(self) -> bool`
- `is_sorted_by<F>(self, compare: F) -> bool`
- `is_sorted_by_key<K, F>(self, f: F) -> bool`

### `ExactSizeIterator`

```rust
impl<'a> ExactSizeIterator for Iter<'a> {
    fn len(&self) -> usize;

    fn is_empty(&self) -> bool;
}
```

- `len`: Returns the exact number of remaining elements.
- `is_empty`: Returns whether the iterator has no remaining elements. This is a nightly-only experimental API.

## Auto Trait Implementations

`Iter<'a>` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

`Iter<'a>` receives the following blanket implementations where their respective trait bounds are satisfied:

- `Any`
- `Borrow<T>`
- `BorrowMut<T>`
- `From<T>`
- `Into<U>`
- `IntoIterator`
- `TryFrom<U>`
- `TryInto<U>`

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
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```

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
