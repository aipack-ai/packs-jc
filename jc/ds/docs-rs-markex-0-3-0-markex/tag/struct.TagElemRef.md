# `TagElemRef`

`TagElemRef` is a borrowed tag element type in `markex::tag` (crate version 0.3.0). It represents text identified by start and end tags, potentially including attributes in the opening tag.

Its string slices borrow from the original input provided to the `TagElemRefIterator`.

## Definition

```rust
pub struct TagElemRef<'a> {
    pub tag_name: &'a str,
    pub attrs: Option<HashMap<&'a str, &'a str>>,
    pub content: &'a str,
    pub auto_closed: bool,
    pub start_idx: usize,
    pub end_idx: usize,
}
```

## Fields

- `tag_name: &'a str` — The tag name, such as `"SOME_MARKER"`.
- `attrs: Option<HashMap<&'a str, &'a str>>` — An optional map of attributes.
- `content: &'a str` — The content between the opening and closing tags.
- `auto_closed: bool` — Whether the parser synthesized the closing boundary.
- `start_idx: usize` — The byte index of the opening `<` in the original string.
- `end_idx: usize` — The byte index of the closing `>` of the end tag.

## Trait Implementations

### `Debug`

```rust
impl<'a> Debug for TagElemRef<'a> {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}
```

Formats the value using the supplied formatter.

### `From<TagElemRef<'_>> for TagElem`

```rust
impl From<TagElemRef<'_>> for TagElem {
    fn from(tag_ref: TagElemRef<'_>) -> Self;
}
```

Converts a borrowed tag element into a `TagElem`.

### `PartialEq`

```rust
impl<'a> PartialEq for TagElemRef<'a> {
    fn eq(&self, other: &Self) -> bool;
    fn ne(&self, other: &Self) -> bool;
}
```

Supports equality and inequality comparisons.

### `StructuralPartialEq`

`TagElemRef<'a>` implements `StructuralPartialEq`.

## Auto Trait Implementations

`TagElemRef<'a>` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

`TagElemRef<'a>` receives the following standard blanket implementations where their trait bounds are satisfied:

- `Any` for `'static` types, with `fn type_id(&self) -> TypeId`.
- `Borrow<T>`, with `fn borrow(&self) -> &T`.
- `BorrowMut<T>`, with `fn borrow_mut(&mut self) -> &mut T`.
- `From<T> for T`, with `fn from(t: T) -> T`.
- `Into<U>`, with `fn into(self) -> U`, where `U: From<Self>`.
- `TryFrom<U>`, with `type Error = Infallible` and `fn try_from(value: U) -> Result<Self, Self::Error>`, where `U: Into<Self>`.
- `TryInto<U>`, with `type Error = <U as TryFrom<Self>>::Error` and `fn try_into(self) -> Result<U, Self::Error>`, where `U: TryFrom<Self>`.
