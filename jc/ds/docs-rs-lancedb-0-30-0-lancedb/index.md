# lancedb - Rust

[LanceDB](https://github.com/lancedb/lancedb) is an open-source database for vector-search built with persistent storage, which greatly simplifies retrieval, filtering and management of embeddings.

The key features of LanceDB include:

- Production-scale vector search with no servers to manage.
- Store, query and filter vectors, metadata and multi-modal data (text, images, videos, point clouds, and more).
- Support for vector similarity search, full-text search and SQL.
- Native Rust, Python, Javascript/Typescript support.
- Zero-copy, automatic versioning, manage versions of your data without needing extra infrastructure.
- GPU support in building vector indices (only in Python SDK).
- Ecosystem integrations with LangChain 🦜️🔗, LlamaIndex 🦙, Apache-Arrow, Pandas, Polars, DuckDB and more on the way.

## Getting Started

LanceDB runs in process, to use it in your Rust project, put the following in your `Cargo.toml`:

```sh
cargo add lancedb
```

## Crate Features

- `aws` - Enable AWS S3 object store support.
- `dynamodb` - Enable DynamoDB manifest store support.
- `azure` - Enable Azure Blob Storage object store support.
- `gcs` - Enable Google Cloud Storage object store support.
- `oss` - Enable Alibaba Cloud OSS object store support.
- `remote` - Enable remote client to connect to LanceDB cloud.
- `huggingface` - Enable HuggingFace Hub integration for loading datasets from the Hub.
- `fp16kernels` - Enable FP16 kernels for faster vector search on CPU.

## Quick Start

### Connect to a database

```text
let db = lancedb::connect("data/sample-lancedb").execute().await.unwrap();
```

LanceDB accepts different forms of database path:

- `/path/to/database` - local database on file system.
- `s3://bucket/path/to/database` or `gs://bucket/path/to/database` - database on cloud object store.
- `db://dbname` - Lance Cloud

You can also use [`ConnectBuilder`] to configure the connection:

```text
let db = lancedb::connect("data/sample-lancedb")
    .storage_options([
        ("aws_access_key_id", "some_key"),
        ("aws_secret_access_key", "some_secret"),
    ])
    .execute()
    .await
    .unwrap();
```

LanceDB uses [arrow-rs](https://github.com/apache/arrow-rs) to define schema, data types and array itself. It treats [`FixedSizeList`](https://docs.rs/arrow/latest/arrow/array/struct.FixedSizeListArray.html) columns as vector columns.

For more details, please refer to the [LanceDB documentation](https://docs.lancedb.com).

### Create a table

To create a Table, you need to provide an [`arrow_array::RecordBatch`](https://docs.rs/arrow-array/58.3.0/x86_64-unknown-linux-gnu/arrow_array/record_batch/struct.RecordBatch.html). The schema of the `RecordBatch` determines the schema of the table. Vector columns should be represented as `FixedSizeList` data type.

```text
use arrow_array::{RecordBatch, RecordBatchIterator};
use arrow_schema::{DataType, Field, Schema};
let ndims = 128;
let schema = Arc::new(Schema::new(vec![
    Field::new("id", DataType::Int32, false),
    Field::new(
        "vector",
        DataType::FixedSizeList(Arc::new(Field::new("item", DataType::Float32, true)), ndims),
        true,
    ),
]));
let data = RecordBatch::try_new(
        schema.clone(),
        vec![
            Arc::new(Int32Array::from_iter_values(0..256)),
            Arc::new(
                FixedSizeListArray::from_iter_primitive::_, _>(
                    (0..256).map(|_| Some(vec![Some(1.0); ndims as usize])),
                    ndims,
                ),
            ),
        ],
    )
    .unwrap();
db.create_table("my_table", data)
    .execute()
    .await
    .unwrap();
```

### Create vector index (IVF_PQ)

LanceDB is capable of automatically creating appropriate indices based on the data types of the columns. For example:

- If a column has a data type of `FixedSizeList`, LanceDB will create a `IVF-PQ` vector index with default parameters.
- Otherwise, it creates a `BTree` index by default.

```text
use lancedb::index::Index;
tbl.create_index(&["vector"], Index::Auto)
   .execute()
   .await
   .unwrap();
```

Users can also specify the index type explicitly, see [`Table::create_index`](table/struct.Table.html#method.create_index).

### Open table and search

```text
let results = table
    .query()
    .nearest_to(&[1.0; 128])?
    .execute()
    .await?
    .try_collect::_>>()
    .await?;
```

## Re-exports

- `pub use connection::[ConnectNamespaceBuilder](connection/struct.ConnectNamespaceBuilder.html "struct lancedb::connection::ConnectNamespaceBuilder");`
- `pub use connection::[Connection](connection/struct.Connection.html "struct lancedb::connection::Connection");`
- `pub use error::[Error](error/enum.Error.html "enum lancedb::error::Error");`
- `pub use error::[Result](error/type.Result.html "type lancedb::error::Result");`
- `pub use table::[Table](table/struct.Table.html "struct lancedb::table::Table");`
- `pub use connection::[connect](connection/fn.connect.html "fn lancedb::connection::connect");`
- `pub use connection::[connect_namespace](connection/fn.connect_namespace.html "fn lancedb::connection::connect_namespace");`

## Modules

- [arrow](arrow/index.html "mod lancedb::arrow")
- [connection](connection/index.html "mod lancedb::connection") - Functions to establish a connection to a LanceDB database
- [data](data/index.html "mod lancedb::data") - Data types, schema coercion, and data cleaning
- [database](database/index.html "mod lancedb::database") - The database module defines the `Database` trait and related types.
- [dataloader](dataloader/index.html "mod lancedb::dataloader")
- [embeddings](embeddings/index.html "mod lancedb::embeddings")
- [error](error/index.html "mod lancedb::error")
- [expr](expr/index.html "mod lancedb::expr") - Expression builder API for type-safe query construction
- [index](index/index.html "mod lancedb::index")
- [io](io/index.html "mod lancedb::io")
- [ipc](ipc/index.html "mod lancedb::ipc") - IPC support
- [query](query/index.html "mod lancedb::query")
- [remote](remote/index.html "mod lancedb::remote") - This module contains a remote client for a LanceDB server, used to communicate with LanceDB cloud and as an example for building client/server applications.
- [rerankers](rerankers/index.html "mod lancedb::rerankers")
- [table](table/index.html "mod lancedb::table") - LanceDB Table APIs
- [utils](utils/index.html "mod lancedb::utils")

## Structs

- [ObjectStoreRegistry](struct.ObjectStoreRegistry.html "struct lancedb::ObjectStoreRegistry") - A registry of object store providers.
- [Session](struct.Session.html "struct lancedb::Session") - Re-export Lance Session and ObjectStoreRegistry for custom session creation. A user session holds the runtime state for a [`crate::Dataset`](https://docs.rs/lance/7.0.0/x86_64-unknown-linux-gnu/lance/dataset/struct.Dataset.html).

## Enums

- [DistanceType](enum.DistanceType.html "enum lancedb::DistanceType")
