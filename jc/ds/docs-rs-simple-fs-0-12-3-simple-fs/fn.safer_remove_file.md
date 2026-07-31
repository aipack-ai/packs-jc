# `safer_remove_file` in `simple_fs`

## `simple_fs` 0.12.3

# Function `safer_remove_file`

[Source](../src/simple_fs/safer/safer_remove_impl.rs.html#58-89)

```text
pub fn safer_remove_file<'a>(
    file_path: &SPath,
    options: impl Into<SaferRemoveOptions<'a>>,
) -> Result<bool>
```

Safely deletes a file if it passes safety checks.

### Safety checks

- If `restrict_to_current_dir` is `true`, the file path must be below the current directory.
- If `must_contain_any` is set, the path must contain at least one of the specified patterns.
- If `must_contain_all` is set, the path must contain all of the specified patterns.

Returns `Ok(true)` if the file was deleted and `Ok(false)` if it did not exist. Returns an error if safety checks fail or deletion fails.
