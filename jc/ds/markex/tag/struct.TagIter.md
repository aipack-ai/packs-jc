# Struct TagIter

- [Source](../../src/markex/tag/tag_iter.rs.html#9-11)

```rust
pub struct TagIter<'a> { /* private fields */ }
```

Iterator that yields owned `Part` instances (`Text` or `TagElem`), found within a text based on specific tag names. It consumes the referenced elements from `TagRefIter` and converts them to owned types.

## Implementations

- [Source](../../src/markex/tag/tag_iter.rs.html#13-41)

### impl<'a> [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'a>

- [Source](../../src/markex/tag/tag_iter.rs.html#21-27)

#### pub fn [new](method.new)(input: &'a [str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html), tag_names: &[&'a [str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)], options: impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")<[TagOptions](struct.TagOptions.html "struct markex::tag::TagOptions")>) -> Self

Creates a new `TagIter`.

##### Arguments

- `input` - The string slice to search within.
- `tag_names` - A slice of tag names to search for (e.g., &["FILE", "DATA"]).
- `options` - Parser configuration, or `None` for default options.

- [Source](../../src/markex/tag/tag_iter.rs.html#38-40)

#### pub fn [new_single_tag](method.new_single_tag)(input: &'a [str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html), tag_name: &'a [str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html), options: impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")<[TagOptions](struct.TagOptions.html "struct markex::tag::TagOptions")>) -> Self

Creates a new `TagElemIter` configured to search for a single tag name.

This is a convenience wrapper around `Self::new`.

##### Arguments

- `input` - The string slice to search within.
- `tag_name` - The name of the tag to search for (e.g., "FILE").
- `options` - Parser configuration, or `None` for default options.

## Trait Implementations

- [Source](../../src/markex/tag/tag_iter.rs.html#43-49)

### impl [Iterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html "trait core::iter::traits::iterator::Iterator") for [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'_>

- [Source](../../src/markex/tag/tag_iter.rs.html#44)

#### type [Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item) = [Part](enum.Part.html "enum markex::tag::Part")

The type of the elements being iterated over.

- [Source](../../src/markex/tag/tag_iter.rs.html#46-48)

#### fn [next](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#tymethod.next)(&mut self) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

Advances the iterator and returns the next value. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#tymethod.next)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#112-116)

#### fn [next_chunk](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.next_chunk)<const N: [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)>(&mut self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<[Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"); N], [IntoIter](https://doc.rust-lang.org/1.97.1/core/array/iter/struct.IntoIter.html "struct core::array::iter::IntoIter")<Item, N>>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

🔬 This is a nightly-only experimental API. (`iter_next_chunk`)

Advances the iterator and returns an array containing the next `N` values. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.next_chunk)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#189)

#### fn [size_hint](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.size_hint)(&self) -> ([usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html), [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)>)

Returns the bounds on the remaining length of the iterator. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.size_hint)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#224-227)

#### fn [count](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.count)(self) -> [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Consumes the iterator, counting the number of iterations and returning it. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.count)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#257-260)

#### fn [last](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.last)(self) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Consumes the iterator, returning the last element. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.last)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#310)

#### fn [advance_by](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.advance_by)(&mut self, n: [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<[()](https://doc.rust-lang.org/1.97.1/std/primitive.unit.html), [NonZero](https://doc.rust-lang.org/1.97.1/core/num/nonzero/struct.NonZero.html "struct core::num::nonzero::NonZero")<[usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)>>

🔬 This is a nightly-only experimental API. (`iter_advance_by`)

Advances the iterator by `n` elements. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.advance_by)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#388)

#### fn [nth](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.nth)(&mut self, n: [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

Returns the `n`th element of the iterator. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.nth)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#439-441)

#### fn [step_by](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.step_by)(self, step: [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)) -> [StepBy](https://doc.rust-lang.org/1.97.1/core/iter/adapters/step_by/struct.StepBy.html "struct core::iter::adapters::step_by::StepBy")<Self>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Creates an iterator starting at the same point, but stepping by the given amount at each iteration. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.step_by)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#510-513)

#### fn [chain](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.chain)(self, other: U) -> [Chain](https://doc.rust-lang.org/1.97.1/core/iter/adapters/chain/struct.Chain.html "struct core::iter::adapters::chain::Chain")<Self, U::[IntoIter](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.IntoIter "type core::iter::traits::collect::IntoIterator::IntoIter")>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), U: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator")<Item = Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")>

Takes two iterators and creates a new iterator over both in sequence. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.chain)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#629-632)

#### fn [zip](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.zip)(self, other: U) -> [Zip](https://doc.rust-lang.org/1.97.1/core/iter/adapters/zip/struct.Zip.html "struct core::iter::adapters::zip::Zip")<Self, U::[IntoIter](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.IntoIter "type core::iter::traits::collect::IntoIterator::IntoIter")>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), U: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator")

‘Zips up’ two iterators into a single iterator of pairs. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.zip)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#693-696)

#### fn [intersperse](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.intersperse)(self, separator: Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [Intersperse](https://doc.rust-lang.org/1.97.1/core/iter/adapters/intersperse/struct.Intersperse.html "struct core::iter::adapters::intersperse::Intersperse")<Self>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"): [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")

🔬 This is a nightly-only experimental API. (`iter_intersperse`)

Creates a new iterator which places a copy of `separator` between items of the original iterator. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.intersperse)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#772-775)

#### fn [intersperse_with](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.intersperse_with)(self, separator: G) -> [IntersperseWith](https://doc.rust-lang.org/1.97.1/core/iter/adapters/intersperse/struct.IntersperseWith.html "struct core::iter::adapters::intersperse::IntersperseWith")<Self, G>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), G: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")() -> Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")

🔬 This is a nightly-only experimental API. (`iter_intersperse`)

Creates a new iterator which places an item generated by `separator` between items of the original iterator. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.intersperse_with)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#831-834)

#### fn [map](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.map)(self, f: F) -> [Map](https://doc.rust-lang.org/1.97.1/core/iter/adapters/map/struct.Map.html "struct core::iter::adapters::map::Map")<Self, F>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> B

Takes a closure and creates an iterator which calls that closure on each element. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.map)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#877-880)

#### fn [for_each](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.for_each)(self, f: F)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"))

Calls a closure on each element of an iterator. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.for_each)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#952-955)

#### fn [filter](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.filter)(self, predicate: P) -> [Filter](https://doc.rust-lang.org/1.97.1/core/iter/adapters/filter/struct.Filter.html "struct core::iter::adapters::filter::Filter")<Self, P>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), P: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Creates an iterator which uses a closure to determine if an element should be yielded. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.filter)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#997-1000)

#### fn [filter_map](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.filter_map)(self, f: F) -> [FilterMap](https://doc.rust-lang.org/1.97.1/core/iter/adapters/filter_map/struct.FilterMap.html "struct core::iter::adapters::filter_map::FilterMap")<Self, F>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<B>

Creates an iterator that both filters and maps. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.filter_map)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1044-1046)

#### fn [enumerate](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.enumerate)(self) -> [Enumerate](https://doc.rust-lang.org/1.97.1/core/iter/adapters/enumerate/struct.Enumerate.html "struct core::iter::adapters::enumerate::Enumerate")<Self>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Creates an iterator which gives the current iteration count as well as the next value. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.enumerate)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1115-1117)

#### fn [peekable](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.peekable)(self) -> [Peekable](https://doc.rust-lang.org/1.97.1/core/iter/adapters/peekable/struct.Peekable.html "struct core::iter::adapters::peekable::Peekable")<Self>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Creates an iterator which can use the [`peek`](https://doc.rust-lang.org/1.97.1/core/iter/adapters/peekable/struct.Peekable.html#method.peek "method core::iter::adapters::peekable::Peekable::peek") and [`peek_mut`](https://doc.rust-lang.org/1.97.1/core/iter/adapters/peekable/struct.Peekable.html#method.peek_mut "method core::iter::adapters::peekable::Peekable::peek_mut") methods to look at the next element of the iterator without consuming it. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.peekable)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1180-1183)

#### fn [skip_while](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.skip_while)(self, predicate: P) -> [SkipWhile](https://doc.rust-lang.org/1.97.1/core/iter/adapters/skip_while/struct.SkipWhile.html "struct core::iter::adapters::skip_while::SkipWhile")<Self, P>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), P: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Creates an iterator that skips elements based on a predicate. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.skip_while)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1258-1261)

#### fn [take_while](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.take_while)(self, predicate: P) -> [TakeWhile](https://doc.rust-lang.org/1.97.1/core/iter/adapters/take_while/struct.TakeWhile.html "struct core::iter::adapters::take_while::TakeWhile")<Self, P>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), P: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Creates an iterator that yields elements based on a predicate. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.take_while)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1346-1349)

#### fn [map_while](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.map_while)(self, predicate: P) -> [MapWhile](https://doc.rust-lang.org/1.97.1/core/iter/adapters/map_while/struct.MapWhile.html "struct core::iter::adapters::map_while::MapWhile")<Self, P>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), P: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<B>

Creates an iterator that both yields elements based on a predicate and maps. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.map_while)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1375-1377)

#### fn [skip](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.skip)(self, n: [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)) -> [Skip](https://doc.rust-lang.org/1.97.1/core/iter/adapters/skip/struct.Skip.html "struct core::iter::adapters::skip::Skip")<Self>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Creates an iterator that skips the first `n` elements. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.skip)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1447-1449)

#### fn [take](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.take)(self, n: [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)) -> [Take](https://doc.rust-lang.org/1.97.1/core/iter/adapters/take/struct.Take.html "struct core::iter::adapters::take::Take")<Self>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Creates an iterator that yields the first `n` elements, or fewer if the underlying iterator ends sooner. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.take)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1494-1497)

#### fn [scan](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.scan)(self, initial_state: St, f: F) -> [Scan](https://doc.rust-lang.org/1.97.1/core/iter/adapters/scan/struct.Scan.html "struct core::iter::adapters::scan::Scan")<Self, St, F>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&mut St, Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<B>

An iterator adapter which holds internal state and produces a new iterator. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.scan)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1533-1537)

#### fn [flat_map](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.flat_map)(self, f: F) -> [FlatMap](https://doc.rust-lang.org/1.97.1/core/iter/adapters/flatten/struct.FlatMap.html "struct core::iter::adapters::flatten::FlatMap")<Self, U, F>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), U: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> U

Creates an iterator that works like map, but flattens nested structures. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.flat_map)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1771-1774)

#### fn [map_windows](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.map_windows)<const N: [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)>(self, f: F) -> [MapWindows](https://doc.rust-lang.org/1.97.1/core/iter/adapters/map_windows/struct.MapWindows.html "struct core::iter::adapters::map_windows::MapWindows")<Self, F, N>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&[Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"); N]) -> R

🔬 This is a nightly-only experimental API. (`iter_map_windows`)

Calls the given function `f` for each contiguous window of size `N` over `self` and returns an iterator over the outputs. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.map_windows)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1833-1835)

#### fn [fuse](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.fuse)(self) -> [Fuse](https://doc.rust-lang.org/1.97.1/core/iter/adapters/fuse/struct.Fuse.html "struct core::iter::adapters::fuse::Fuse")<Self>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Creates an iterator which ends after the first [`None`](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html#variant.None "variant core::option::Option::None"). [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.fuse)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1917-1920)

#### fn [inspect](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.inspect)(self, f: F) -> [Inspect](https://doc.rust-lang.org/1.97.1/core/iter/adapters/inspect/struct.Inspect.html "struct core::iter::adapters::inspect::Inspect")<Self, F>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"))

Does something with each element of an iterator, passing the value on. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.inspect)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#1954-1956)

#### fn [by_ref](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.by_ref)(&mut self) -> &mut Self

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Creates a “by reference” adapter for this instance of `Iterator`. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.by_ref)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2077-2079)

#### fn [collect](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.collect)(self) -> B

where B: [FromIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.FromIterator.html "trait core::iter::traits::collect::FromIterator")<Item>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Transforms an iterator into a collection. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.collect)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2238-2240)

#### fn [collect_into](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.collect_into)(self, collection: &mut E) -> &mut E

where E: [Extend](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.Extend.html "trait core::iter::traits::collect::Extend")<Item>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

🔬 This is a nightly-only experimental API. (`iter_collect_into`)

Collects all the items from an iterator into a collection. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.collect_into)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2271-2275)

#### fn [partition](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.partition)(self, f: F) -> (B, B)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), B: [Default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html "trait core::default::Default") + [Extend](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.Extend.html "trait core::iter::traits::collect::Extend")<Item>, F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Consumes an iterator, creating two collections from it. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.partition)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2392-2395)

#### fn [is_partitioned](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.is_partitioned)(self, predicate: P) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), P: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

🔬 This is a nightly-only experimental API. (`iter_is_partitioned`)

Checks if the elements of this iterator are partitioned according to the given predicate. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.is_partitioned)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2486-2490)

#### fn [try_fold](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.try_fold)(&mut self, init: B, f: F) -> R

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(B, Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> R, R: [Try](https://doc.rust-lang.org/1.97.1/core/ops/try_trait/trait.Try.html "trait core::ops::try_trait::Try")

An iterator method that applies a function as long as it returns successfully, producing a single, final value. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.try_fold)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2545-2549)

#### fn [try_for_each](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.try_for_each)(&mut self, f: F) -> R

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> R, R: [Try](https://doc.rust-lang.org/1.97.1/core/ops/try_trait/trait.Try.html "trait core::ops::try_trait::Try")

An iterator method that applies a fallible function to each item in the iterator, stopping at the first error. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.try_for_each)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2664-2667)

#### fn [fold](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.fold)(self, init: B, f: F) -> B

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(B, Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> B

Folds every element into an accumulator by applying an operation, returning the final result. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.fold)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2701-2704)

#### fn [reduce](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.reduce)(self, f: F) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")

Reduces the elements to a single one, by repeatedly applying a reducing operation. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.reduce)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2772-2778)

#### fn [try_reduce](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.try_reduce)(&mut self, f: impl [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> R) -> <R as [Try](https://doc.rust-lang.org/1.97.1/core/ops/try_trait/trait.Try.html "trait core::ops::try_trait::Try")>::[Residual]

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

🔬 This is a nightly-only experimental API. (`iterator_try_reduce`)

Reduces the elements to a single one by repeatedly applying a reducing operation, propagating failures immediately. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.try_reduce)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2831-2834)

#### fn [all](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.all)(&mut self, f: F) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Tests if every element of the iterator matches a predicate. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.all)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2885-2888)

#### fn [any](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.any)(&mut self, f: F) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Tests if any element of the iterator matches a predicate. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.any)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2959-2962)

#### fn [find](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.find)(&mut self, predicate: P) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), P: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Searches for an element of an iterator that satisfies a predicate. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.find)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#2991-2994)

#### fn [find_map](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.find_map)(&mut self, f: F) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<B>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<B>

Applies function to the elements of iterator and returns the first non-none result. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.find_map)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3050-3056)

#### fn [try_find](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.try_find)(&mut self, f: impl [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> R) -> R

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

🔬 This is a nightly-only experimental API. (`try_find`)

Applies function to the elements of iterator and returns the first true result or the first error. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.try_find)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3134-3137)

#### fn [position](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.position)(&mut self, predicate: P) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), P: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Searches for an element in an iterator, returning its index. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.position)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3310-3313)

#### fn [max_by_key](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.max_by_key)(self, f: F) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

where B: [Ord](https://doc.rust-lang.org/1.97.1/core/cmp/trait.Ord.html "trait core::cmp::Ord"), Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> B

Returns the element that gives the maximum value from the specified function. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.max_by_key)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3344-3347)

#### fn [max_by](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.max_by)(self, compare: F) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"), &Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [Ordering](https://doc.rust-lang.org/1.97.1/core/cmp/enum.Ordering.html "enum core::cmp::Ordering")

Returns the element that gives the maximum value with respect to the specified comparison function. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.max_by)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3372-3375)

#### fn [min_by_key](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.min_by_key)(self, f: F) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

where B: [Ord](https://doc.rust-lang.org/1.97.1/core/cmp/trait.Ord.html "trait core::cmp::Ord"), Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> B

Returns the element that gives the minimum value from the specified function. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.min_by_key)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3406-3409)

#### fn [min_by](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.min_by)(self, compare: F) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<Item>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"), &Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [Ordering](https://doc.rust-lang.org/1.97.1/core/cmp/enum.Ordering.html "enum core::cmp::Ordering")

Returns the element that gives the minimum value with respect to the specified comparison function. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.min_by)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3480-3484)

#### fn [unzip](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.unzip)(self) -> (FromA, FromB)

where FromA: [Default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html "trait core::default::Default") + [Extend](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.Extend.html "trait core::iter::traits::collect::Extend")<A>, FromB: [Default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html "trait core::default::Default") + [Extend](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.Extend.html "trait core::iter::traits::collect::Extend")<B>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized") + [Iterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html "trait core::iter::traits::iterator::Iterator")<Item = (A, B)>

Converts an iterator of pairs into a pair of containers. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.unzip)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3511-3514)

#### fn [copied](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.copied)<'a, T>(self) -> [Copied](https://doc.rust-lang.org/1.97.1/core/iter/adapters/copied/struct.Copied.html "struct core::iter::adapters::copied::Copied")<Self, T>

where T: [Copy](https://doc.rust-lang.org/1.97.1/core/marker/trait.Copy.html "trait core::marker::Copy") + 'a, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized") + [Iterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html "trait core::iter::traits::iterator::Iterator")<Item = &'a T>

Creates an iterator which copies all of its elements. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.copied)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3559-3562)

#### fn [cloned](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.cloned)<'a, T>(self) -> [Cloned](https://doc.rust-lang.org/1.97.1/core/iter/adapters/cloned/struct.Cloned.html "struct core::iter::adapters::cloned::Cloned")<Self, T>

where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone") + 'a, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized") + [Iterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html "trait core::iter::traits::iterator::Iterator")<Item = &'a T>

Creates an iterator which clones all of its elements. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.cloned)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3633-3635)

#### fn [array_chunks](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.array_chunks)<const N: [usize](https://doc.rust-lang.org/1.97.1/std/primitive.usize.html)>(self) -> [ArrayChunks](https://doc.rust-lang.org/1.97.1/core/iter/adapters/array_chunks/struct.ArrayChunks.html "struct core::iter::adapters::array_chunks::ArrayChunks")<Self, N>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

🔬 This is a nightly-only experimental API. (`iter_array_chunks`)

Returns an iterator over `N` elements of the iterator at a time. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.array_chunks)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3669-3672)

#### fn [sum](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.sum)(self) -> S

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), S: [Sum](https://doc.rust-lang.org/1.97.1/core/iter/traits/accum/trait.Sum.html "trait core::iter::traits::accum::Sum")<Item>

Sums the elements of an iterator. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.sum)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3701-3704)

#### fn [product](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.product)(self) -> P

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), P: [Product](https://doc.rust-lang.org/1.97.1/core/iter/traits/accum/trait.Product.html "trait core::iter::traits::accum::Product")<Item>

Iterates over the entire iterator, multiplying all the elements. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.product)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3751-3755)

#### fn [cmp_by](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.cmp_by)(self, other: I, cmp: F) -> [Ordering](https://doc.rust-lang.org/1.97.1/core/cmp/enum.Ordering.html "enum core::cmp::Ordering")

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"), I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")) -> [Ordering](https://doc.rust-lang.org/1.97.1/core/cmp/enum.Ordering.html "enum core::cmp::Ordering")

🔬 This is a nightly-only experimental API. (`iter_order_by`)

Lexicographically compares the elements of this iterator with those of another. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.cmp_by)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3808-3812)

#### fn [partial_cmp](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.partial_cmp)(self, other: I) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[Ordering](https://doc.rust-lang.org/1.97.1/core/cmp/enum.Ordering.html "enum core::cmp::Ordering")>

where I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"): [PartialOrd](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialOrd.html "trait core::cmp::PartialOrd")<I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Lexicographically compares the PartialOrd elements of this iterator with those of another. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.partial_cmp)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3845-3849)

#### fn [partial_cmp_by](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.partial_cmp_by)(self, other: I, partial_cmp: F) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[Ordering](https://doc.rust-lang.org/1.97.1/core/cmp/enum.Ordering.html "enum core::cmp::Ordering")>

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"), I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[Ordering](https://doc.rust-lang.org/1.97.1/core/cmp/enum.Ordering.html "enum core::cmp::Ordering")>

🔬 This is a nightly-only experimental API. (`iter_order_by`)

Lexicographically compares the elements of this iterator with those of another using a comparison function. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.partial_cmp_by)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3879-3883)

#### fn [eq](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.eq)(self, other: I) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"): [PartialEq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html "trait core::cmp::PartialEq")<I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Determines if the elements of this iterator are equal to those of another. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.eq)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3903-3907)

#### fn [eq_by](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.eq_by)(self, other: I, eq: F) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"), I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

🔬 This is a nightly-only experimental API. (`iter_order_by`)

Determines if the elements of this iterator are equal to those of another using an equality function. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.eq_by)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3933-3937)

#### fn [ne](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.ne)(self, other: I) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"): [PartialEq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html "trait core::cmp::PartialEq")<I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Determines if the elements of this iterator are not equal to those of another. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.ne)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3955-3959)

#### fn [lt](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.lt)(self, other: I) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"): [PartialOrd](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialOrd.html "trait core::cmp::PartialOrd")<I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Determines if the elements of this iterator are lexicographically less than those of another. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.lt)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3977-3981)

#### fn [le](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.le)(self, other: I) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"): [PartialOrd](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialOrd.html "trait core::cmp::PartialOrd")<I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Determines if the elements of this iterator are lexicographically less or equal to those of another. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.le)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#3999-4003)

#### fn [gt](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.gt)(self, other: I) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"): [PartialOrd](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialOrd.html "trait core::cmp::PartialOrd")<I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Determines if the elements of this iterator are lexicographically greater than those of another. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.gt)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#4021-4025)

#### fn [ge](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.ge)(self, other: I) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"), Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"): [PartialOrd](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialOrd.html "trait core::cmp::PartialOrd")<I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item "type core::iter::traits::collect::IntoIterator::Item")>, Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

Determines if the elements of this iterator are lexicographically greater than or equal to those of another. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.ge)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#4078-4081)

#### fn [is_sorted_by](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.is_sorted_by)(self, compare: F) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(&Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item"), &Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Checks if the elements of this iterator are sorted using the given comparator function. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.is_sorted_by)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/iterator.rs.html#4123-4127)

#### fn [is_sorted_by_key](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.is_sorted_by_key)(self, f: F) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

where Self: [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), F: [FnMut](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnMut.html "trait core::ops::function::FnMut")(Self::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")) -> K, K: [PartialOrd](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialOrd.html "trait core::cmp::PartialOrd")

Checks if the elements of this iterator are sorted using the given key extraction function. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#method.is_sorted_by_key)

## Auto Trait Implementations

- impl<'a> [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'a>
- impl<'a> [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'a>
- impl<'a> [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'a>
- impl<'a> [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'a>
- impl<'a> [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'a>
- impl<'a> [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'a>
- impl<'a> [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [TagIter](struct.TagIter.html "struct markex::tag::TagIter")<'a>

## Blanket Implementations

- [Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#141)

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

where T: 'static + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#142)

#### fn [type_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")

Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#212)

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#214)

#### fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> &T

Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#221)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#222)

#### fn [borrow_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> &mut T

Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#786)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#789)

#### fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

Returns the argument unchanged.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#768-770)

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<T>

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#778)

#### fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

Calls `U::from(self)`. [Read more](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/collect.rs.html#317)

### impl [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator") for I

where I: [Iterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html "trait core::iter::traits::iterator::Iterator")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/collect.rs.html#318)

#### type [Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item) = I::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/iterator/trait.Iterator.html#associatedtype.Item "type core::iter::traits::iterator::Iterator::Item")

The type of the elements being iterated over.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/collect.rs.html#319)

#### type [IntoIter](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.IntoIter) = I

Which kind of iterator are we turning this into?

- [Source](https://doc.rust-lang.org/1.97.1/src/core/iter/traits/collect.rs.html#322)

#### fn [into_iter](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#tymethod.into_iter)(self) -> I

Creates an iterator from a value. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#tymethod.into_iter)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#828-830)

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")<T>

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#832)

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")

The type returned in the event of a conversion error.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#835)

#### fn [try_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<T, <T as [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")<U>>::[Error]>

Performs the conversion.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#812-814)

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")<T>

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#816)

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = <U as [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")<T>>::[Error]

The type returned in the event of a conversion error.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#819)

#### fn [try_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<U, <U as [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")<T>>::[Error]>

Performs the conversion.
