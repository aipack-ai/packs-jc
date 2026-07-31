# `safer_trash_file`

**Crate:** [`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/safer/safer_trash_impl.rs.html#51-76)

## Function signature

```text
pub fn safer_trash_file<'a>(
    file_path: &SPath,
    options: impl Into<SaferTrashOptions<'a>>,
) -> Result<bool>
```

## Description

Safely moves a file to the system trash if it passes the configured safety checks.

## Safety checks

- If `restrict_to_current_dir` is `true`, the file path must be below the current directory.
- If `must_contain_any` is set, the path must contain at least one of the specified patterns.
- If `must_contain_all` is set, the path must contain all of the specified patterns.

## Return value

- Returns `Ok(true)` if the file was trashed.
- Returns `Ok(false)` if the file did not exist.
- Returns an error if a safety check fails or trashing fails.
