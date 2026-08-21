# Mapping in `yaml_serde::value`

## `yaml_serde` 0.10.7

## Struct `Mapping`

```rust
pub struct Mapping { /* private fields */ }
```

A YAML mapping in which the keys and values are both [`yaml_serde::Value`](../enum.Value.html).

## Associated functions

### `new`

```rust
pub fn new() -> Self
```

Creates an empty YAML map.

### `with_capacity`

```rust
pub fn with_capacity(capacity: usize) -> Self
```

Creates an empty YAML map with the given initial capacity.

## Methods

### `reserve`

```rust
pub fn reserve(&mut self, additional: usize)
```

Reserves capacity for at least `additional` more elements to be inserted into the map. The map may reserve more space to avoid frequent allocations.

#### Panics

Panics if the new allocation size overflows `usize`.

### `shrink_to_fit`

```rust
pub fn shrink_to_fit(&mut self)
```

Shrinks the capacity of the map as much as possible while maintaining its internal rules and resize policy.

### `insert`

```rust
pub fn insert(&mut self, k: Value, v: Value) -> Option<Value>
```

Inserts a key-value pair into the map. If the key already exists, the old value is returned.

### `contains_key`

```rust
pub fn contains_key<I>(&self, index: I) -> bool
where
    I: Index,
```

Checks whether the map contains the given key.

### `get`

```rust
pub fn get<I>(&self, index: I) -> Option<&Value>
where
    I: Index,
```

Returns the value corresponding to the key in the map.

### `get_mut`

```rust
pub fn get_mut<I>(&mut self, index: I) -> Option<&mut Value>
where
    I: Index,
```

Returns a mutable reference to the value corresponding to the key.

### `entry`

```rust
pub fn entry(&mut self, k: Value) -> Entry<'_>
```

Gets the given key’s corresponding entry in the map for insertion or in-place manipulation.

### `remove`

```rust
pub fn remove<I>(&mut self, index: I) -> Option<Value>
where
    I: Index,
```

Removes and returns the value corresponding to the key from the map.

This is equivalent to [`.swap_remove(index)`](../struct.Mapping.html#method.swap_remove), replacing this entry’s position with the last element. To preserve the relative order of the keys, use [`.shift_remove(key)`](../struct.Mapping.html#method.shift_remove) instead.

### `remove_entry`

```rust
pub fn remove_entry<I>(&mut self, index: I) -> Option<(Value, Value)>
where
    I: Index,
```

Removes and returns the key-value pair.

This is equivalent to [`.swap_remove_entry(index)`](../struct.Mapping.html#method.swap_remove_entry), replacing this entry’s position with the last element. To preserve the relative order of the keys, use [`.shift_remove_entry(key)`](../struct.Mapping.html#method.shift_remove_entry) instead.

### `swap_remove`

```rust
pub fn swap_remove<I>(&mut self, index: I) -> Option<Value>
where
    I: Index,
```

Removes and returns the value corresponding to the key from the map.

Like [`Vec::swap_remove`](https://doc.rust-lang.org/nightly/alloc/vec/struct.Vec.html#method.swap_remove), the entry is removed by swapping it with the last element and popping it off. This changes the position of the element that was last in the map.

### `swap_remove_entry`

```rust
pub fn swap_remove_entry<I>(&mut self, index: I) -> Option<(Value, Value)>
where
    I: Index,
```

Removes and returns the key-value pair.

Like [`Vec::swap_remove`](https://doc.rust-lang.org/nightly/alloc/vec/struct.Vec.html#method.swap_remove), the entry is removed by swapping it with the last element and popping it off. This changes the position of the element that was last in the map.

### `shift_remove`

```rust
pub fn shift_remove<I>(&mut self, index: I) -> Option<Value>
where
    I: Index,
```

Removes and returns the value corresponding to the key from the map.

Like [`Vec::remove`](https://doc.rust-lang.org/nightly/alloc/vec/struct.Vec.html#method.remove), the entry is removed by shifting all following elements and preserving their relative order. This changes the indices of those elements.

### `shift_remove_entry`

```rust
pub fn shift_remove_entry<I>(&mut self, index: I) -> Option<(Value, Value)>
where
    I: Index,
```

Removes and returns the key-value pair.

Like [`Vec::remove`](https://doc.rust-lang.org/nightly/alloc/vec/struct.Vec.html#method.remove), the entry is removed by shifting all following elements and preserving their relative order. This changes the indices of those elements.

### `retain`

```rust
pub fn retain<F>(&mut self, keep: F)
where
    F: FnMut(&Value, &mut Value) -> bool,
```

Scans through each key-value pair in the map and keeps those for which the `keep` closure returns `true`.

### `capacity`

```rust
pub fn capacity(&self) -> usize
```

Returns the maximum number of key-value pairs the map can hold without reallocating.

### `len`

```rust
pub fn len(&self) -> usize
```

Returns the number of key-value pairs in the map.

### `is_empty`

```rust
pub fn is_empty(&self) -> bool
```

Returns whether the map is currently empty.

### `clear`

```rust
pub fn clear(&mut self)
```

Clears the map of all key-value pairs.

### `iter`

```rust
pub fn iter(&self) -> Iter<'_>
```

Returns a double-ended iterator visiting all key-value pairs in insertion order.

The iterator item type is `(&'a Value, &'a Value)`.

### `iter_mut`

```rust
pub fn iter_mut(&mut self) -> IterMut<'_>
```

Returns a double-ended iterator visiting all key-value pairs in insertion order.

The iterator item type is `(&'a Value, &'a mut Value)`.

### `keys`

```rust
pub fn keys(&self) -> Keys<'_>
```

Returns an iterator over the keys of the map.

### `into_keys`

```rust
pub fn into_keys(self) -> IntoKeys
```

Returns an owning iterator over the keys of the map.

### `values`

```rust
pub fn values(&self) -> Values<'_>
```

Returns an iterator over the values of the map.

### `values_mut`

```rust
pub fn values_mut(&mut self) -> ValuesMut<'_>
```

Returns an iterator over mutable references to the values of the map.

### `into_values`

```rust
pub fn into_values(self) -> IntoValues
```

Returns an owning iterator over the values of the map.

## Trait implementations

### `Clone`

```rust
impl Clone for Mapping
```

Methods:

```rust
fn clone(&self) -> Mapping
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
impl Debug for Mapping
```

Method:

```rust
fn fmt(&self, formatter: &mut Formatter<'_>) -> Result
```

### `Default`

```rust
impl Default for Mapping
```

Method:

```rust
fn default() -> Mapping
```

### `Deserialize`

```rust
impl<'de> Deserialize<'de> for Mapping
```

Method:

```rust
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
```

Methods:

```rust
fn extend<I>(&mut self, iter: I)
where
    I: IntoIterator<Item = (Value, Value)>;

fn extend_one(&mut self, item: (Value, Value));

fn extend_reserve(&mut self, additional: usize);
```

`extend_one` and `extend_reserve` are nightly-only experimental APIs.

### `From<Mapping> for Value`

```rust
impl From<Mapping> for Value
```

Method:

```rust
fn from(f: Mapping) -> Value
```

Converts a mapping into a `Value`.

Example:

```rust
use yaml_serde::{Mapping, Value};

let mut map = Mapping::new();
map.insert("Lorem".into(), "ipsum".into());

let value: Value = map.into();
```

### `FromIterator`

```rust
impl FromIterator<(Value, Value)> for Mapping
```

Method:

```rust
fn from_iter<I>(iter: I) -> Mapping
where
    I: IntoIterator<Item = (Value, Value)>,
```

Creates a mapping from an iterator of key-value pairs.

### `Hash`

```rust
impl Hash for Mapping
```

Methods:

```rust
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
impl<I> Index<I> for Mapping
where
    I: Index,
```

Associated type:

```rust
type Output = Value;
```

Method:

```rust
fn index(&self, index: I) -> &Value
```

### `IndexMut`

```rust
impl<I> IndexMut<I> for Mapping
where
    I: Index,
```

Method:

```rust
fn index_mut(&mut self, index: I) -> &mut Value
```

### `IntoIterator for &Mapping`

```rust
impl<'a> IntoIterator for &'a Mapping
```

Associated types:

```rust
type Item = (&'a Value, &'a Value);
type IntoIter = Iter<'a>;
```

Method:

```rust
fn into_iter(self) -> Iter<'a>
```

### `IntoIterator for &mut Mapping`

```rust
impl<'a> IntoIterator for &'a mut Mapping
```

Associated types:

```rust
type Item = (&'a Value, &'a mut Value);
type IntoIter = IterMut<'a>;
```

Method:

```rust
fn into_iter(self) -> IterMut<'a>
```

### `IntoIterator for Mapping`

```rust
impl IntoIterator for Mapping
```

Associated types:

```rust
type Item = (Value, Value);
type IntoIter = IntoIter;
```

Method:

```rust
fn into_iter(self) -> IntoIter
```

### `PartialEq`

```rust
impl PartialEq for Mapping
```

Methods:

```rust
fn eq(&self, other: &Mapping) -> bool
fn ne(&self, other: &Mapping) -> bool
```

### `PartialOrd`

```rust
impl PartialOrd for Mapping
```

Methods:

```rust
fn partial_cmp(&self, other: &Self) -> Option<Ordering>
fn lt(&self, other: &Self) -> bool
fn le(&self, other: &Self) -> bool
fn gt(&self, other: &Self) -> bool
fn ge(&self, other: &Self) -> bool
```

### `Serialize`

```rust
impl Serialize for Mapping
```

Method:

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer,
```

### `StructuralPartialEq`

```rust
impl StructuralPartialEq for Mapping
```

## Auto trait implementations

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
```

Method:

```rust
fn type_id(&self) -> TypeId
```

### `Borrow`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
```

Method:

```rust
fn borrow(&self) -> &T
```

### `BorrowMut`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
```

Method:

```rust
fn borrow_mut(&mut self) -> &mut T
```

### `CloneToUninit`

```rust
impl<T> CloneToUninit for T
where
    T: Clone,
```

Method:

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
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
```

Method:

```rust
fn equivalent(&self, key: &K) -> bool
```

This implementation is provided by both `hashbrown::Equivalent` and `equivalent::Equivalent`.

### `From`

```rust
impl<T> From<T> for T
```

Method:

```rust
fn from(t: T) -> T
```

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
```

Method:

```rust
fn into(self) -> U
```

### `ToOwned`

```rust
impl<T> ToOwned for T
where
    T: Clone,
```

Associated type:

```rust
type Owned = T;
```

Methods:

```rust
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
```

Associated type:

```rust
type Error = Infallible;
```

Method:

```rust
fn try_from(value: U) -> Result<T, Infallible>
```

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
```

Associated type:

```rust
type Error = <U as TryFrom<T>>::Error;
```

Method:

```rust
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>
```
