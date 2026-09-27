# `JournalAppender`

`JournalAppender` is an append-only writer for journal records. Clones share the same file handle, and appends through that handle are serialized.

```rust
pub struct JournalAppender {
    /* private fields */
}
```

## Constructors

```rust
pub fn create_new(
    path: impl AsRef<Path>,
    header: &JournalHeader,
) -> Result
```

Creates or truncates a journal, writes its header, and opens it for appending.

```rust
pub fn open_existing(path: impl AsRef<Path>) -> Result
```

Opens an existing journal for appending without validating its contents.

## Methods

```rust
pub fn append(&self, record: &JournalRecord) -> Result<()>
```

Serializes a record as one JSON line and appends it to the journal.

```rust
pub fn empty(&self) -> Result<()>
```

Truncates the journal through this appender without writing a new header.

```rust
pub fn path(&self) -> &Path
```

Returns the path associated with this appender.

## Trait Implementations

### `Clone`

```rust
fn clone(&self) -> Self
```

Returns a duplicate of the value. For `JournalAppender`, clones share the same file handle.

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

## Auto Traits

`JournalAppender` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
