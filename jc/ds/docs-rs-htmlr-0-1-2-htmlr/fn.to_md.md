# to_md

Function in `htmlr` crate.

[Source](../src/htmlr/to_md/to_md_impl.rs.html#5-12)

## Function Signature

```text
pub fn to_md(
    html_content: &str,
    options: impl Into<ToMdOptions>,
) -> Result<String>
```

## Description

`to_md` – HTML to Markdown conversion

Converts an HTML string into Markdown. Uses the [htmd](https://crates.io/crates/htmd) library under the hood.

- `html_content`: The raw HTML content to convert.
- `options`: Optional conversion configuration (implements `Into`). When `None` is passed, the default options are applied, which correspond to:
  - `bullet_list_marker` set to `Dash` (list items start with `-`),
  - `ul_bullet_spacing` set to `1`,
  - `ol_number_spacing` set to `1`,
  - all other htmd options remain at their library defaults.

## Example

```text
use re_doc::to_md;
// Use default options (None)
let md = to_md("<h1>Hello</h1>", None).unwrap();
// Use custom bullet marker
let custom = htmd::Options {
    bullet_list_marker: htmd::options::BulletListMarker::Asterisk,
    ..Default::default()
};
let md = to_md("<ul><li>Item</li></ul>", custom).unwrap();
```

This function is typically used after cleaning HTML with `slim` to produce readable Markdown from web content.

### Examples from repository

```text
fn main() -> Result<(), Box<dyn std::error::Error>> {
    use htmlr::{Elem, SlimOptions, decode_html_entities, select, slim, to_md};

    let html = r#"<p>Hello & welcome!</p>
                  <a href='https://example.com'>good&nbsp;link</a>"#;

    // clean and slim
    let slimmed = slim(html, SlimOptions::from_indent(2))?;
    println!("=== Slimmed version `slim(...)`:\n{slimmed}");

    // select all of the `<a>` tags
    let elems: Vec<Elem> = select(&slimmed, ["a"])?;
    println!("\n=== `<a>` count `select(...)`: {}", elems.len());

    // into markdown
    let markdown = to_md(&slimmed, None)?;
    println!("\n=== Markdown `to_md(...)`:\n{markdown}");

    // decoding a html text
    let txt = "good&nbsp;link";
    let decoded = decode_html_entities(txt);
    println!("\n=== decode  `decode_html_entities(\"{txt}\")`:\n{decoded}");

    Ok(())
}
```
