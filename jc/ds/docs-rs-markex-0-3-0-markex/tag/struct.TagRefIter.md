# `TagRefIter`

`TagRefIter` is an iterator in `markex::tag` that searches a string slice for configured tags and yields the text fragments and tag elements it finds.

## Definition

```rust
pub struct TagRefIter<'a> {
    /* private fields */
}
```

## Constructor

```rust
pub fn new(
    input: &'a str,
    tag_names: &[&str],
    options: impl Into<TagOptions>,
) -> Self
```

Creates an iterator for the given input and tag names.

- `input`: The string slice to search.
- `tag_names`: Names of the tags to search for, such as `["FILE", "DATA"]`.
- `options`: Parser configuration convertible into `TagOptions`.

## Iterator implementation

`TagRefIter<'a>` implements `Iterator` with the following associated type and method:

```rust
type Item = PartRef<'a>;

fn next(&mut self) -> Option<Self::Item>;
```

Each call advances the iterator and returns the next `PartRef`, or `None` when there are no more parts.

## Other traits

`TagRefIter<'a>` also implements these auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

As an iterator, it also supports the standard `Iterator` methods and blanket implementations provided by Rust.
