# BTreeIndexBuilder

[lancedb::index::scalar](index.html)

## Struct Definition

```rust
pub struct BTreeIndexBuilder {}
```

## Description

Builder for a btree index.

A btree index is an index on scalar columns. The index stores a copy of the column in sorted order. A header entry is created for each block of rows (currently the block size is fixed at 4096). These header entries are stored in a separate cacheable structure (a btree). To search for data the header is used to determine which blocks need to be read from disk.

For example, a btree index in a table with 1Bi rows requires `sizeof(Scalar) * 256Ki` bytes of memory and will generally need to read `sizeof(Scalar) * 4096` bytes to find the correct row ids.

This index is good for scalar columns with mostly distinct values and does best when the query is highly selective.

The btree index does not currently have any parameters though parameters such as the block size may be added in the future.

## Trait Implementations

### Clone

```rust
fn clone(&self) -> BTreeIndexBuilder
```

```rust
fn clone_from(&mut self, source: &Self)
```

### Debug

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### Default

```rust
fn default() -> BTreeIndexBuilder
```

### Serialize

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where
    __S: Serializer,
```

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe
