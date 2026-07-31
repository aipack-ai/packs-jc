# SPath

`SPath` from `simple_fs` version `0.12.3`.

## Overview

```text
pub struct SPath { /* private fields */ }
```

An `SPath` is a POSIX-normalized path backed by `camino::Utf8PathBuf`.

It can be constructed from a `String`, standard library `Path`, `std::fs::DirEntry`, or `walkdir::DirEntry`.

- Uses POSIX separators (`/`); redundant `//` and `/./` segments are removed.
- Does not collapse `..` segments by default. Use the collapse APIs when required.
- Guarantees valid UTF-8.

## Associated Functions

### `new`

```text
pub fn new(path: impl Into<Utf8PathBuf>) -> Self
```

Creates an `SPath` from any type that implements `Into<Utf8PathBuf>`.

The path is normalized using POSIX-style rules, but `..` segments are not collapsed.

### `from_std_path_buf`

```text
pub fn from_std_path_buf(path_buf: PathBuf) -> Result<Self>
```

Creates an `SPath` from a standard library `PathBuf`.

### `from_std_path`

```text
pub fn from_std_path(path: impl AsRef<Path>) -> Result<Self>
```

Creates an `SPath` from any type that implements `AsRef<Path>`.

### `from_walkdir_entry`

```text
pub fn from_walkdir_entry(wd_entry: walkdir::DirEntry) -> Result<Self>
```

Creates an `SPath` from a `walkdir::DirEntry`.

### `from_fs_entry`

```text
pub fn from_fs_entry(fs_entry: std::fs::DirEntry) -> Result<Self>
```

Creates an `SPath` from a `std::fs::DirEntry`.

### `from_std_path_ok`

```text
pub fn from_std_path_ok(path: impl AsRef<Path>) -> Option<Self>
```

Creates an `SPath` from a type implementing `AsRef<Path>`.

Returns `None` if validation fails. This is useful with `filter_map`.

### `from_std_path_buf_ok`

```text
pub fn from_std_path_buf_ok(path_buf: PathBuf) -> Option<Self>
```

Creates an `SPath` from a `PathBuf`.

Returns `None` if validation fails. This is useful with `filter_map`.

### `from_fs_entry_ok`

```text
pub fn from_fs_entry_ok(fs_entry: std::fs::DirEntry) -> Option<Self>
```

Creates an `SPath` from a `std::fs::DirEntry`.

Returns `None` if validation fails. This is useful with `filter_map`.

### `from_walkdir_entry_ok`

```text
pub fn from_walkdir_entry_ok(wd_entry: walkdir::DirEntry) -> Option<Self>
```

Creates an `SPath` from a `walkdir::DirEntry`.

Returns `None` if validation fails. This is useful with `filter_map`.

## Path Accessors

### `into_std_path_buf`

```text
pub fn into_std_path_buf(self) -> PathBuf
```

Consumes the `SPath` and returns its `PathBuf`.

### `std_path`

```text
pub fn std_path(&self) -> &Path
```

Returns a reference to the internal standard library `Path`.

### `as_std_path`

```text
pub fn as_std_path(&self) -> &Path
```

Returns a reference to the internal standard library `Path`.

### `path`

```text
pub fn path(&self) -> &Utf8Path
```

Returns a reference to the internal `Utf8Path`.

### `as_str`

```text
pub fn as_str(&self) -> &str
```

Returns the path as a string slice.

## Path Components and Properties

### `file_name`

```text
pub fn file_name(&self) -> Option<&str>
```

Returns the UTF-8 representation of the path’s file name.

### `name`

```text
pub fn name(&self) -> &str
```

Returns the path’s file name as a string slice.

Returns an empty string when the path has no file name.

### `parent_name`

```text
pub fn parent_name(&self) -> &str
```

Returns the parent directory name.

Returns an empty string when no parent is present.

### `file_stem`

```text
pub fn file_stem(&self) -> Option<&str>
```

Returns the UTF-8 representation of the file stem.

### `stem`

```text
pub fn stem(&self) -> &str
```

Returns the file stem as a string slice.

Returns an empty string when no stem is present.

### `extension`

```text
pub fn extension(&self) -> Option<&str>
```

Returns the path extension.

Because the path is validated during construction, the extension should always be valid UTF-8.

### `ext`

```text
pub fn ext(&self) -> &str
```

Returns the extension, or an empty string when no extension is present.

### `is_dir`

```text
pub fn is_dir(&self) -> bool
```

Returns `true` if the path represents a directory.

### `is_file`

```text
pub fn is_file(&self) -> bool
```

Returns `true` if the path represents a file.

### `exists`

```text
pub fn exists(&self) -> bool
```

Returns `true` if the path exists.

### `is_absolute`

```text
pub fn is_absolute(&self) -> bool
```

Returns `true` if the path is absolute.

### `is_relative`

```text
pub fn is_relative(&self) -> bool
```

Returns `true` if the path is relative.

## MIME and Text Detection

### `mime_type`

```text
pub fn mime_type(&self) -> Option<&'static str>
```

Returns the MIME type inferred from the path, if one can be found.

This uses the `mime_guess` crate.

### `is_likely_text`

```text
pub fn is_likely_text(&self) -> bool
```

Returns `true` if the path is likely to represent a text file.

The detection includes:

- `text/*`
- `application/json`
- `application/javascript`
- `application/xml`
- `application/toml`
- `image/svg+xml`
- Known text-based file extensions

## Metadata

### `meta`

```text
pub fn meta(&self) -> Result<SMeta>
```

Returns a simplified `SMeta` metadata structure containing:

- `created_epoch_us: i64`
- `modified_epoch_us: i64`
- `size: i64`

The size is `0` for non-file entries.

### `metadata`

```text
pub fn metadata(&self) -> Result<std::fs::Metadata>
```

Returns the standard library metadata for the path.

## Path Transformations

### `canonicalize`

```text
pub fn canonicalize(&self) -> Result<SPath>
```

Canonicalizes the path using the operating system.

This performs filesystem I/O.

### `collapse`

```text
pub fn collapse(&self) -> SPath
```

Collapses a path without performing I/O.

Redundant separators and parent-directory references are collapsed, but links are not resolved.

### `into_collapsed`

```text
pub fn into_collapsed(self) -> SPath
```

Consumes the `SPath` and returns a collapsed path.

A new `SPath` is created only when necessary.

### `is_collapsed`

```text
pub fn is_collapsed(&self) -> bool
```

Returns `true` if the path is collapsed.

#### Quirk

If the path does not start with `./` but contains `./` in the middle, this function may return `true`.

### `parent`

```text
pub fn parent(&self) -> Option<SPath>
```

Returns the parent directory as an `Option<SPath>`.

### `append_suffix`

```text
pub fn append_suffix(&self, suffix: &str) -> SPath
```

Returns a new path with `suffix` appended to the file name after any existing extension.

Use `join` to join path segments.

Example:

- `foo.rs` plus `_backup` becomes `foo.rs_backup`

### `join`

```text
pub fn join(&self, leaf_path: impl Into<Utf8PathBuf>) -> SPath
```

Joins a path onto the current path and returns an `SPath`.

### `join_std_path`

```text
pub fn join_std_path(&self, leaf_path: impl AsRef<Path>) -> Result<SPath>
```

Joins a standard library `Path` onto the current path.

### `new_sibling`

```text
pub fn new_sibling(&self, leaf_path: impl AsRef<str>) -> SPath
```

Creates a new sibling path from the supplied leaf path.

### `new_sibling_std_path`

```text
pub fn new_sibling_std_path(&self, leaf_path: impl AsRef<Path>) -> Result<SPath>
```

Creates a new sibling path from a standard library `Path`.

### `diff`

```text
pub fn diff(&self, base: impl AsRef<Utf8Path>) -> Option<SPath>
```

Returns the relative difference from `base` to this path.

The operation delegates to `pathdiff::diff_utf8_paths`, does not access the filesystem, and returns `None` when the paths cannot be related by a relative path.

```text
let base = SPath::new("/workspace/project");
let file = SPath::new("/workspace/project/src/main.rs");

assert_eq!(
    file.diff(&base).map(|path| path.to_string()),
    Some("src/main.rs".into())
);
```

### `try_diff`

```text
pub fn try_diff(&self, base: impl AsRef<Utf8Path>) -> Result<SPath>
```

Returns the relative path from `base` to this path.

Returns `Error::CannotDiff` when the paths cannot be related by a relative path. No filesystem access occurs.

### `replace_prefix`

```text
pub fn replace_prefix(
    &self,
    base: impl AsRef<str>,
    with: impl AsRef<str>,
) -> SPath
```

Replaces the path prefix `base` with `with`.

### `into_replace_prefix`

```text
pub fn into_replace_prefix(
    self,
    base: impl AsRef<str>,
    with: impl AsRef<str>,
) -> SPath
```

Consumes the path and replaces the path prefix `base` with `with`.

## Prefix Operations

### `strip_prefix`

```text
pub fn strip_prefix(&self, prefix: impl AsRef<str>) -> Result<SPath>
```

Returns a path that, when joined onto `prefix`, yields the original path.

Returns an error if `prefix` is not a prefix of the path.

### `starts_with`

```text
pub fn starts_with(&self, base: impl AsRef<Path>) -> bool
```

Determines whether `base` is a prefix of the path.

Only complete path components are considered when matching.

```text
use camino::Utf8Path;

let path = Utf8Path::new("/etc/passwd");

assert!(path.starts_with("/etc"));
assert!(path.starts_with("/etc/"));
assert!(path.starts_with("/etc/passwd"));
assert!(path.starts_with("/etc/passwd/"));
assert!(path.starts_with("/etc/passwd///"));
assert!(!path.starts_with("/e"));
assert!(!path.starts_with("/etc/passwd.txt"));
assert!(!Utf8Path::new("/etc/foo.rs").starts_with("/etc/foo"));
```

### `starts_with_prefix`

```text
pub fn starts_with_prefix(&self, base: impl AsRef<str>) -> bool
```

Determines whether the supplied string is a path prefix.

## Extension Operations

### `into_ensure_extension`

```text
pub fn into_ensure_extension(self, ext: &str) -> Self
```

Consumes the path and ensures that it has the specified extension.

- Sets the extension when it is different.
- Returns the original path when the extension is already present.
- The extension should not include a leading dot.

### `ensure_extension`

```text
pub fn ensure_extension(&self, ext: &str) -> Self
```

Returns a new path with the specified extension ensured.

Because this method takes a reference, it always returns a clone. Use `into_ensure_extension` to consume the path and avoid an unnecessary allocation when possible.

### `append_extension`

```text
pub fn append_extension(&self, ext: &str) -> Self
```

Appends an extension even when an extension already exists or matches the supplied extension.

The extension should not include a leading dot.

## Glob Operations

### `dir_before_glob`

```text
pub fn dir_before_glob(&self) -> Option<SPath>
```

Returns the directory before the first glob expression.

Returns `None` if the path contains no glob expression.

Examples:

- `/some/path/**/src/*.rs` → `/some/path`
- `**/src/*.rs` → ``
- `/some/{src,doc}/**/*` → `/some`

## Trait Implementations

### `AsRef`

```text
impl AsRef<Path> for SPath {
    fn as_ref(&self) -> &Path;
}

impl AsRef<SPath> for SPath {
    fn as_ref(&self) -> &SPath;
}

impl AsRef<Utf8Path> for SPath {
    fn as_ref(&self) -> &Utf8Path;
}

impl AsRef<str> for SPath {
    fn as_ref(&self) -> &str;
}
```

### `Clone`

```text
impl Clone for SPath {
    fn clone(&self) -> SPath;
    fn clone_from(&mut self, source: &Self);
}
```

### `Debug`

```text
impl Debug for SPath {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result;
}
```

### `Display`

```text
impl Display for SPath {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result;
}
```

### `Eq`

```text
impl Eq for SPath {}
```

### `Hash`

```text
impl Hash for SPath {
    fn hash<H: Hasher>(&self, state: &mut H);
    fn hash_slice<H: Hasher>(data: &[Self], state: &mut H);
}
```

### `PartialEq`

```text
impl PartialEq for SPath {
    fn eq(&self, other: &SPath) -> bool;
    fn ne(&self, other: &SPath) -> bool;
}
```

### `StructuralPartialEq`

```text
impl StructuralPartialEq for SPath {}
```

### `From` conversions

```text
impl From<&SPath> for String {
    fn from(value: &SPath) -> String;
}

impl From<&SPath> for PathBuf {
    fn from(value: &SPath) -> PathBuf;
}

impl From<&SPath> for SPath {
    fn from(value: &SPath) -> SPath;
}

impl From<&String> for SPath {
    fn from(value: &String) -> SPath;
}

impl From<&Utf8Path> for SPath {
    fn from(value: &Utf8Path) -> SPath;
}

impl From<&str> for SPath {
    fn from(value: &str) -> SPath;
}

impl From<SPath> for String {
    fn from(value: SPath) -> String;
}

impl From<SPath> for PathBuf {
    fn from(value: SPath) -> PathBuf;
}

impl From<SPath> for Utf8PathBuf {
    fn from(value: SPath) -> Utf8PathBuf;
}

impl From<String> for SPath {
    fn from(value: String) -> SPath;
}

impl From<Utf8PathBuf> for SPath {
    fn from(value: Utf8PathBuf) -> SPath;
}
```

### `TryFrom` conversions

```text
impl TryFrom<PathBuf> for SPath {
    type Error = Error;

    fn try_from(value: PathBuf) -> Result<SPath>;
}

impl TryFrom<std::fs::DirEntry> for SPath {
    type Error = Error;

    fn try_from(value: std::fs::DirEntry) -> Result<SPath>;
}

impl TryFrom<walkdir::DirEntry> for SPath {
    type Error = Error;

    fn try_from(value: walkdir::DirEntry) -> Result<SPath>;
}
```

## Auto Trait Implementations

`SPath` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The standard blanket implementations available for `SPath` include:

```text
impl<T: 'static + ?Sized> Any for T {
    fn type_id(&self) -> TypeId;
}

impl<T: ?Sized> Borrow<T> for T {
    fn borrow(&self) -> &T;
}

impl<T: ?Sized> BorrowMut<T> for T {
    fn borrow_mut(&mut self) -> &mut T;
}

impl<T: Clone> CloneToUninit for T {
    unsafe fn clone_to_uninit(&self, dest: *mut u8);
}

impl<T> From<T> for T {
    fn from(value: T) -> T;
}

impl<T, U> Into<U> for T
where
    U: From<T>,
{
    fn into(self) -> U;
}

impl<T: Clone> ToOwned for T {
    type Owned = T;

    fn to_owned(&self) -> T;
    fn clone_into(&self, target: &mut T);
}

impl<T: Display + ?Sized> ToString for T {
    fn to_string(&self) -> String;
}

impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
{
    type Error = Infallible;

    fn try_from(value: U) -> Result<T, Infallible>;
}

impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = <U as TryFrom<T>>::Error;

    fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>;
}
```

## Referenced Types

- `SPath`: normalized, UTF-8 path type provided by `simple_fs`.
- `SMeta`: simplified metadata structure returned by `SPath::meta`.
- `Result<T>`: crate-level result type, equivalent to a result using `simple_fs::Error`.
- `Error`: crate-level error enum, including `Error::CannotDiff`.
- `Utf8Path`: UTF-8 path type from `camino`.
- `Utf8PathBuf`: owned UTF-8 path type from `camino`.
- `Path`: standard library path type.
- `PathBuf`: owned standard library path type.
