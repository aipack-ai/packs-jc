# `extract`

Parses the input string for the specified tag names.

## In `markex::tag`

```rust
pub fn extract(
    input: &str,
    tag_names: &[&str],
    options: impl Into<TagOptions>,
) -> Parts
```

## Arguments

- `input` - The string slice to parse.
- `tag_names` - A slice of tag names to search for, such as `&["FILE", "DATA"]`.
- `options` - The parser configuration, including text-capture behavior.

## Returns

A `Parts` containing the extracted parts.

## Example

```rust
fn main() -> Result<(), Box<dyn std::error::Error>> {
    let input = "Text before some content and after.";
    let parts = extract(input, &["MY_TAG"], TagOptions::default().with_capture_text(true));

    for part in parts {
        match part {
            Part::Text(t) => println!("Text: {t:?}"),
            Part::TagElem(e) => println!("TagElem: {} ({})", e.tag, e.content),
        }
    }

    Ok(())
}
```
