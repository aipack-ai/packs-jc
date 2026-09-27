# `TagPattern`

`TagPattern` is part of [`markex::tag`](index.html) in `markex` 0.3.0.

Precomputed tag patterns derived from a tag name for efficient searching.

## Definition

```rust
pub struct TagPattern {
    pub name: String,
    pub start_tag_prefix: String,
    pub end_tags: Vec<String>,
    pub close_delims: Vec<&'static str>,
    pub closing_tag_prefix: String,
    pub self_closing_suffix: String,
}
```

## Fields

- `name: String` — The original tag name.
- `start_tag_prefix: String` — The opening tag prefix, used to find the start of the tag.
- `end_tags: Vec<String>` — The closing tag structure, used to find the end of the element.
- `close_delims: Vec<&'static str>` — The delimiters that end opening and closing tags.
- `closing_tag_prefix: String` — The prefix between an opening delimiter and a closing tag name.
- `self_closing_suffix: String` — The suffix that identifies a self-closing opening tag.

## Associated Functions

### `new`

Constructs a `TagPattern` from a tag name and a [`TagFence`](struct.TagFence.html).

```rust
pub fn new(tag_name: &str, fence: TagFence) -> Self
```

## Auto Traits

`TagPattern` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
