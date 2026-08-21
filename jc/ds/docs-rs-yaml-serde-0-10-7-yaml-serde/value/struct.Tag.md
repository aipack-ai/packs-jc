# `Tag` in `yaml_serde::value`

## Struct `Tag`

```rust
pub struct Tag { /* private fields */ }
```

A representation of YAML’s `!Tag` syntax, used for enums.

Refer to the example code on [`TaggedValue`](struct.TaggedValue.html) for an example of deserializing tagged values.

## Associated Functions

### `Tag::new`

```rust
pub fn new(string: impl Into<String>) -> Self
```

Creates a tag.

The leading `!` is not significant. It may be provided, but does not have to be. The following are equivalent:

```rust
use yaml_serde::value::Tag;

assert_eq!(Tag::new("!Thing"), Tag::new("Thing"));

let tag = Tag::new("Thing");
assert!(tag == "Thing");
assert!(tag == "!Thing");
assert!(tag.to_string() == "!Thing");

let tag = Tag::new("!Thing");
assert!(tag == "Thing");
assert!(tag == "!Thing");
assert!(tag.to_string() == "!Thing");
```

Such a tag serializes to `!Thing` in YAML regardless of whether `!` was included in the call to `Tag::new`.

#### Panics

Panics if `string.is_empty()`. There is no YAML syntax for an empty tag.

## Trait Implementations

### `Clone`

```rust
impl Clone for Tag {
    fn clone(&self) -> Tag;
    fn clone_from(&mut self, source: &Self);
}
```

### `Debug`

```rust
impl Debug for Tag {
    fn fmt(&self, formatter: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

### `Display`

```rust
impl Display for Tag {
    fn fmt(&self, formatter: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

### `Eq`

```rust
impl Eq for Tag {}
```

### `Hash`

```rust
impl Hash for Tag {
    fn hash<H: Hasher>(&self, hasher: &mut H);
    fn hash_slice<H: Hasher>(data: &[Self], state: &mut H)
    where
        Self: Sized;
}
```

Feeds this value into the given `Hasher`.

### `Ord`

```rust
impl Ord for Tag {
    fn cmp(&self, other: &Self) -> Ordering;
    fn max(self, other: Self) -> Self
    where
        Self: Sized;
    fn min(self, other: Self) -> Self
    where
        Self: Sized;
    fn clamp(self, min: Self, max: Self) -> Self
    where
        Self: Sized;
}
```

### `PartialEq`

```rust
impl PartialEq for Tag {
    fn eq(&self, other: &Tag) -> bool;
    fn ne(&self, other: &Tag) -> bool;
}
```

### `PartialEq<T>`

```rust
impl<T> PartialEq<T> for Tag
where
    T: ?Sized + AsRef<str>,
{
    fn eq(&self, other: &T) -> bool;
    fn ne(&self, other: &T) -> bool;
}
```

### `PartialOrd`

```rust
impl PartialOrd for Tag {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering>;
    fn lt(&self, other: &Self) -> bool;
    fn le(&self, other: &Self) -> bool;
    fn gt(&self, other: &Self) -> bool;
    fn ge(&self, other: &Self) -> bool;
}
```

## Auto Trait Implementations

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

### `Borrow<T>`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
{
    fn borrow(&self) -> &T;
}
```

### `BorrowMut<T>`

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

### `Comparable<K>`

```rust
impl<Q, K> Comparable<K> for Q
where
    Q: Ord + ?Sized,
    K: Borrow<Q> + ?Sized,
{
    fn compare(&self, key: &K) -> Ordering;
}
```

Compares `self` to `key` and returns their ordering.

### `Equivalent<K>`

```rust
impl<Q, K> Equivalent<K> for Q
where
    Q: Eq + ?Sized,
    K: Borrow<Q> + ?Sized,
{
    fn equivalent(&self, key: &K) -> bool;
}
```

Checks whether this value is equivalent to the given key.

### `From<T>`

```rust
impl<T> From<T> for T {
    fn from(t: T) -> T;
}
```

Returns the argument unchanged.

### `Into<U>`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}
```

Calls `U::from(self)`.

### `ToOwned`

```rust
impl<T> ToOwned for T
where
    T: Clone,
{
    type Owned = T;

    fn to_owned(&self) -> T;
    fn clone_into(&self, target: &mut T);
}
```

Creates owned data from borrowed data, usually by cloning.

### `ToString`

```rust
impl<T> ToString for T
where
    T: Display + ?Sized,
{
    fn to_string(&self) -> String;
}
```

Converts the given value to a `String`.

### `TryFrom<U>`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Self::Error>;
}
```

Performs the conversion.

### `TryInto<U>`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, Self::Error>;
}
```

Performs the conversion.
