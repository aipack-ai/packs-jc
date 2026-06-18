# html_helpers 0.1.0

A collection of high-level utilities for cleaning, transforming, and converting HTML content.

[Source](../src/html_helpers/lib.rs.html#3-11)

## Crate Items

- [Structs](#structs)
- [Enums](#enums)
- [Functions](#functions)
- [Type Aliases](#type-aliases)

## Structs

- [Elem](struct.Elem.html) – Represents a simplified HTML element, suitable for serialization.

## Enums

- [Error](enum.Error.html)

## Functions

- [decode_html_entities](fn.decode_html_entities.html) – Decodes HTML entities (e.g., `<` becomes `<`). Re-exporting from the original slimmer or using html-escape directly.
- [select](fn.select.html) – Selects HTML elements based on a list of CSS selectors and returns them as a list of `Elem`. The selectors are combined with a comma, effectively performing an “OR” match. Elements are returned in document order.
- [slim](fn.slim.html) – Strips non-content elements from the provided HTML content using the `scraper` crate, preserving essential head tags, and returns the cleaned HTML as a string.

## Type Aliases

- [Result](type.Result.html)
