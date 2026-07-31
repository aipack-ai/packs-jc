# Function `try_into_collapsed`

## Crate

[`simple_fs`](../simple_fs/index.html) 0.12.3

## Signature

```text
pub fn try_into_collapsed(
    path: impl Into<Utf8PathBuf>,
) -> Option<Utf8PathBuf>
```

[Source](../src/simple_fs/reshape/collapser.rs.html#108-182)

## Description

Same as [`into_collapsed`](fn.into_collapsed.html "fn simple_fs::into_collapsed"), except that it returns `None` if:

- `Component::Prefix` or `Component::RootDir` is encountered in a path that is supposed to be relative.
- The path attempts to navigate above its starting point using `..`.

This is useful for ensuring that a path stays within a certain relative directory structure.
