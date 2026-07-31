# `get_glob_set` in `simple_fs`

## Function

Builds a glob set from a slice of glob pattern strings.

### Signature

```text
pub fn get_glob_set(globs: &[&str]) -> Result<GlobSet>
```

### Parameters

- `globs: &[&str]` - A slice of glob pattern strings.

### Returns

- `Result<GlobSet>` - A result containing the compiled [`globset::GlobSet`](https://docs.rs/globset/0.4.18/x86_64-unknown-linux-gnu/globset/struct.GlobSet.html), or an error.

### Source

[View source](../src/simple_fs/list/glob.rs.html#7-28)
