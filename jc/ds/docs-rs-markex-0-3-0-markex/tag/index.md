# `markex::tag`

The `tag` module extracts configured paired and self-closing tags from an input string. It is intentionally non-validating: it recognizes requested structures without parsing or validating an entire markup document.

Use [`extract`](#functions) with [`TagOptions`](#structs) for XML-compatible tags and extensible parser configuration.

## Tag extraction

### Extracting elements

```rust
use markex::tag::{self, Part, TagOptions};

let input = "Start contents end";
let parts = tag::extract(input, &["FILE"], TagOptions::default().with_capture_text(true));

assert!(matches!(parts.parts()[0], Part::Text(_)));
assert_eq!(parts.tag_elems()[0].content, "contents");
```

[`TagOptions::with_capture_text`](#tagoptions) determines whether unmatched spans are returned as text parts. When enabled, result ordering matches the source input.

Owned extraction returns [`Parts`](#structs), containing [`Part::Text`](#enums) and [`Part::TagElem`](#enums) values. A [`TagElem`](#structs) owns its name, attributes, and content.

### Custom fences

A [`TagFence`](#structs) describes a tag syntax with:

- `open_delim`: Delimiter starting an opening or closing tag.
- `close_delim`: Delimiter ending an opening or closing tag.
- `close_delim_alts`: Optional fallback delimiters accepted in addition to `close_delim`.
- `closing_tag_prefix`: Prefix between `open_delim` and a closing tag name.
- `name`: Descriptive static name for the fence.

[`FENCE_XML`](#constants) is the default used by [`extract`](#functions) and [`extract_refs`](#functions). [`FENCE_BRACKETS`](#constants) recognizes triple-square-bracket tags:

```rust
use markex::tag::{self, FENCE_BRACKETS, TagOptions};

let input = r#"[[[BIG_CONTENT path="/some/path.txt"]]]
... some big content
[[[/BIG_CONTENT]]]"#;

let parts = tag::extract(
    input,
    &["BIG_CONTENT"],
    TagOptions::default().with_fence(FENCE_BRACKETS),
);

assert_eq!(parts.tag_elems()[0].content, "\n... some big content\n");
```

Place bracket tags on separate lines from large payloads. This makes the structured boundary clear and can help LLMs generate tag output without confusing the tag syntax with content.

`FENCE_BRACKETS` also accepts `]]` as a fallback closing delimiter, including for paired and self-closing tags. For example, opening and closing tags may use `[[[BIG_CONTENT]]` and `[[[/BIG_CONTENT]]`. If the canonical `]]]` delimiter and the `]]` alternate both begin at the same location, extraction uses the longer canonical delimiter.

Custom fences can configure the same behavior with `close_delim_alts`. The canonical delimiter is always considered first:

```rust
use markex::tag::{self, TagFence, TagOptions};

let fence = TagFence {
    name: "mustache",
    open_delim: "{{",
    close_delim: "}}",
    close_delim_alts: Some(&["}"]),
    closing_tag_prefix: "/",
};

let parts = tag::extract(
    "{{DATA}payload{{/DATA}",
    &["DATA"],
    TagOptions::default().with_fence(fence),
);

assert_eq!(parts.tag_elems()[0].content, "payload");
```

Use [`extract_refs`](#functions) with the same options for zero-copy results.

### Options

[`TagOptions`](#structs) configures optional extraction behavior. Its default preserves XML-compatible parsing, while `TagOptions::with_fence` selects a custom [`TagFence`](#structs). `TagOptions::with_auto_close` opts into recovery when a configured element omits its closing tag before another valid configured opening tag.

```rust
use markex::tag::{self, FENCE_BRACKETS, TagOptions};

let options = TagOptions::default().with_fence(FENCE_BRACKETS);
let parts = tag::extract("[[[DATA]]]content[[[/DATA]]]", &["DATA"], options);

assert_eq!(parts.tag_elems()[0].content, "content");
```

### Auto-close recovery

By default, extraction requires a matching closing tag. With `auto_close` enabled, a configured opening tag that appears before the current element’s matching close synthesizes a close for the current element. The following opening tag remains available for normal parsing, and only the synthesized element has `auto_closed: true`.

```rust
use markex::tag::{self, TagOptions};

let options = TagOptions::default().with_auto_close(true);
let parts = tag::extract("first second", &["FILE", "DATA"], options);
let elements = parts.tag_elems();

assert_eq!(elements[0].content, "first ");
assert!(elements[0].auto_closed);
assert!(!elements[1].auto_closed);
```

Auto-close applies to same-name and different-name configured openings, but does not enable nested parsing. Invalid or partial configured-tag candidates do not trigger recovery.

### Borrowed results

[`extract_refs`](#functions) returns [`PartsRef`](#structs). Its [`PartRef`](#enums) values and [`TagElemRef`](#structs) fields borrow from the original input, avoiding allocation for extracted text and attribute strings.

The input must outlive the returned `PartsRef`.

### Streaming iterators

`TagIter` yields owned [`Part`](#enums) values, while [`TagRefIter`](#structs) yields borrowed [`PartRef`](#enums) values. Both provide `new`, `new_with_fence`, and `new_with_options` constructors for incremental processing. `TagIter` also provides `new_single_tag` for single-tag owned extraction.

Pass `TagOptions::with_auto_close` through either iterator’s `new_with_options` constructor to enable streaming auto-close recovery.

## Structs

- [`Parts`](#structs): Result of extracting data and parts from input.
- [`PartsRef`](#structs): Result of extracting data and parts from input as references.
- [`TagElem`](#structs): Represents a block defined by start and end tags, such as `content`.
- [`TagElemRef`](#structs): Represents a segment of text identified by start and end tags, potentially including parameters in the start marker.
- [`TagFence`](#structs): Delimiter configuration used to parse tagged elements.
- [`TagIter`](#structs): Iterator that yields owned `Part` instances (`Text` or `TagElem`) found in input. It consumes referenced elements from `TagRefIter` and converts them to owned types.
- [`TagOptions`](#structs): Configures optional behavior for tag extraction APIs.
- [`TagPattern`](#structs): Precomputed tag patterns derived from a tag name for efficient searching.
- [`TagRefIter`](#structs): Iterator that finds and extracts `PartRef` sections from a string slice.

## Enums

- [`Part`](#enums): Represents a part of parsed content, either plain text or a tag element. Variants include `Text` and `TagElem`.
- [`PartRef`](#enums): Represents a part of parsed content as a reference, either plain text or a tag element reference.

## Constants

- [`FENCE_BRACKETS`](#constants): Triple-square-bracket fence for clearly separating structured payloads.
- [`FENCE_XML`](#constants): XML-compatible fence used by the existing extraction APIs.

## Functions

- `extract(input: &str, tag_names: &[&str], options: TagOptions) -> Parts`: Parses the input string for the specified tag names and returns owned parts.
- `extract_refs<'a>(input: &'a str, tag_names: &[&str], options: TagOptions) -> PartsRef<'a>`: Parses the input string for the specified tag names and returns borrowed parts.
