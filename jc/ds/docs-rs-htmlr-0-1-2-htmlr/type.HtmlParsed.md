# HtmlParsed

[In crate htmlr](index.html)

## Type Alias

[Source](../src/htmlr/html_content.rs.html#6)

```text
pub type HtmlParsed = scraper::Html;
```

Expand description

A type alias for `scraper::Html`, the parsed document tree.

## Aliased Type

```text
pub struct HtmlParsed {
    pub errors: Vec<Cow<'static, str>>,
    pub quirks_mode: QuirksMode,
    pub tree: Tree<Node>,
}
```

## Fields

- `errors: Vec<Cow<'static, str>>` — Parse errors.
- `quirks_mode: QuirksMode` — The quirks mode.
- `tree: Tree<Node>` — The node tree.
