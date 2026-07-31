# `safer_remove_dir` in `simple_fs` - Rust

## Function `safer_remove_dir`

Safely deletes a directory if it passes safety checks.

**Signature:**

```text
pub fn safer_remove_dir<'a>(
    dir_path: &SPath,
    options: impl Into<SaferRemoveOptions<'a>>,
) -> Result<bool>
```

### Parameters

- `dir_path: &SPath` - The directory path to remove.
- `options: impl Into<SaferRemoveOptions<'a>>` - Options that control the safety checks.

### Returns

- `Ok(true)` if the directory was deleted.
- `Ok(false)` if the directory did not exist.
- An error if the safety checks fail or the deletion fails.

### Safety checks

The directory is removed only if it satisfies the configured safety checks:

- If `restrict_to_current_dir` is `true`, the directory path must be below the current directory.
- If `must_contain_any` is set, the path must contain at least one of the specified patterns.
- If `must_contain_all` is set, the path must contain all of the specified patterns.
