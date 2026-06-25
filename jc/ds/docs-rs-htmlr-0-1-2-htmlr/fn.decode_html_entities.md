# decode_html_entities

Function `decode_html_entities(content: &str) -> String`

## Description

Decodes HTML entities (e.g., `<` becomes `<`). Re-exporting from the original slimmer or using html-escape directly.

## Examples found in repository

```text
fn main() -> Result<(), Box<dyn std::error::Error>> {
    use htmlr::{Elem, SlimOptions, decode_html_entities, select, slim, to_md};

    let html = r#"

Hello & welcome!

[good link](https://example.com)"#;

    // clean and slim
    let slimmed = slim(html, SlimOptions::from_indent(2))?;
    println!("=== Slimmed version `slim(...)`:\n{slimmed}");

    // select all of the `<a>` tags
    let elems: Vec = select(&slimmed, ["a"])?;
    println!("\n=== `<a>` count `select(...)`: {}", elems.len());

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
