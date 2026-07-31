# Crate `simple_fs`

**Version:** 0.12.3  
**License:** [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)  
**Last updated:** 07 July 2026  
**Documentation coverage:** [28.57%](../simple_fs/index.html)

- [Crate documentation](../simple_fs/index.html)
- [Source](../src/simple_fs/lib.rs.html#3-34)
- [Homepage](https://github.com/jeremychone/rust-simple-fs)
- [Repository](https://github.com/jeremychone/rust-simple-fs)
- [crates.io](https://crates.io/crates/simple-fs)
- Owner: [jeremychone](https://crates.io/users/jeremychone)

## Dependencies

- `byteorder ^1.5` — optional
- `camino ^1`
- `derive_more ^2.0`
- `flume ^0.12`
- `globset ^0.4`
- `memchr ^2`
- `mime_guess ^2.0.5`
- `notify ^8`
- `notify-debouncer-full ^0.7`
- `path-clean ^1.0.1`
- `pathdiff ^0.2.2`
- `serde ^1` — optional
- `serde_json ^1` — optional
- `toml ^1` — optional
- `trash ^5.2.5`
- `walkdir ^2`

## Structs

- [`DebouncedEvent`](struct.DebouncedEvent.html) — A debounced event is emitted after a short delay.
- [`ListOptions`](struct.ListOptions.html) — Options for listing files and directories. In the future, the lifetime might be removed, and `iter_files` will take `Option<&ListOptions>`.
- [`PrettySizeOptions`](struct.PrettySizeOptions.html)
- [`SEvent`](struct.SEvent.html) — A simplified file event containing one path and one simplified event kind. Events are additionally debounced to ensure only one path and kind occurs per debounced event list.
- [`SMeta`](struct.SMeta.html) — A simplified file metadata structure with common, normalized fields. All fields are guaranteed to be present.
- [`SPath`](struct.SPath.html) — A POSIX-normalized path using `camino::Utf8PathBuf` as a surrogate. It can be constructed from a `String`, `Path`, `io::DirEntry`, or `walkdir::DirEntry`.
- [`SWatcher`](struct.SWatcher.html) — A simplified watcher containing a receiver for file system events and an internal debouncer.
- [`SaferRemoveOptions`](struct.SaferRemoveOptions.html)
- [`SaferTrashOptions`](struct.SaferTrashOptions.html)
- [`SortByGlobsOptions`](struct.SortByGlobsOptions.html)

## Enums

- [`Error`](enum.Error.html)
- [`NoMatchPosition`](enum.NoMatchPosition.html)
- [`SEventKind`](enum.SEventKind.html) — Simplified event kind.
- [`SizeUnit`](enum.SizeUnit.html)

## Constants

- [`DEFAULT_EXCLUDE_GLOBS`](constant.DEFAULT_EXCLUDE_GLOBS.html)

## Functions

- [`create_file`](fn.create_file.html)
- [`csv_row_spans`](fn.csv_row_spans.html) — CSV-aware record spans. Returns byte ranges `[start, end)` for each row.
- [`current_dir`](fn.current_dir.html) — Returns the current directory as an `SPath`.
- [`ensure_dir`](fn.ensure_dir.html)
- [`ensure_file_dir`](fn.ensure_file_dir.html)
- [`get_buf_reader`](fn.get_buf_reader.html)
- [`get_buf_writer`](fn.get_buf_writer.html)
- [`get_depth`](fn.get_depth.html) — Computes the maximum depth required for a set of glob patterns.
- [`get_glob_set`](fn.get_glob_set.html)
- [`home_dir`](fn.home_dir.html) — Returns the current user's home directory as an `SPath`.
- [`into_collapsed`](fn.into_collapsed.html) — Collapses a path buffer without performing I/O.
- [`into_normalized`](fn.into_normalized.html) — Normalizes a path.
- [`is_collapsed`](fn.is_collapsed.html) — Returns `true` if the path is already collapsed.
- [`iter_dirs`](fn.iter_dirs.html) — Returns an iterator over directories in the specified directory, optionally filtered by include globs and listing options. This implementation uses the internal `GlobsDirIter`.
- [`iter_files`](fn.iter_files.html)
- [`line_spans`](fn.line_spans.html) — Returns byte ranges `[start, end)` for each line in the file at `path`, splitting on `\n` and trimming a preceding `\r` for CRLF files, including across chunk boundaries. Runs in O(n) time, streams input, and does not allocate the entire file.
- [`list_dirs`](fn.list_dirs.html) — Collects directories from `iter_dirs` into a `Vec`.
- [`list_files`](fn.list_files.html)
- [`longest_base_path_wild_free`](fn.longest_base_path_wild_free.html)
- [`needs_normalize`](fn.needs_normalize.html) — Checks whether a path needs normalization.
- [`open_file`](fn.open_file.html)
- [`pretty_size`](fn.pretty_size.html) — Formats a byte size as a pretty, fixed-width nine-character string with unit alignment for monospaced tables.
- [`pretty_size_with_options`](fn.pretty_size_with_options.html) — Formats a byte size as a pretty, fixed-width nine-character string with unit alignment for monospaced tables.
- [`read_span`](fn.read_span.html) — Reads a half-open `(start, end)` span and returns a string.
- [`read_to_string`](fn.read_to_string.html)
- [`safer_remove_dir`](fn.safer_remove_dir.html) — Safely deletes a directory if it passes safety checks.
- [`safer_remove_file`](fn.safer_remove_file.html) — Safely deletes a file if it passes safety checks.
- [`safer_trash_dir`](fn.safer_trash_dir.html) — Safely moves a directory to the system trash if it passes safety checks.
- [`safer_trash_file`](fn.safer_trash_file.html) — Safely moves a file to the system trash if it passes safety checks.
- [`sort_by_globs`](fn.sort_by_globs.html) — Sorts files by glob priority and then by full path.
- [`try_into_collapsed`](fn.try_into_collapsed.html) — Like [`into_collapsed`](fn.into_collapsed.html), but returns `None` if a relative path contains a prefix or root directory, or attempts to navigate above its starting point using `..`.
- [`watch`](fn.watch.html) — Monitors a file or directory and returns an `SWatcher` with a standard MPSC receiver for `Vec<SEvent>`. Each event contains one path and one [`SEventKind`](enum.SEventKind.html). Paths that cannot be converted to UTF-8 are ignored.

## Type Aliases

- [`Result`](type.Result.html)
