# Function `is_collapsed`

[`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/reshape/collapser.rs.html#190-224)

## Signature

```text
pub fn is_collapsed(path: impl AsRef<Utf8Path>) -> bool
```

## Description

Returns `true` if the path is already collapsed.

A path is considered collapsed if it contains no `.` components and no `..` components that immediately follow a normal component. Leading `..` components in relative paths are allowed. Absolute paths should not contain `..` at all after the root or prefix.
