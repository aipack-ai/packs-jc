# IntoArrow in lancedb::arrow - Rust

In [lancedb](../lancedb)::[arrow](index.html)

## Trait IntoArrow

```rust
pub trait IntoArrow {
    // Required method
    fn into_arrow(self) -> Result<Box<dyn RecordBatchReader + Send>>;
}
```

A trait for converting incoming data to Arrow.

Integrations should implement this trait to allow data to be imported directly from the integration. For example, implementing this trait for `Vec<RecordBatch>` would allow the `Vec` to be directly used in methods like [`Connection::create_table`](../connection/struct.Connection.html#method.create_table) or [`Table::add`](../table/struct.Table.html#method.add).

## Required Methods

### `fn into_arrow(self) -> Result<Box<dyn RecordBatchReader + Send>>`

Convert the data into an iterator of Arrow batches.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). In older versions of Rust, dyn compatibility was called "object safety".

## Implementors

```rust
impl<T: RecordBatchReader + Send + 'static> IntoArrow for T {}
```
