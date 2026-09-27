# `PartRef` in `markex::tag`

```rust
pub enum PartRef<'a> {
    Text(&'a str),
    TagElemRef(TagElemRef<'a>),
}
```

Represents a part of parsed content as a reference: either plain text or a tag element reference.

## Variants

### `Text(&'a str)`

Plain text content outside of any tag.

### `TagElemRef(TagElemRef<'a>)`

A tag element reference with its content.

## Trait Implementations

### `Debug`

Implemented for `PartRef<'a>`.

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

Formats the value using the given formatter.

### `From<PartRef<'a>> for Part`

Converts a `PartRef` into an owned `Part`.

- `fn from(part_ref: PartRef<'a>) -> Self`

### `PartialEq`

Implemented for `PartRef<'a>`.

- `fn eq(&self, other: &PartRef<'a>) -> bool`

Returns whether the values are equal.

- `fn ne(&self, other: &PartRef<'a>) -> bool`

Returns whether the values are not equal.

### `StructuralPartialEq`

Implemented for `PartRef<'a>`.

## Auto Trait Implementations

`PartRef<'a>` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The following blanket implementations apply where their stated bounds are met:

- `Any` for `T` where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `Borrow<T>` for `T` where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- `BorrowMut<T>` for `T` where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `From<T> for T`
  - `fn from(t: T) -> T`
- `Into<U> for T` where `U: From<T>`
  - `fn into(self) -> U`
- `TryFrom<U> for T` where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`
- `TryInto<U> for T` where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
