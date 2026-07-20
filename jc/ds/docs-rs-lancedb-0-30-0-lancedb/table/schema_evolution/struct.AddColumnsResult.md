# AddColumnsResult in lancedb::table::schema_evolution - Rust

**Module:** [lancedb](../../index.html)::[table](../index.html)::[schema_evolution](index.html)

**Source:** [../../src/lancedb/table/schema_evolution.rs.html#19-25](../../../src/lancedb/table/schema_evolution.rs.html#19-25)

The result of an add columns operation.

```rust
pub struct AddColumnsResult {
    pub version: u64,
}
```

## Fields

- `version: u64` — a commit version.

## Trait Implementations

### impl Clone for AddColumnsResult

- `fn clone(&self) -> AddColumnsResult`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for AddColumnsResult

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Default for AddColumnsResult

- `fn default() -> AddColumnsResult`

### impl<'de> Deserialize<'de> for AddColumnsResult

- `fn deserialize<__D>(__deserializer: __D) -> Result<..., __D::Error>`

### impl PartialEq for AddColumnsResult

- `fn eq(&self, other: &AddColumnsResult) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### impl Serialize for AddColumnsResult

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>`

### impl Eq for AddColumnsResult

### impl StructuralPartialEq for AddColumnsResult

## Auto Trait Implementations

- impl Freeze for AddColumnsResult
- impl RefUnwindSafe for AddColumnsResult
- impl Send for AddColumnsResult
- impl Sync for AddColumnsResult
- impl Unpin for AddColumnsResult
- impl UnsafeUnpin for AddColumnsResult
- impl UnwindSafe for AddColumnsResult

## Blanket Implementations

(Standard blanket implementations for Any, Borrow, From, Into, etc. are omitted for brevity.)
