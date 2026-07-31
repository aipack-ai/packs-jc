# `safer_trash_dir` in `simple_fs` - Rust

## `simple_fs` 0.12.3

# Function `safer_trash_dir`

[Source](../src/simple_fs/safer/safer_trash_impl.rs.html#15-40)

```text
pub fn safer_trash_dir<'a>(
    dir_path: &SPath,
    options: impl Into<SaferTrashOptions<'a>>,
) -> Result<bool>
```

Safely moves a directory to the system trash if it passes safety checks.

### Safety checks

- If `restrict_to_current_dir` is `true`, the directory path must be below the current directory.
- If `must_contain_any` is set, the path must contain at least one of the specified patterns.
- If `must_contain_all` is set, the path must contain all of the specified patterns.

Returns `Ok(true)` if the directory was trashed and `Ok(false)` if it did not exist. Returns an error if safety checks fail or trashing fails.
