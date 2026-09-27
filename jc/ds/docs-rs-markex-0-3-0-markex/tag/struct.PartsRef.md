# `PartsRef` in `markex::tag`

```rust
pub struct PartsRef<'a> {
    /* private fields */
}
```

`PartsRef` contains the results of extracting data and parts from input as references.

## Methods

### `parts`

```rust
pub fn parts(&self) -> &Vec<PartRef<'a>>
```

Returns a reference to the parts.

### `into_parts`

```rust
pub fn into_parts(self) -> Vec<PartRef<'a>>
```

Consumes `PartsRef` and returns its parts.

### `tag_names`

```rust
pub fn tag_names(&self) -> Vec<&str>
```

Returns the unique tag names found in the parts.

### `iter`

```rust
pub fn iter(&self) -> std::slice::Iter<'_, PartRef<'a>>
```

Returns an iterator over the parts.

### `tag_elems`

```rust
pub fn tag_elems(&self) -> Vec<&TagElemRef<'a>>
```

Returns references to all `TagElemRef` items in the parsed data.

### `texts`

```rust
pub fn texts(&self) -> Vec<&'a str>
```

Returns all text strings in the parsed data.

## Trait Implementations

### `Debug`

```rust
impl<'a> Debug for PartsRef<'a> {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the given formatter.

### `Default`

```rust
impl<'a> Default for PartsRef<'a> {
    fn default() -> PartsRef<'a>;
}
```

Returns the default value for `PartsRef`.

### `From<PartsRef<'a>> for Vec<PartRef<'a>>`

```rust
impl<'a> From<PartsRef<'a>> for Vec<PartRef<'a>> {
    fn from(val: PartsRef<'a>) -> Self;
}
```

Converts `PartsRef` into its vector of parts.

### `IntoIterator for PartsRef<'a>`

```rust
impl<'a> IntoIterator for PartsRef<'a> {
    type Item = PartRef<'a>;
    type IntoIter = std::vec::IntoIter<PartRef<'a>>;

    fn into_iter(self) -> Self::IntoIter;
}
```

### `IntoIterator for &PartsRef<'a>`

```rust
impl<'a, 'b> IntoIterator for &'b PartsRef<'a> {
    type Item = &'b PartRef<'a>;
    type IntoIter = std::slice::Iter<'b, PartRef<'a>>;

    fn into_iter(self) -> Self::IntoIter;
}
```

### `PartialEq`

```rust
impl<'a> PartialEq for PartsRef<'a> {
    fn eq(&self, other: &Self) -> bool;
    fn ne(&self, other: &Self) -> bool;
}
```

Compares `PartsRef` values for equality or inequality.

### `StructuralPartialEq`

`PartsRef<'a>` implements `StructuralPartialEq`.

## Auto Trait Implementations

`PartsRef<'a>` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

`PartsRef<'a>` receives the following blanket implementations where their trait bounds are satisfied:

- `Any` for types that are `'static` and `Sized`; provides `type_id(&self) -> TypeId`.
- `Borrow<T>` for `T: ?Sized`; provides `borrow(&self) -> &T`.
- `BorrowMut<T>` for `T: ?Sized`; provides `borrow_mut(&mut self) -> &mut T`.
- `From<T> for T`; provides `from(t: T) -> T`.
- `Into<U>` where `U: From<T>`; provides `into(self) -> U`.
- `TryFrom<U>` where `U: Into<T>`; uses `Infallible` as its error type and provides `try_from(value: U) -> Result<T, Infallible>`.
- `TryInto<U>` where `U: TryFrom<T>`; uses `U::Error` as its error type and provides `try_into(self) -> Result<U, U::Error>`.
