# `ValuesMut` in `yaml_serde::mapping`

## `yaml_serde` 0.10.7

## Module

[`yaml_serde::mapping`](index.html)

## Struct `ValuesMut`

```rust
pub struct ValuesMut<'a> {
    /* private fields */
}
```

[`ValuesMut`] is an iterator over the values of a mutable [`yaml_serde::Mapping`](struct.Mapping.html).

## Trait implementations

### `Iterator`

```rust
impl<'a> Iterator for ValuesMut<'a> {
    type Item = &'a mut Value;

    fn next(&mut self) -> Option<Self::Item>;

    fn size_hint(&self) -> (usize, Option<usize>);
}
```

- `Item = &'a mut Value`
  - The type of each iterated element.
- `next(&mut self) -> Option<Self::Item>`
  - Advances the iterator and returns the next value.
- `size_hint(&self) -> (usize, Option<usize>)`
  - Returns bounds on the remaining number of elements.

### `ExactSizeIterator`

```rust
impl<'a> ExactSizeIterator for ValuesMut<'a> {
    fn len(&self) -> usize;

    fn is_empty(&self) -> bool;
}
```

- `len(&self) -> usize`
  - Returns the exact number of remaining elements.
- `is_empty(&self) -> bool`
  - Returns `true` if the iterator is empty.
  - This is a nightly-only experimental API (`exact_size_is_empty`).

## Inherited `Iterator` methods

Because `ValuesMut` implements [`Iterator`](https://doc.rust-lang.org/nightly/core/iter/traits/iterator/trait.Iterator.html), it also provides the standard iterator adapters and consumers, including:

```rust
fn next_chunk<const N: usize>(
    &mut self,
) -> Result<[Self::Item; N], IntoIter<Self::Item, N>>
where
    Self: Sized;

fn count(self) -> usize
where
    Self: Sized;

fn last(self) -> Option<Self::Item>
where
    Self: Sized;

fn advance_by(&mut self, n: usize) -> Result<(), NonZero<usize>>;

fn nth(&mut self, n: usize) -> Option<Self::Item>;

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

fn map<B, F>(self, f: F) -> Map<Self, F>
where
    Self: Sized,
    F: FnMut(Self::Item) -> B;

fn for_each<F>(self, f: F)
where
    Self: Sized,
    F: FnMut(Self::Item);

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

fn is_partitioned<P>(self, predicate: P) -> bool
where
    Self: Sized,
    P: FnMut(Self::Item) -> bool;

fn try_fold<B, F, R>(&mut self, init: B, f: F) -> R
where
    Self: Sized,
    F: FnMut(B, Self::Item) -> R,
    R: Try;

fn try_for_each<F, R>(&mut self, f: F) -> R
where
    Self: Sized,
    F: FnMut(Self::Item) -> R,
    R: Try<Output = ()>;

fn fold<B, F>(self, init: B, f: F) -> B
where
    Self: Sized,
    F: FnMut(B, Self::Item) -> B;

fn reduce<F>(self, f: F) -> Option<Self::Item>
where
    Self: Sized,
    F: FnMut(Self::Item, Self::Item) -> Self::Item;

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

fn unzip<A, B>(self) -> (A, B)
where
    Self: Sized + Iterator<Item = (A, B)>,
    A: Default + Extend<A>,
    B: Default + Extend<B>;

fn sum<S>(self) -> S
where
    Self: Sized,
    S: Sum<Self::Item>;

fn product<P>(self) -> P
where
    Self: Sized,
    P: Product<Self::Item>;
```

The iterator trait also provides comparison methods such as `cmp_by`, `partial_cmp`, `partial_cmp_by`, `eq`, `eq_by`, `ne`, `lt`, `le`, `gt`, and `ge`, plus sorting checks such as `is_sorted`, `is_sorted_by`, and `is_sorted_by_key`.

## Auto trait implementations

- `!UnwindSafe`
- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket implementations

- `Any` for `T` where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `Borrow<T>` for `T` where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- `BorrowMut<T>` for `T` where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `From<T>` for `T`
  - `fn from(value: T) -> T`
- `Into<U>` for `T` where `U: From<T>`
  - `fn into(self) -> U`
- `IntoIterator` for `I` where `I: Iterator`
  - `type Item = I::Item`
  - `type IntoIter = I`
  - `fn into_iter(self) -> I`
- `TryFrom<U>` for `T` where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`
- `TryInto<U>` for `T` where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
