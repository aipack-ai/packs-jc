# select in htmlr - Rust

## Function `select`

Full signature:

```text
pub fn select<'a, S>(
    html_content: impl Into<HtmlContent<'a>>,
    selectors: S,
) -> Result<Vec<Elem>>
where
    S: IntoIterator,
    S::Item: AsRef<str>,
```

## Description – CSS selector query

Returns a list of `Elem` items matching any of the given CSS selectors (combined with OR).

- Empty selectors are silently ignored.
- Returns an empty vector when no valid selectors remain.
- Powered by the [scraper](https://crates.io/crates/scraper) crate.

## Example

```text
let html = r#"
<html>
  <body>
    <h1>Title</h1>
    <p class="intro">Hello</p>
    <a href="url">link</a>
  </body>
</html>
"#;

// From a raw string
let elements = select(&html, ["p.intro", "a"])?;
for e in &elements {
    println!("Tag: {}, Text: {:?}", e.tag, e.text);
}

// From a pre-parsed document (reusable across multiple calls)
let doc = htmlr::HtmlParsed::parse_document(html);
let headings = select(&doc, ["h1", "h2"])?;
let links = select(&doc, ["a"])?;
```

## Additional example (from repository)

```text
fn main() -> Result<(), Box<dyn std::error::Error>> {
    use htmlr::{Elem, SlimOptions, decode_html_entities, select, slim, to_md};

    let html = r#"
<html>
  <body>
    <p>Hello &amp; welcome!</p>
    <a href="https://example.com">good link</a>
  </body>
</html>
"#;

    // clean and slim
    let slimmed = slim(html, SlimOptions::from_indent(2))?;
    println!("=== Slimmed version `slim(...)`:\n{slimmed}");

    // select all of the `<a>` tags
    let elems: Vec<Elem> = select(&slimmed, ["a"])?;
    println!("\n=== a count `select(...)`: {}", elems.len());

    // into markdown
    let markdown = to_md(&slimmed, None)?;
    println!("\n=== Markdown `to_md(...)`:\n{markdown}");

    // decoding a html text
    let txt = "good link";
    let decoded = decode_html_entities(txt);
    println!("\n=== decode `decode_html_entities(\"{txt}\")`:\n{decoded}");

    Ok(())
}
```
