# `JournalAppender`

`JournalAppender` is an append-only writer for journal records. Clones share the same file handle, and appends through that handle are serialized.

```rust
pub struct JournalAppender {
    /* private fields */
}
```

## Methods

### `create_new`

Creates or truncates a journal, writes its header, and opens it for appending.

```rust
pub fn create_new(
    path: impl AsRef<Path>,
    header: &JournalHeader,
) -> refinr::Result<Self>
```

### `open_existing`

Opens an existing journal for appending without validating its contents.

```rust
pub fn open_existing(path: impl AsRef<Path>) -> refinr::Result<Self>
```

### `append`

Serializes a record as one JSON line and appends it to the journal.

```rust
pub fn append(&self, record: &JournalRecord) -> refinr::Result<()>
```

### `empty`

Truncates the journal through this appender without writing a new header.

```rust
pub fn empty(&self) -> refinr::Result<()>
```

### `path`

Returns the path associated with this appender.

```rust
pub fn path(&self) -> &Path
```

## Trait implementations

### `Clone`

`JournalAppender` implements `Clone`. Clones share the same file handle.

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

## Auto traits

`JournalAppender` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
