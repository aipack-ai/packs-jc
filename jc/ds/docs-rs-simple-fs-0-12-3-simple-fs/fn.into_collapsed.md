# Function `into_collapsed`

## Crate

[`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/reshape/collapser.rs.html#24-101)

## Signature

```text
pub fn into_collapsed(
    path: impl Into<Utf8PathBuf>,
) -> Utf8PathBuf
```

## Description

Collapses a path buffer without performing I/O.

- Resolves `../` segments where possible.
- Removes `./` segments, except when leading.
- Collapses all redundant separators and up-level references.

## Examples

- `a/b/../c` becomes `a/c`
- `a/../../c` becomes `../c`
- `./some` becomes `./some`
- `./some/./path` becomes `./some/path`
- `/a/../c` becomes `/c`
- `/a/../../c` becomes `/c`

This function does not resolve symbolic links. It consumes the input `Utf8PathBuf` and returns a new one.
