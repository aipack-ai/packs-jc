# QueryBase

Trait for common parameters that can be applied to scans and vector queries.

```rust
pub trait QueryBase {
    // Required methods
    fn limit(self, limit: usize) -> Self;
    fn offset(self, offset: usize) -> Self;
    fn only_if(self, filter: impl AsRef<str>) -> Self;
    fn only_if_expr(self, filter: Expr) -> Self;
    fn full_text_search(self, query: FullTextSearchQuery) -> Self;
    fn select(self, selection: Select) -> Self;
    fn fast_search(self) -> Self;
    fn postfilter(self) -> Self;
    fn with_row_id(self) -> Self;
    fn rerank(self, reranker: Arc<dyn Reranker>) -> Self;
    fn norm(self, norm: NormalizeMethod) -> Self;
    fn order_by(self, ordering: Option<Vec<ColumnOrdering>>) -> Self;
}
```

## Required Methods

- **`fn limit(self, limit: usize) -> Self`**  
  Set the maximum number of results to return.  
  By default, a plain search has no limit. If this method is not called then every valid row from the table will be returned. A vector search always has a limit; if not called it defaults to 10.

- **`fn offset(self, offset: usize) -> Self`**  
  Set the offset of the query. By default, it fetches starting with the first row. This method can be used to skip the first `offset` rows.

- **`fn only_if(self, filter: impl AsRef<str>) -> Self`**  
  Only return rows which match the filter. The filter should be supplied as an SQL query string. For example:
  ```sql
  x > 10
  y > 0 AND y < 100
  x > 5 OR y = 'test'
  ```
  Filtering performance can often be improved by creating a scalar index on the filter column(s).

- **`fn only_if_expr(self, filter: Expr) -> Self`**  
  Only return rows which match the filter, using an expression builder.  
  Use `crate::expr` for building type-safe expressions:
  ```rust
  use lancedb::expr::{col, lit};
  use lancedb::query::{QueryBase, ExecutableQuery};
  let results = table.query()
      .only_if_expr(col("age").gt(lit(18)).and(col("status").eq(lit("active"))))
      .execute()
      .await?;
  ```
  Note: Expression filters are not supported for remote/server-side queries. Use `QueryBase::only_if` with SQL strings for remote tables.

- **`fn full_text_search(self, query: FullTextSearchQuery) -> Self`**  
  Perform a full text search on the table. The results will be returned in order of BM25 scores. This method is only valid on tables that have a full text search index.
  ```rust
  use lance_index::scalar::FullTextSearchQuery;
  use lancedb::query::{QueryBase, ExecutableQuery};
  let results = table.query()
      .full_text_search(FullTextSearchQuery::new("hello world".into()))
      .execute()
      .await?;
  ```

- **`fn select(self, selection: Select) -> Self`**  
  Return only the specified columns. By default a query will return all columns from the table. This can have significant impact on latency. Use this to limit queries to needed columns. You can also create dynamic columns using `Select::Dynamic` (helper: `Select::dynamic`). Columns are returned in the order given.

- **`fn fast_search(self) -> Self`**  
  Only execute the query over indexed data. This allows a weak-consistent fast path for queries that only need to access indexed data. Use `Table::optimize` to merge new data into the index. Default: false.

- **`fn postfilter(self) -> Self`**  
  If called, filtering will happen after the vector search instead of before. By default filtering is performed before the vector search. Post-filtering applies the filter to the results of the vector search, which can be faster for complex filters but may return fewer results.

- **`fn with_row_id(self) -> Self`**  
  Return the `_rowid` meta column from the table.

- **`fn rerank(self, reranker: Arc<dyn Reranker>) -> Self`**  
  Rerank the results using the specified reranker. Currently only supported for Hybrid Search.

- **`fn norm(self, norm: NormalizeMethod) -> Self`**  
  The method to normalize the scores. Can be “rank” or “Score”. If “Rank”, the scores are converted to ranks and then normalized. If “Score”, the scores are normalized directly.

- **`fn order_by(self, ordering: Option<Vec<ColumnOrdering>>) -> Self`**  
  Sort the results by the specified column(s). Allows ordering query results by one or more columns in either ascending or descending order.

## Dyn Compatibility

This trait is **not** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). In older versions of Rust, dyn compatibility was called "object safety".

## Implementors

- `impl<T: HasQuery> QueryBase for T`
