# Function `list_dirs`

Crate: [`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/list/iter_dirs.rs.html#17-24)

## Signature

```text
pub fn list_dirs(
    dir: impl AsRef<Path>,
    include_globs: Option<&[&str]>,
    list_options: Option<ListOptions<'_>>,
) -> Result<Vec<SPath>>
```

## Description

Collects directories from `iter_dirs` into a `Vec`.
