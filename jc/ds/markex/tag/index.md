# Module tag

- [Tag extraction](#tag-extraction)
  - [Extracting elements](#extracting-elements)
  - [Custom fences](#custom-fences)
  - [Options](#options)
  - [Auto-close recovery](#auto-close-recovery)
  - [Borrowed results](#borrowed-results)
  - [Streaming iterators](#streaming-iterators)
- [Structs](#structs)
- [Enums](#enums)
- [Constants](#constants)
- [Functions](#functions)

## Tag extraction

This module extracts configured paired and self-closing tags from an input string. It is intentionally non-validating: it recognizes requested structures without attempting to parse or validate an entire markup document.

Use [`extract`](fn.extract.html) with [`TagOptions`](struct.TagOptions.html) for XML-compatible tags and extensible parser configuration. 

### Extracting elements

```rust
use markex::tag::{self, Part};
let input = "Start contents end";
let parts = tag::extract(input, &["FILE"], TagOptions::default().with_capture_text(true));
assert!(matches!(parts.parts()[0], Part::Text(_)));
assert_eq!(parts.tag_elems()[0].content, "contents");
```

[`TagOptions::with_capture_text`](struct.TagOptions.html#method.with_capture_text) determines whether unmatched spans are returned as text parts. When enabled, result ordering matches the source input. 

Owned extraction returns [`Parts`](struct.Parts.html), containing [`Part::Text`](enum.Part.html#variant.Text) and [`Part::TagElem`](enum.Part.html#variant.TagElem) values. A [`TagElem`](struct.TagElem.html) owns its name, attributes, and content. 

### Custom fences

A [`TagFence`](struct.TagFence.html) describes a tag syntax with: 

- `open_delim`, the delimiter starting an opening or closing tag.
- `close_delim`, the delimiter ending an opening or closing tag.
- `close_delim_alts`, optional fallback delimiters accepted in addition to `close_delim`.
- `closing_tag_prefix`, the prefix between `open_delim` and a closing tag name.
- `name`, a descriptive static name for the fence.

[`FENCE_XML`](constant.FENCE_XML.html) is the default used by [`extract`](fn.extract.html) and [`extract_refs`](fn.extract_refs.html). [`FENCE_BRACKETS`](constant.FENCE_BRACKETS.html) recognizes triple-square-bracket tags: 

```rust
use markex::tag::{self, FENCE_BRACKETS};
let input = r#"[[[BIG_CONTENT path="/some/path.txt"]]]
... some big content
[[[/BIG_CONTENT]]]"#;
let parts = tag::extract(input, &["BIG_CONTENT"], TagOptions::default().with_fence(FENCE_BRACKETS));
assert_eq!(parts.tag_elems()[0].content, "\n... some big content\n");
```

Place bracket tags on separate lines from large payloads. This makes the structured boundary clear and can help LLMs generate tag output without confusing the tag syntax with content.

`FENCE_BRACKETS` also accepts `]]` as a fallback closing delimiter, including paired and self-closing tags. For example, the opening and closing tags in the preceding multiline block may use `[[[BIG_CONTENT]]` and `[[[/BIG_CONTENT]]`. If its canonical `]]]` delimiter and `]]` alternate both begin at the same location, extraction uses the longer canonical delimiter.

Custom fences may configure the same behavior with `close_delim_alts`. The canonical delimiter is always considered first:

```rust
use markex::tag::{self, TagFence};
let fence = TagFence {
    name: "mustache",
    open_delim: "{{",
    close_delim: "}}",
    close_delim_alts: Some(&["}"]),
    closing_tag_prefix: "/",
};
let parts = tag::extract("{{DATA}payload{{/DATA}", &["DATA"], TagOptions::default().with_fence(fence));
assert_eq!(parts.tag_elems()[0].content, "payload");
```

Use [`extract_refs`](fn.extract_refs.html) with the same options for zero-copy results. 

### Options

[`TagOptions`](struct.TagOptions.html) configures optional extraction behavior. Its default value preserves XML-compatible parsing, while [`TagOptions::with_fence`](struct.TagOptions.html#method.with_fence) selects a custom [`TagFence`](struct.TagFence.html). [`TagOptions::with_auto_close`](struct.TagOptions.html#method.with_auto_close) opts into recovery when a configured element omits its closing tag before another valid configured opening tag. 

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

[`extract_refs`](fn.extract_refs.html) returns [`PartsRef`](struct.PartsRef.html). Its [`PartRef`](enum.PartRef.html) values and [`TagElemRef`](struct.TagElemRef.html) fields borrow from the original input, avoiding allocation for the extracted text and attribute strings. 

The input must outlive the returned `PartsRef`.

### Streaming iterators

`TagIter` yields owned [`Part`](enum.Part.html) values, while [`TagRefIter`](struct.TagRefIter.html) yields borrowed [`PartRef`](enum.PartRef.html) values. Both provide `new`, `new_with_fence`, and `new_with_options` constructors for incremental processing. [`TagIter`](struct.TagIter.html) also provides `new_single_tag` for single-tag owned extraction. Pass [`TagOptions::with_auto_close`](struct.TagOptions.html#method.with_auto_close) through either iterator’s `new_with_options` constructor to enable streaming auto-close recovery. 

## Structs

- [`Parts`](struct.Parts.html) - Result of extracting data and parts from input.
- [`PartsRef`](struct.PartsRef.html) - Result of extracting data and parts from input as references.
- [`TagElem`](struct.TagElem.html) - Represents a block defined by start and end tags, like content.
- [`TagElemRef`](struct.TagElemRef.html) - Represents a segment of text identified by start and end tags, potentially including parameters in the start marker. 
- [`TagFence`](struct.TagFence.html) - A delimiter configuration used to parse tagged elements.
- [`TagIter`](struct.TagIter.html) - Iterator that yields owned `Part` instances (`Text` or `TagElem`), found within a text based on specific tag names. 
- [`TagOptions`](struct.TagOptions.html) - Configures optional behavior for tag extraction APIs.
- [`TagPattern`](struct.TagPattern.html) - Precomputed tag patterns derived from the tag name for efficient searching.
- [`TagRefIter`](struct.TagRefIter.html) - An iterator that finds and extracts `PartRef` sections from a string slice.

## Enums

- [`Part`](enum.Part.html) - Represents a part of parsed content, either plain text or a tag element.
- [`PartRef`](enum.PartRef.html) - Represents a part of parsed content as a reference, either plain text or a tag element reference.

## Constants

- [`FENCE_BRACKETS`](constant.FENCE_BRACKETS.html) - A triple-square-bracket fence for clearly separating structured payloads.
- [`FENCE_XML`](constant.FENCE_XML.html) - The XML-compatible fence used by the existing extraction APIs.

## Functions

- `pub fn extract(input: &str, tag_names: &[&str], options: TagOptions) -> Parts` - Parses the input string for the specified tag names.
- `pub fn extract_refs(input: &str, tag_names: &[&str], options: TagOptions) -> PartsRef` - Parses the input string for the specified tag names and returns references.
