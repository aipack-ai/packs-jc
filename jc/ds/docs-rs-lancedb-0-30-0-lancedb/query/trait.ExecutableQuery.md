# ExecutableQuery in lancedb::query - Rust

## Trait `ExecutableQuery`

[Source](../../src/lancedb/query.rs.html#633-706)

```text
pub trait ExecutableQuery {
    // Required methods
    fn create_plan(
        &self,
        options: QueryExecutionOptions,
    ) -> impl Future<Result<Arc<ExecutionPlan>>> + Send;
    fn execute_with_options(
        &self,
        options: QueryExecutionOptions,
    ) -> impl Future<Result<SendableRecordBatchStream>> + Send;
    fn explain_plan(
        &self,
        verbose: bool,
    ) -> impl Future<Result<String>> + Send;
    fn analyze_plan_with_options(
        &self,
        options: QueryExecutionOptions,
    ) -> impl Future<Result<String>> + Send;
    // Provided methods
    fn execute(&self) -> impl Future<Result<SendableRecordBatchStream>> + Send { ... }
    fn analyze_plan(&self) -> impl Future<Result<String>> + Send { ... }
    fn output_schema(&self) -> impl Future<Result<SchemaRef>> + Send { ... }
}
```

A trait for a query object that can be executed to get results. There are various kinds of queries but they all return results in the same way.

## Required Methods

### `fn create_plan(&self, options: QueryExecutionOptions) -> impl Future<Result<Arc<ExecutionPlan>>> + Send`

[Source](../../src/lancedb/query.rs.html#638-641)

Return the Datafusion [ExecutionPlan](https://docs.rs/datafusion-physical-plan/53.1.0/x86_64-unknown-linux-gnu/datafusion_physical_plan/execution_plan/trait.ExecutionPlan.html "trait datafusion_physical_plan::execution_plan::ExecutionPlan"). The caller can further optimize the plan or execute it.

### `fn execute_with_options(&self, options: QueryExecutionOptions) -> impl Future<Result<SendableRecordBatchStream>> + Send`

[Source](../../src/lancedb/query.rs.html#667-670)

Execute the query and return results. The query results are returned as a [`SendableRecordBatchStream`](../arrow/type.SendableRecordBatchStream.html "type lancedb::arrow::SendableRecordBatchStream"). This is a stream of Arrow [`arrow_array::RecordBatch`](https://docs.rs/arrow-array/58.3.0/x86_64-unknown-linux-gnu/arrow_array/record_batch/struct.RecordBatch.html "struct arrow_array::record_batch::RecordBatch") (and you can also independently access the [`arrow_schema::Schema`](https://docs.rs/arrow-schema/58.3.0/x86_64-unknown-linux-gnu/arrow_schema/schema/struct.Schema.html "struct arrow_schema::schema::Schema") without polling the stream).

Note: The size of the returned batches and the order of individual rows is not deterministic. LanceDb will use many threads to calculate results and, when the result set is large, multiple batches will be processed at one time. This readahead is limited however and backpressure will be applied if this stream is consumed slowly (this constrains the maximum memory used by a single query). For simpler access or row-based access we recommend creating extension traits to convert Arrow data into your internal data model.

### `fn explain_plan(&self, verbose: bool) -> impl Future<Result<String>> + Send`

[Source](../../src/lancedb/query.rs.html#679)

Explain the plan for a query. This will create a string representation of the plan that will be used to execute the query. This will not execute the query. This function can be used to get an understanding of what work will be done by the query and is useful for debugging query performance.

### `fn analyze_plan_with_options(&self, options: QueryExecutionOptions) -> impl Future<Result<String>> + Send`

[Source](../../src/lancedb/query.rs.html#693-696)

Execute the query and display the runtime metrics. This is the same as [`ExecutableQuery::analyze_plan`](trait.ExecutableQuery.html#method.analyze_plan "method lancedb::query::ExecutableQuery::analyze_plan") but allows for specifying the execution options.

## Provided Methods

### `fn execute(&self) -> impl Future<Result<SendableRecordBatchStream>> + Send`

[Source](../../src/lancedb/query.rs.html#646-648)

Execute the query with default options and return results. See [`ExecutableQuery::execute_with_options`](trait.ExecutableQuery.html#tymethod.execute_with_options "method lancedb::query::ExecutableQuery::execute_with_options") for more details.

### `fn analyze_plan(&self) -> impl Future<Result<String>> + Send`

[Source](../../src/lancedb/query.rs.html#686-688)

Execute the query and display the runtime metrics. This shows the same plan as [`ExecutableQuery::explain_plan`](trait.ExecutableQuery.html#tymethod.explain_plan "method lancedb::query::ExecutableQuery::explain_plan") but includes runtime metrics. This function will actually execute the query in order to get the runtime metrics.

### `fn output_schema(&self) -> impl Future<Result<SchemaRef>> + Send`

[Source](../../src/lancedb/query.rs.html#702-705)

Return the output schema for data returned by the query without actually executing the query. This can be useful when the selection for a query is built dynamically as it is not always obvious what the output schema will be.

## Dyn Compatibility

This trait is **not** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). In older versions of Rust, dyn compatibility was called "object safety".

## Implementors

- [Source](../../src/lancedb/query.rs.html#885-910) – `impl ExecutableQuery for Query`
- [Source](../../src/lancedb/query.rs.html#1464-1489) – `impl ExecutableQuery for TakeQuery`
- [Source](../../src/lancedb/query.rs.html#1316-1345) – `impl ExecutableQuery for VectorQuery`
