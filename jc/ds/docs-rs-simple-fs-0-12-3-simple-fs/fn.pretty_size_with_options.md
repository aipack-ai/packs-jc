# `pretty_size_with_options` in `simple_fs` - Rust

## Function

### `pretty_size_with_options`

[Source](../src/simple_fs/common/pretty.rs.html#133-164)

```text
pub fn pretty_size_with_options(
    size_in_bytes: u64,
    options: impl Into<PrettySizeOptions>,
) -> String
```

Formats a byte size as a pretty, fixed-width 9-character string with unit alignment. The output format is tailored to align nicely in monospaced tables.

- The number is always 6 characters and is right-aligned.
- Padding uses spaces.
- The unit is always 2 characters and is left-aligned. For example, bytes are formatted as `B `.
- Values below 1 KB do not include decimal digits.
- Larger values always use 2 decimal digits, rounded.

## `PrettySizeOptions`

- `lowest_unit`: Defines the lowest unit to consider. For example, if set to `MB`, bytes and kilobytes are expressed as decimal values according to the formatting rules.

`String`, `&str`, and related types are supported. For example, `PrettySizeOptions::from("MB")` defaults to `PrettySizeOptions { lowest_unit: SizeUnit::MB }`. If the string does not match a unit, it also defaults to `SizeUnit::MB`.

## Examples

```text
777           -> "   777 B "
8777          -> "  8.78 KB"
88777         -> " 88.78 KB"
888777        -> "888.78 KB"
2_345_678_900  -> "  2.35 GB"
```

In `simple-fs`, this function may be called through `pretty_size()`.
