# `TagIter` in `markex::tag`

```rust
pub struct TagIter<'a> {
    /* private fields */
}
```

An iterator that yields owned [`Part`](enum.Part.html) values (`Text` or `TagElem`) found in input text for specified tag names. It consumes referenced elements from `TagRefIter` and converts them to owned values.

## Constructors

### `new`

```rust
pub fn new(
    input: &'a str,
    tag_names: &[&'a str],
    options: impl Into<TagOptions>,
) -> Self
```

Creates a `TagIter` that searches `input` for the provided tag names.

- `input`: Text to search.
- `tag_names`: Tag names to search for, such as `["FILE", "DATA"]`.
- `options`: Parser configuration convertible into `TagOptions`.

### `new_single_tag`

```rust
pub fn new_single_tag(
    input: &'a str,
    tag_name: &'a str,
    options: impl Into<TagOptions>,
) -> Self
```

Creates a `TagIter` for a single tag name. This is a convenience wrapper around `TagIter::new`.

- `input`: Text to search.
- `tag_name`: Tag name to search for, such as `"FILE"`.
- `options`: Parser configuration convertible into `TagOptions`.

## Trait Implementations

### `Iterator`

```rust
impl Iterator for TagIter<'_> {
    type Item = Part;

    fn next(&mut self) -> Option<Self::Item>;
}
```

`next` advances the iterator and returns the next `Part`, or `None` when no further values are available.

## Auto Traits

`TagIter<'a>` implements:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

`TagIter` receives the standard blanket implementations available to applicable types, including `Any`, `Borrow`, `BorrowMut`, `From`, `Into`, `IntoIterator`, `TryFrom`, and `TryInto`.
