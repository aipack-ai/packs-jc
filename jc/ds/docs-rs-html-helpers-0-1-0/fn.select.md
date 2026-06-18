# select

Selects HTML elements based on a list of CSS selectors and returns them as a list of `Elem`. The selectors are combined with a comma, effectively performing an “OR” match. Elements are returned in document order.

## Signature

```text
pub fn select(html_content: &[str], selectors: S) -> Result<Vec<Elem>>
where
    S: IntoIterator,
    S::Item: AsRef<str>,
```

## Description

Selects HTML elements based on a list of CSS selectors and returns them as a list of `Elem`. The selectors are combined with a comma, effectively performing an “OR” match. Elements are returned in document order.

## Arguments

- `html_content` - A string slice containing the HTML content to parse.
- `selectors` - An iterator of string-like items, each representing a CSS selector.

## Returns

A `Result` containing:

- `Ok(Vec<Elem>)`: A vector of `Elem` objects representing the selected elements.
- `Err(Error)`: An error if parsing the HTML or the combined selector fails.
