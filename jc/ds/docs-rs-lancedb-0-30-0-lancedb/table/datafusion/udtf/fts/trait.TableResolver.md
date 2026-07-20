# TableResolver

**Path:** [lancedb::table::datafusion::udtf::fts](index.html)

[Source](../../../../../src/lancedb/table/datafusion/udtf/fts.rs.html#17-24)

## Trait Definition

```
pub trait TableResolver:
    Debug
    + Send
    + Sync {
    // Required method
    fn resolve_table(
        &self,
        name: &str,
        fts_query: Option<FullTextSearchQuery>,
    ) -> DataFusionResult<Arc<dyn TableProvider>>;
}
```

**Expand description:**  
Trait for resolving table names to `TableProvider` instances.

## Required Methods

### `resolve_table`

```text
fn resolve_table(
    &self,
    name: &str,
    fts_query: Option<FullTextSearchQuery>,
) -> DataFusionResult<Arc<dyn TableProvider>>
```

Resolve a table name to a `TableProvider`, optionally with an FTS query applied.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).  
*In older versions of Rust, dyn compatibility was called "object safety".*

## Implementors

*No implementors are listed in this page; see the full crate documentation for implementors.*
