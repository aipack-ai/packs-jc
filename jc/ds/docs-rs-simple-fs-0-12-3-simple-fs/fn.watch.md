# `watch` in `simple_fs` - Rust

## `simple_fs` 0.12.3

# Function `watch`

[Source](../src/simple_fs/watch.rs.html#61-89)

```text
pub fn watch(path: impl AsRef<Path>) -> Result<SWatcher>
```

## Description

A simplified watcher that monitors a path, either a file or directory, and returns an `SWatcher` object with a standard MPSC receiver for a `Vec`.

Each `SEvent` contains one `spath` and one simplified event kind, `SEventKind`.

The watcher ignores paths that cannot be converted to a string. Events are triggered only for paths containing valid UTF-8.
