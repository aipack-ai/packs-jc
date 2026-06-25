# htmlr - Rust

## Crate htmlr

### htmlr – High-level HTML helpers

A collection of utilities for cleaning, transforming, and converting HTML content.

#### Quick Overview

Example code (`examples/c01-simple.rs`):

```rust
fn main() -> Result<(), Box<dyn std::error::Error>> {
    use htmlr::{Elem, SlimOptions, decode_html_entities, select, slim, to_md};
    let html = r#"

Hello & welcome!


                  [good link](https://example.com)"#;
    // clean and slim
    let slimmed = slim(html, SlimOptions::from_indent(2))?;
    println!("=== Slimmed version `slim(...)`:\n{slimmed}");
    // select all of the `<a>` tags
    let elems: Vec<Elem> = select(&slimmed, ["a"])?;
    println!("\n=== Element count `select(...)`: {}", elems.len());
    // into markdown
    let markdown = to_md(&slimmed)?;
    println!("\n=== Markdown `to_md(...)`:\n{markdown}");
    // decoding a html text
    let txt = "good link";
    let decoded = decode_html_entities(txt);
    println!("\n=== decode `decode_html_entities(\"{txt}\")`:\n{decoded}");
    Ok(())
}
```

Will output:

```text
=== Slimmed version `slim(...)`:

Hello & welcome!

<a href="https://example.com">good link</a>
=== Element count `select(...)`: 1
=== Markdown `to_md(...)`:
Hello & welcome![good link](https://example.com)
=== decode `decode_html_entities("good link")`:
good link
```

#### Key Features

- **HTML cleaning** – `slim` strips non-content elements and filters attributes.
- **CSS selection** – `select` extracts elements by CSS selector.
- **Markdown conversion** – `to_md` turns HTML into Markdown.
- **HTML entity decoding** – `decode_html_entities` unescapes HTML entities.
- **Error handling** – custom `Error` type and `Result` alias.

#### Crate Status

Early development. Follows SemVer. See the [repository](https://github.com/jeremychone/rust-htmlr) for updates.

## Structs

- [Elem](struct.Elem.html) – Represents a simplified HTML element, suitable for serialization.
- [SlimOptions](struct.SlimOptions.html) – Options for the `slim` function (indentation, etc.).
- [ToMdOptions](struct.ToMdOptions.html) – Options for markdown conversion.

## Enums

- [Error](enum.Error.html) – Custom error type for htmlr operations.
- [HtmlContent](enum.HtmlContent.html) – Represents either a raw HTML string or a pre-parsed HTML document.

## Functions

- [decode_html_entities](fn.decode_html_entities.html) – Decodes HTML entities (e.g., `<` becomes `<`). Re-exporting from the original slimmer or using html-escape directly.
- [select](fn.select.html) – CSS selector query.
- [slim](fn.slim.html) – HTML content cleaner.
- [to_md](fn.to_md.html) – HTML to Markdown conversion.

## Type Aliases

- [HtmlParsed](type.HtmlParsed.html) – A type alias for `scraper::Html`, the parsed document tree.
- [Result](type.Result.html) – Result alias using the crate's `Error` type.
