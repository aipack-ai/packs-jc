# Mapping in `yaml_serde`

## `yaml_serde` 0.10.7

## Struct `Mapping`

```rust
pub struct Mapping { /* private fields */ }
```

A YAML mapping in which both keys and values are `yaml_serde::Value`.

## Implementations

### Inherent methods

#### Constructors

```rust
pub fn new() -> Self
```

Creates an empty YAML map.

```rust
pub fn with_capacity(capacity: usize) -> Self
```

Creates an empty YAML map with the given initial capacity.

#### Capacity management

```rust
pub fn reserve(&mut self, additional: usize)
```

Reserves capacity for at least `additional` more elements. The map may reserve additional space to avoid frequent allocations.

Panics if the new allocation size overflows `usize`.

```rust
pub fn shrink_to_fit(&mut self)
```

Shrinks the map's capacity as much as possible while maintaining its internal rules.

```rust
pub fn capacity(&self) -> usize
```

Returns the maximum number of key-value pairs the map can hold without reallocating.

#### Key-value operations

```rust
pub fn insert(&mut self, k: Value, v: Value) -> Option<Value>
```

Inserts a key-value pair into the map. If the key already exists, returns the old value.

```rust
pub fn contains_key<I>(&self, index: I) -> bool
where
    I: Index,
```

Checks whether the map contains the given key.

```rust
pub fn get<I>(&self, index: I) -> Option<&Value>
where
    I: Index,
```

Returns the value corresponding to the key in the map.

```rust
pub fn get_mut<I>(&mut self, index: I) -> Option<&mut Value>
where
    I: Index,
```

Returns a mutable reference to the value corresponding to the key.

```rust
pub fn entry(&mut self, k: Value) -> Entry<'_>
```

Gets the given key's corresponding entry for insertion or in-place manipulation.

```rust
pub fn remove<I>(&mut self, index: I) -> Option<Value>
where
    I: Index,
```

Removes and returns the value corresponding to the key.

This is equivalent to `swap_remove`, replacing the removed entry's position with the last element. Use `shift_remove` when the relative order of keys must be preserved.

```rust
pub fn remove_entry<I>(&mut self, index: I) -> Option<(Value, Value)>
where
    I: Index,
```

Removes and returns the key-value pair.

This is equivalent to `swap_remove_entry`, replacing the removed entry's position with the last element. Use `shift_remove_entry` when the relative order of keys must be preserved.

```rust
pub fn swap_remove<I>(&mut self, index: I) -> Option<Value>
where
    I: Index,
```

Removes and returns the value corresponding to the key by swapping the entry with the last element and removing it. This may change the position of the last element.

```rust
pub fn swap_remove_entry<I>(&mut self, index: I) -> Option<(Value, Value)>
where
    I: Index,
```

Removes and returns the key-value pair by swapping the entry with the last element and removing it. This may change the position of the last element.

```rust
pub fn shift_remove<I>(&mut self, index: I) -> Option<Value>
where
    I: Index,
```

Removes and returns the value corresponding to the key while preserving the relative order of the remaining elements. This changes the indexes of elements after the removed entry.

```rust
pub fn shift_remove_entry<I>(&mut self, index: I) -> Option<(Value, Value)>
where
    I: Index,
```

Removes and returns the key-value pair while preserving the relative order of the remaining elements. This changes the indexes of elements after the removed entry.

```rust
pub fn retain<F>(&mut self, keep: F)
where
    F: FnMut(&Value, &mut Value) -> bool,
```

Scans through each key-value pair and keeps entries for which `keep` returns `true`.

#### Map information

```rust
pub fn len(&self) -> usize
```

Returns the number of key-value pairs in the map.

```rust
pub fn is_empty(&self) -> bool
```

Returns whether the map is empty.

```rust
pub fn clear(&mut self)
```

Clears all key-value pairs from the map.

#### Iteration

```rust
pub fn iter(&self) -> Iter<'_>
```

Returns a double-ended iterator over key-value pairs in insertion order.

The iterator item type is:

```rust
(&'a Value, &'a Value)
```

```rust
pub fn iter_mut(&mut self) -> IterMut<'_>
```

Returns a double-ended iterator over key-value pairs in insertion order.

The iterator item type is:

```rust
(&'a Value, &'a mut Value)
```

```rust
pub fn keys(&self) -> Keys<'_>
```

Returns an iterator over the map's keys.

```rust
pub fn into_keys(self) -> IntoKeys
```

Returns an owning iterator over the map's keys.

```rust
pub fn values(&self) -> Values<'_>
```

Returns an iterator over the map's values.

```rust
pub fn values_mut(&mut self) -> ValuesMut<'_>
```

Returns an iterator over mutable references to the map's values.

```rust
pub fn into_values(self) -> IntoValues
```

Returns an owning iterator over the map's values.

## Trait implementations

### `Clone`

```rust
impl Clone for Mapping

fn clone(&self) -> Mapping
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
impl Debug for Mapping

fn fmt(&self, formatter: &mut Formatter<'_>) -> Result
```

### `Default`

```rust
impl Default for Mapping

fn default() -> Mapping
```

### `Deserialize`

```rust
impl<'de> Deserialize<'de> for Mapping

fn deserialize<D>(deserializer: D) -> Result<Mapping, D::Error>
where
    D: Deserializer<'de>,
```

### `Eq`

```rust
impl Eq for Mapping
```

### `Extend`

```rust
impl Extend<(Value, Value)> for Mapping

fn extend<I>(&mut self, iter: I)
where
    I: IntoIterator<Item = (Value, Value)>;

fn extend_one(&mut self, item: (Value, Value))
fn extend_reserve(&mut self, additional: usize)
```

`extend_one` and `extend_reserve` are nightly-only experimental APIs.

### `From<Mapping> for Value`

```rust
impl From<Mapping> for Value

fn from(mapping: Mapping) -> Value
```

Converts a `Mapping` into a `Value`.

Example:

```rust
use yaml_serde::{Mapping, Value};

let mut mapping = Mapping::new();
mapping.insert("Lorem".into(), "ipsum".into());

let value: Value = mapping.into();
```

### `FromIterator`

```rust
impl FromIterator<(Value, Value)> for Mapping

fn from_iter<I>(iter: I) -> Mapping
where
    I: IntoIterator<Item = (Value, Value)>;
```

### `Hash`

```rust
impl Hash for Mapping

fn hash<H>(&self, state: &mut H)
where
    H: Hasher;

fn hash_slice<H>(data: &[Self], state: &mut H)
where
    H: Hasher,
    Self: Sized;
```

### `Index`

```rust
impl<I> std::ops::Index<I> for Mapping
where
    I: Index,
{
    type Output = Value;

    fn index(&self, index: I) -> &Value;
}
```

### `IndexMut`

```rust
impl<I> std::ops::IndexMut<I> for Mapping
where
    I: Index,
{
    fn index_mut(&mut self, index: I) -> &mut Value;
}
```

### `IntoIterator` for `&Mapping`

```rust
impl<'a> IntoIterator for &'a Mapping {
    type Item = (&'a Value, &'a Value);
    type IntoIter = Iter<'a>;

    fn into_iter(self) -> Iter<'a>;
}
```

### `IntoIterator` for `&mut Mapping`

```rust
impl<'a> IntoIterator for &'a mut Mapping {
    type Item = (&'a Value, &'a mut Value);
    type IntoIter = IterMut<'a>;

    fn into_iter(self) -> IterMut<'a>;
}
```

### `IntoIterator` for `Mapping`

```rust
impl IntoIterator for Mapping {
    type Item = (Value, Value);
    type IntoIter = IntoIter;

    fn into_iter(self) -> IntoIter;
}
```

### `PartialEq`

```rust
impl PartialEq for Mapping

fn eq(&self, other: &Mapping) -> bool
fn ne(&self, other: &Mapping) -> bool
```

### `PartialOrd`

```rust
impl PartialOrd for Mapping

fn partial_cmp(&self, other: &Mapping) -> Option<Ordering>
fn lt(&self, other: &Mapping) -> bool
fn le(&self, other: &Mapping) -> bool
fn gt(&self, other: &Mapping) -> bool
fn ge(&self, other: &Mapping) -> bool
```

### `Serialize`

```rust
impl Serialize for Mapping

fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer,
```

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for Mapping
```

## Auto trait implementations

`Mapping` implements the following auto traits:

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

### `CloneToUninit`

```rust
impl<T> CloneToUninit for T
where
    T: Clone,
{
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}
```

This is a nightly-only experimental API.

### `DeserializeOwned`

```rust
impl<T> DeserializeOwned for T
where
    T: for<'de> Deserialize<'de>,
```

### `Equivalent`

```rust
impl<Q, K> Equivalent<K> for Q
where
    Q: Eq + ?Sized,
    K: Borrow<Q> + ?Sized,
{
    fn equivalent(&self, key: &K) -> bool;
}
```

`Equivalent` is available through both the `hashbrown` and `equivalent` crates.

### `From`

```rust
impl<T> From<T> for T

fn from(value: T) -> T
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

### `ToOwned`

```rust
impl<T> ToOwned for T
where
    T: Clone,
{
    type Owned = T;

    fn to_owned(&self) -> T
    fn clone_into(&self, target: &mut T)
}
```

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Infallible>;
}
```

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>;
}
```
