# slim in htmlr - Rust

## Function `slim`

**Source:** [../src/htmlr/slim/slim_impl.rs.html#11-22](../src/htmlr/slim/slim_impl.rs.html#11-22)

```text
pub fn slim(
    html_content: &str,
    options: impl Into<SlimOptions>,
) -> Result<String>
```

**Description**

Slims an HTML page by removing non-content elements and filtering attributes, preserving only essential head tags and body content.

**Example**

```text
// clean and slim
let slimmed = slim(html, SlimOptions::from_indent(2))?;
println!("=== Slimmed version `slim(...)`:\n{slimmed}");

// select all of the `<a>` tags
let elems: Vec = select(&slimmed, ["a"])?;
println!("\n=== count `select(...)`: {}", elems.len());

// into markdown
let markdown = to_md(&slimmed, None)?;
println!("\n=== Markdown `to_md(...)`:\n{markdown}");

// decoding a html text
let txt = "good link";
let decoded = decode_html_entities(txt);
println!("\n=== decode `decode_html_entities(\"{txt}\")`:\n{decoded}");

Ok(())
```
