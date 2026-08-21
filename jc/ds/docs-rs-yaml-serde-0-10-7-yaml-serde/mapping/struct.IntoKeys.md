# `IntoKeys` in `yaml_serde::mapping`

## Definition

**Crate:** `yaml_serde` 0.10.7  
**Module:** `yaml_serde::mapping`  
**Source:** [`mapping.rs`](../../src/yaml_serde/mapping.rs.html#665-667)

```rust
pub struct IntoKeys {
    /* private fields */
}
```

`IntoKeys` is an iterator over the keys of a [`yaml_serde::Mapping`](struct.Mapping.html).

## Trait Implementations

### `Iterator`

```rust
impl Iterator for IntoKeys {
    type Item = Value;

    fn next(&mut self) -> Option<Self::Item>;

    fn size_hint(&self) -> (usize, Option<usize>);
}
```

- `Item = yaml_serde::Value`
- `next` advances the iterator and returns the next key, or `None` when the iterator is exhausted.
- `size_hint` returns bounds on the remaining number of keys.

### `ExactSizeIterator`

```rust
impl ExactSizeIterator for IntoKeys {
    fn len(&self) -> usize;
}
```

- `len` returns the exact number of remaining keys.

The following method is available on nightly Rust:

```rust
fn is_empty(&self) -> bool;
```

`is_empty` returns `true` if the iterator contains no remaining keys.

## Inherited `Iterator` Methods

Because `IntoKeys` implements [`Iterator`], it also provides the standard iterator methods below.

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

The following adapters are available on nightly Rust:

```rust
fn intersperse(self, separator: Self::Item) -> Intersperse<Self>
where
    Self: Sized,
    Self::Item: Clone;

fn intersperse_with<G>(self, separator: G) -> IntersperseWith<Self, G>
where
    Self: Sized,
    G: FnMut() -> Self::Item;

fn map_windows<const N: usize, R, F>(self, f: F) -> MapWindows<Self, F, N>
where
    Self: Sized,
    F: FnMut(&[Self::Item; N]) -> R;

fn array_chunks<const N: usize>(self) -> ArrayChunks<Self, N>
where
    Self: Sized;
```

### Consuming and searching methods

```rust
fn count(self) -> usize
where
    Self: Sized;

fn last(self) -> Option<Self::Item>
where
    Self: Sized;

fn nth(&mut self, n: usize) -> Option<Self::Item>;

fn find<P>(&mut self, predicate: P) -> Option<Self::Item>
where
    P: FnMut(&Self::Item) -> bool;

fn find_map<B, F>(&mut self, f: F) -> Option<B>
where
    F: FnMut(Self::Item) -> Option<B>;

fn position<P>(&mut self, predicate: P) -> Option<usize>
where
    P: FnMut(Self::Item) -> bool;

fn all<F>(&mut self, f: F) -> bool
where
    F: FnMut(Self::Item) -> bool;

fn any<F>(&mut self, f: F) -> bool
where
    F: FnMut(Self::Item) -> bool;
```

The following methods are available on nightly Rust:

```rust
fn advance_by(&mut self, n: usize) -> Result<(), NonZeroUsize>;

fn try_find<R, F>(&mut self, f: F) -> R
where
    R: Try<Output = bool>,
    F: FnMut(&Self::Item) -> R;

fn try_reduce<R, F>(&mut self, f: F) -> R
where
    R: Try<Output = Option<Self::Item>>,
    F: FnMut(Self::Item, Self::Item) -> R;
```

### Folding and collection methods

```rust
fn for_each<F>(self, f: F)
where
    Self: Sized,
    F: FnMut(Self::Item);

fn fold<B, F>(self, init: B, f: F) -> B
where
    Self: Sized,
    F: FnMut(B, Self::Item) -> B;

fn reduce<F>(self, f: F) -> Option<Self::Item>
where
    Self: Sized,
    F: FnMut(Self::Item, Self::Item) -> Self::Item;

fn collect<B>(self) -> B
where
    Self: Sized,
    B: FromIterator<Self::Item>;

fn partition<B, F>(self, f: F) -> (B, B)
where
    Self: Sized,
    B: Default + Extend<Self::Item>,
    F: FnMut(&Self::Item) -> bool;

fn unzip<FromA, FromB>(self) -> (FromA, FromB)
where
    Self: Sized + Iterator<Item = (A, B)>,
    FromA: Default + Extend<A>,
    FromB: Default + Extend<B>;

fn sum<S>(self) -> S
where
    Self: Sized,
    S: Sum<Self::Item>;

fn product<P>(self) -> P
where
    Self: Sized,
    P: Product<Self::Item>;
```

The following method is available on nightly Rust:

```rust
fn collect_into<E>(self, collection: &mut E) -> &mut E
where
    Self: Sized,
    E: Extend<Self::Item>;
```

### Comparison methods

```rust
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

fn is_sorted(self) -> bool
where
    Self: Sized,
    Self::Item: PartialOrd;

fn is_sorted_by<F>(self, compare: F) -> bool
where
    Self: Sized,
    F: FnMut(&Self::Item, &Self::Item) -> bool;

fn is_sorted_by_key<K, F>(self, f: F) -> bool
where
    Self: Sized,
    F: FnMut(Self::Item) -> K,
    K: PartialOrd;
```

### Copying and cloning adapters

```rust
fn copied<'a, T>(self) -> Copied<Self>
where
    Self: Sized + Iterator<Item = &'a T>,
    T: Copy + 'a;

fn cloned<'a, T>(self) -> Cloned<Self>
where
    Self: Sized + Iterator<Item = &'a T>,
    T: Clone + 'a;
```

## Auto Trait Implementations

`IntoKeys` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
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
    fn from(t: T) -> T;
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
