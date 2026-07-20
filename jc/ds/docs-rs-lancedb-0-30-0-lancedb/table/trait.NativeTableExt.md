# NativeTableExt

In `lancedb::table` (trait)

## Source

[Source](../../src/lancedb/table.rs.html#1620-1623)

## Trait Definition

```text
pub trait NativeTableExt {
    fn as_native(&self) -> Option<&NativeTable>;
}
```

## Required Methods

### `as_native`

```text
fn as_native(&self) -> Option<&NativeTable>
```

Cast as `[NativeTable](struct.NativeTable.html)`, or return `None` if it is not a `NativeTable`.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

*In older versions of Rust, dyn compatibility was called "object safety".*

## Implementations on Foreign Types

### `impl NativeTableExt for Arc<dyn BaseTable>`

[Source](../../src/lancedb/table.rs.html#1625-1629)

#### `as_native`

```text
fn as_native(&self) -> Option<&NativeTable>
```

## Implementors

*(No implementors listed.)*
