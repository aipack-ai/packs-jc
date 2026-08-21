# `yaml_serde::Deserializer`

Version `0.10.7`

`Deserializer` deserializes YAML into Rust values and supports iterating over multiple YAML documents.

## Struct Definition

```rust
pub struct Deserializer<'de> {
    /* private fields */
}
```

## Examples

### Deserializing a Single Document

```rust
use anyhow::Result;
use serde::Deserialize;
use yaml_serde::Value;

fn main() -> Result<()> {
    let input = "k: 107\n";
    let de = yaml_serde::Deserializer::from_str(input);
    let value = Value::deserialize(de)?;

    println!("{:?}", value);
    Ok(())
}
```

### Deserializing Multiple Documents

```rust
use anyhow::Result;
use serde::Deserialize;
use yaml_serde::Value;

fn main() -> Result<()> {
    let input = "---\nk: 107\n...\n---\nj: 106\n";

    for document in yaml_serde::Deserializer::from_str(input) {
        let value = Value::deserialize(document)?;
        println!("{:?}", value);
    }

    Ok(())
}
```

## Associated Functions

### `from_str`

```rust
pub fn from_str(s: &'de str) -> Self
```

Creates a YAML deserializer from a string slice.

### `from_slice`

```rust
pub fn from_slice(v: &'de [u8]) -> Self
```

Creates a YAML deserializer from a byte slice.

### `from_reader`

```rust
pub fn from_reader<R>(rdr: R) -> Self
where
    R: Read + 'de
```

Creates a YAML deserializer from an [`io::Read`](https://doc.rust-lang.org/std/io/trait.Read.html) implementation.

Reader-based deserializers do not support deserializing borrowed types such as `&str`, because `std::io::Read` only provides copying operations.

## Trait Implementations

### `serde::de::Deserializer`

```rust
impl<'de> serde::de::Deserializer<'de> for Deserializer<'de> {
    type Error = yaml_serde::Error;
}
```

All deserialization methods return:

```rust
Result<Value, yaml_serde::Error>
```

The visitor type used by the methods is constrained as follows:

```rust
V: serde::de::Visitor<'de>
```

#### Deserialization Methods

```rust
fn deserialize_any<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes any YAML value by determining its type from the input.

```rust
fn deserialize_bool<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a boolean value.

```rust
fn deserialize_i8<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_i16<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_i32<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_i64<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_i128<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes signed integer values of the specified size.

```rust
fn deserialize_u8<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_u16<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_u32<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_u64<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_u128<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes unsigned integer values of the specified size.

```rust
fn deserialize_f32<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_f64<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes floating-point values.

```rust
fn deserialize_char<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a character value.

```rust
fn deserialize_str<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a string without taking ownership of buffered data.

```rust
fn deserialize_string<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes an owned string.

```rust
fn deserialize_bytes<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_byte_buf<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes byte arrays, either borrowing or taking ownership of the buffered data.

```rust
fn deserialize_option<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes an optional value.

```rust
fn deserialize_unit<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;

fn deserialize_unit_struct<V>(
    self,
    name: &'static str,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a unit value or a named unit struct.

```rust
fn deserialize_newtype_struct<V>(
    self,
    name: &'static str,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a newtype struct.

```rust
fn deserialize_seq<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a sequence of values.

```rust
fn deserialize_tuple<V>(
    self,
    len: usize,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a tuple with a known number of values.

```rust
fn deserialize_tuple_struct<V>(
    self,
    name: &'static str,
    len: usize,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a tuple struct.

```rust
fn deserialize_map<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a map of key-value pairs.

```rust
fn deserialize_struct<V>(
    self,
    name: &'static str,
    fields: &'static [&'static str],
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a struct with the specified name and fields.

```rust
fn deserialize_enum<V>(
    self,
    name: &'static str,
    variants: &'static [&'static str],
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes an enum value.

```rust
fn deserialize_identifier<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes a struct field name or enum discriminant.

```rust
fn deserialize_ignored_any<V>(
    self,
    visitor: V,
) -> Result<Value, yaml_serde::Error>
where
    V: serde::de::Visitor<'de>;
```

Deserializes and ignores a value whose type does not matter.

```rust
fn is_human_readable(&self) -> bool
```

Returns whether deserialization should use a human-readable representation.

### `Iterator`

```rust
impl<'de> Iterator for Deserializer<'de> {
    type Item = Deserializer<'de>;

    fn next(&mut self) -> Option<Self::Item>;
}
```

Iterates over YAML documents. Each item is a deserializer for one document.

The implementation also inherits the standard methods provided by `Iterator`, including:

- `next_chunk<const N: usize>(&mut self) -> Result<[Self::Item; N], IntoIter<Self::Item, N>>`
- `size_hint(&self) -> (usize, Option<usize>)`
- `count(self) -> usize`
- `last(self) -> Option<Self::Item>`
- `advance_by(&mut self, n: usize) -> Result<(), NonZero<usize>>`
- `nth(&mut self, n: usize) -> Option<Self::Item>`
- `step_by(self, step: usize) -> StepBy<Self>`
- `chain<U>(self, other: U) -> Chain<Self, U::IntoIter>`
- `zip<U>(self, other: U) -> Zip<Self, U::IntoIter>`
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
- `fuse(self) -> Fuse<Self>`
- `inspect<F>(self, f: F) -> Inspect<Self, F>`
- `by_ref(&mut self) -> &mut Self`
- `collect<B>(self) -> B`
- `collect_into<E>(self, collection: &mut E) -> &mut E`
- `partition<B, F>(self, f: F) -> (B, B)`
- `try_fold<B, F, R>(&mut self, init: B, f: F) -> R`
- `try_for_each<F, R>(&mut self, f: F) -> R`
- `fold<B, F>(self, init: B, f: F) -> B`
- `reduce<F>(self, f: F) -> Option<Self::Item>`
- `all<F>(&mut self, f: F) -> bool`
- `any<F>(&mut self, f: F) -> bool`
- `find<P>(&mut self, predicate: P) -> Option<Self::Item>`
- `find_map<B, F>(&mut self, f: F) -> Option<B>`
- `position<P>(&mut self, predicate: P) -> Option<usize>`
- `max_by_key<B, F>(self, f: F) -> Option<Self::Item>`
- `max_by<F>(self, compare: F) -> Option<Self::Item>`
- `min_by_key<B, F>(self, f: F) -> Option<Self::Item>`
- `min_by<F>(self, compare: F) -> Option<Self::Item>`
- `unzip<A, B>(self) -> (A, B)`
- `copied<'a, T>(self) -> Copied<Self>`
- `cloned<'a, T>(self) -> Cloned<Self>`
- `sum<S>(self) -> S`
- `product<P>(self) -> P`
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
- `is_sorted_by<F>(self, compare: F) -> bool`
- `is_sorted_by_key<F, K>(self, f: F) -> bool`

## Auto Trait Implementations

For `Deserializer<'de>`:

- `!RefUnwindSafe`
- `!Send`
- `!Sync`
- `!UnwindSafe`
- `Freeze`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

`Deserializer<'de>` receives the following standard blanket implementations where their trait bounds are satisfied:

- `Any`
- `Borrow<T>`
- `BorrowMut<T>`
- `From<T>`
- `Into<U>`
- `IntoIterator`
- `TryFrom<U>`
- `TryInto<U>`

### Standard Blanket Method Signatures

```rust
fn type_id(&self) -> TypeId
fn borrow(&self) -> &T
fn borrow_mut(&mut self) -> &mut T
fn from(t: T) -> T
fn into(self) -> U
fn into_iter(self) -> I
fn try_from(value: U) -> Result<T, Infallible>
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```
