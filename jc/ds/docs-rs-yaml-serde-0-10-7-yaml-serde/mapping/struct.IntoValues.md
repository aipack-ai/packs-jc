# `IntoValues` in `yaml_serde::mapping`

## Crate

[`yaml_serde`](../../yaml_serde/index.html) 0.10.7

## Module

[`yaml_serde::mapping`](index.html)

## Struct definition

```rust
pub struct IntoValues {
    /* private fields */
}
```

Iterator over the values of a [`yaml_serde::Mapping`](struct.Mapping.html).

## Trait implementations

### `ExactSizeIterator`

```rust
impl ExactSizeIterator for IntoValues {
    fn len(&self) -> usize;
}
```

Returns the exact remaining length of the iterator.

The nightly-only `is_empty` method is also available:

```rust
fn is_empty(&self) -> bool;
```

Returns `true` if the iterator is empty.

### `Iterator`

```rust
impl Iterator for IntoValues {
    type Item = Value;

    fn next(&mut self) -> Option<Self::Item>;

    fn size_hint(&self) -> (usize, Option<usize>);
}
```

- `Item`: [`Value`](../enum.Value.html), the type of elements produced by the iterator.
- `next`: Advances the iterator and returns the next value.
- `size_hint`: Returns bounds on the remaining length of the iterator.

## Inherited `Iterator` methods

The following methods are provided by the [`Iterator`](https://doc.rust-lang.org/nightly/core/iter/traits/iterator/trait.Iterator.html) implementation.

### Iterator adapters

```rust
fn step_by(self, step: usize) -> StepBy<Self>
where
    Self: Sized;

fn chain<U>(self, other: U) -> Chain<Self, U::IntoIter>
where
    Self: Sized,
    U: IntoIterator<Item = Self::Item>;

fn zip<U>(self, other: U) -> Zip<Self, U::IntoIter>
where
    Self: Sized,
    U: IntoIterator;

fn intersperse(self, separator: Self::Item) -> Intersperse<Self>
where
    Self: Sized,
    Self::Item: Clone;

fn intersperse_with<G>(self, separator: G) -> IntersperseWith<Self, G>
where
    Self: Sized,
    G: FnMut() -> Self::Item;

fn map<B, F>(self, f: F) -> Map<Self, F>
where
    Self: Sized,
    F: FnMut(Self::Item) -> B;

fn filter<P>(self, predicate: P) -> Filter<Self, P>
where
    Self: Sized,
    P: FnMut(&Self::Item) -> bool;

fn filter_map<B, F>(self, f: F) -> FilterMap<Self, F>
where
    Self: Sized,
    F: FnMut(Self::Item) -> Option<B>;

fn enumerate(self) -> Enumerate<Self>
where
    Self: Sized;

fn peekable(self) -> Peekable<Self>
where
    Self: Sized;

fn skip_while<P>(self, predicate: P) -> SkipWhile<Self, P>
where
    Self: Sized,
    P: FnMut(&Self::Item) -> bool;

fn take_while<P>(self, predicate: P) -> TakeWhile<Self, P>
where
    Self: Sized,
    P: FnMut(&Self::Item) -> bool;

fn map_while<B, P>(self, predicate: P) -> MapWhile<Self, P>
where
    Self: Sized,
    P: FnMut(Self::Item) -> Option<B>;

fn skip(self, n: usize) -> Skip<Self>
where
    Self: Sized;

fn take(self, n: usize) -> Take<Self>
where
    Self: Sized;

fn scan<St, B, F>(self, initial_state: St, f: F) -> Scan<Self, St, F>
where
    Self: Sized,
    F: FnMut(&mut St, Self::Item) -> Option<B>;

fn flat_map<U, F>(self, f: F) -> FlatMap<Self, U, F>
where
    Self: Sized,
    U: IntoIterator,
    F: FnMut(Self::Item) -> U;

fn fuse(self) -> Fuse<Self>
where
    Self: Sized;

fn inspect<F>(self, f: F) -> Inspect<Self, F>
where
    Self: Sized,
    F: FnMut(&Self::Item);

fn by_ref(&mut self) -> &mut Self
where
    Self: Sized;
```

### Consuming and folding methods

```rust
fn count(self) -> usize
where
    Self: Sized;

fn last(self) -> Option<Self::Item>
where
    Self: Sized;

fn nth(&mut self, n: usize) -> Option<Self::Item>;

fn for_each<F>(self, f: F)
where
    Self: Sized,
    F: FnMut(Self::Item);

fn collect<B>(self) -> B
where
    Self: Sized,
    B: FromIterator<Self::Item>;

fn collect_into<E>(self, collection: &mut E) -> &mut E
where
    Self: Sized,
    E: Extend<Self::Item>;

fn partition<B, F>(self, f: F) -> (B, B)
where
    Self: Sized,
    B: Default + Extend<Self::Item>,
    F: FnMut(&Self::Item) -> bool;

fn fold<B, F>(self, init: B, f: F) -> B
where
    Self: Sized,
    F: FnMut(B, Self::Item) -> B;

fn reduce<F>(self, f: F) -> Option<Self::Item>
where
    Self: Sized,
    F: FnMut(Self::Item, Self::Item) -> Self::Item;

fn sum<S>(self) -> S
where
    Self: Sized,
    S: Sum<Self::Item>;

fn product<P>(self) -> P
where
    Self: Sized,
    P: Product<Self::Item>;

fn unzip<A, B>(self) -> (A, B)
where
    Self: Sized + Iterator<Item = (A, B)>,
    A: Default + Extend<A>,
    B: Default + Extend<B>;
```

### Searching and testing methods

```rust
fn all<F>(&mut self, f: F) -> bool
where
    Self: Sized,
    F: FnMut(Self::Item) -> bool;

fn any<F>(&mut self, f: F) -> bool
where
    Self: Sized,
    F: FnMut(Self::Item) -> bool;

fn find<P>(&mut self, predicate: P) -> Option<Self::Item>
where
    Self: Sized,
    P: FnMut(&Self::Item) -> bool;

fn find_map<B, F>(&mut self, f: F) -> Option<B>
where
    Self: Sized,
    F: FnMut(Self::Item) -> Option<B>;

fn position<P>(&mut self, predicate: P) -> Option<usize>
where
    Self: Sized,
    P: FnMut(Self::Item) -> bool;

fn is_partitioned<P>(self, predicate: P) -> bool
where
    Self: Sized,
    P: FnMut(Self::Item) -> bool;

fn is_sorted(self) -> bool
where
    Self: Sized,
    Self::Item: PartialOrd;

fn is_sorted_by<F>(self, compare: F) -> bool
where
    Self: Sized,
    F: FnMut(&Self::Item, &Self::Item) -> bool;

fn is_sorted_by_key<F, K>(self, f: F) -> bool
where
    Self: Sized,
    F: FnMut(Self::Item) -> K,
    K: PartialOrd;
```

### Comparison methods

```rust
fn max_by_key<B, F>(self, f: F) -> Option<Self::Item>
where
    Self: Sized,
    B: Ord,
    F: FnMut(&Self::Item) -> B;

fn max_by<F>(self, compare: F) -> Option<Self::Item>
where
    Self: Sized,
    F: FnMut(&Self::Item, &Self::Item) -> Ordering;

fn min_by_key<B, F>(self, f: F) -> Option<Self::Item>
where
    Self: Sized,
    B: Ord,
    F: FnMut(&Self::Item) -> B;

fn min_by<F>(self, compare: F) -> Option<Self::Item>
where
    Self: Sized,
    F: FnMut(&Self::Item, &Self::Item) -> Ordering;

fn cmp_by<I, F>(self, other: I, cmp: F) -> Ordering
where
    Self: Sized,
    I: IntoIterator,
    F: FnMut(Self::Item, I::Item) -> Ordering;

fn partial_cmp<I>(self, other: I) -> Option<Ordering>
where
    Self: Sized,
    I: IntoIterator,
    Self::Item: PartialOrd<I::Item>;

fn partial_cmp_by<I, F>(self, other: I, partial_cmp: F) -> Option<Ordering>
where
    Self: Sized,
    I: IntoIterator,
    F: FnMut(Self::Item, I::Item) -> Option<Ordering>;

fn eq<I>(self, other: I) -> bool
where
    Self: Sized,
    I: IntoIterator,
    Self::Item: PartialEq<I::Item>;

fn eq_by<I, F>(self, other: I, eq: F) -> bool
where
    Self: Sized,
    I: IntoIterator,
    F: FnMut(Self::Item, I::Item) -> bool;

fn ne<I>(self, other: I) -> bool
where
    Self: Sized,
    I: IntoIterator,
    Self::Item: PartialEq<I::Item>;

fn lt<I>(self, other: I) -> bool
where
    Self: Sized,
    I: IntoIterator,
    Self::Item: PartialOrd<I::Item>;

fn le<I>(self, other: I) -> bool
where
    Self: Sized,
    I: IntoIterator,
    Self::Item: PartialOrd<I::Item>;

fn gt<I>(self, other: I) -> bool
where
    Self: Sized,
    I: IntoIterator,
    Self::Item: PartialOrd<I::Item>;

fn ge<I>(self, other: I) -> bool
where
    Self: Sized,
    I: IntoIterator,
    Self::Item: PartialOrd<I::Item>;
```

### Iterator utility methods

```rust
fn advance_by(&mut self, n: usize) -> Result<(), NonZeroUsize>;

fn try_fold<B, F, R>(&mut self, init: B, f: F) -> R
where
    Self: Sized,
    F: FnMut(B, Self::Item) -> R,
    R: Try;

fn try_for_each<F, R>(&mut self, f: F) -> R
where
    Self: Sized,
    F: FnMut(Self::Item) -> R,
    R: Try;

fn copied<'a, T>(self) -> Copied<Self>
where
    Self: Sized + Iterator<Item = &'a T>,
    T: Copy + 'a;

fn cloned<'a, T>(self) -> Cloned<Self>
where
    Self: Sized + Iterator<Item = &'a T>,
    T: Clone + 'a;
```

The following methods are nightly-only experimental APIs:

```rust
fn next_chunk<const N: usize>(
    &mut self,
) -> Result<[Self::Item; N], IntoIter<Self::Item, N>>
where
    Self: Sized;

fn next_chunk<const N: usize>(
    &mut self,
) -> Result<[Self::Item; N], IntoIter<Self::Item, N>>
where
    Self: Sized;

fn map_windows<const N: usize, R, F>(self, f: F) -> MapWindows<Self, F>
where
    Self: Sized,
    F: FnMut(&[Self::Item; N]) -> R;

fn array_chunks<const N: usize>(self) -> ArrayChunks<Self, N>
where
    Self: Sized;

fn try_reduce<R, F>(&mut self, f: F) -> R
where
    Self: Sized,
    R: Try<Output = Self::Item>,
    F: FnMut(Self::Item, Self::Item) -> R;
```

## Auto trait implementations

`IntoValues` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

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
    fn from(t: T) -> T;
}
```

Returns the argument unchanged.

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

Calls `U::from(self)`.

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
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```
