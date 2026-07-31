# `pretty_size`

## Function `pretty_size`

**Crate:** [`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/common/pretty.rs.html#101-103)

```text
pub fn pretty_size(size_in_bytes: u64) -> String
```

Formats a byte size as a pretty, fixed-width (9-character) string with unit alignment. The output format is tailored to align nicely in monospaced tables.

- The number is always 6 characters and right-aligned.
- There is one space between the number and the unit.
- The unit is always 2 characters and left-aligned. For bytes, `B` is followed by a space.
- Values below 1 KiB do not include decimal digits.
- Larger values are displayed with 2 decimal places and rounded.

## Examples

```text
777            -> "   777 B "
8777           -> "  8.78 KB"
88777          -> " 88.78 KB"
888777         -> "888.78 KB"
2_345_678_900  -> "  2.35 GB"
```

> Note: In `simple-fs`, this function might be called `pretty_size()`.
