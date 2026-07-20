# IndexBuilder in lancedb::index

## Struct IndexBuilder

[Source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/index.rs#L162-L170)

```
pub struct IndexBuilder { /* private fields */ }
```

Builder for the `create_index` operation. The methods on this builder are used to specify options common to all indices.

### Examples

Creating a basic vector index:

```rust
use lancedb::{connect, index::{Index, vector::IvfPqIndexBuilder}};
let db = connect("data/sample-lancedb").execute().await?;
let table = db.open_table("my_table").execute().await?;
// Create a vector index with default settings
table
    .create_index(&["vector"], Index::IvfPq(IvfPqIndexBuilder::default()))
    .execute()
    .await?;
```

Creating an index with a custom name:

```rust
use lancedb::{connect, index::{Index, vector::IvfPqIndexBuilder}};
let db = connect("data/sample-lancedb").execute().await?;
let table = db.open_table("my_table").execute().await?;
// Create a vector index with a custom name
table
    .create_index(&["embeddings"], Index::IvfPq(IvfPqIndexBuilder::default()))
    .name("my_embeddings_index".to_string())
    .execute()
    .await?;
```

Creating an untrained index (for scalar indices only):

```rust
use lancedb::{connect, index::{Index, scalar::BTreeIndexBuilder}};
let db = connect("data/sample-lancedb").execute().await?;
let table = db.open_table("my_table").execute().await?;
// Create a BTree index without training (creates empty index)
table
    .create_index(&["category"], Index::BTree(BTreeIndexBuilder::default()))
    .train(false)
    .name("category_index".to_string())
    .execute()
    .await?;
```

Creating a scalar index with all options:

```rust
use lancedb::{connect, index::{Index, scalar::BitmapIndexBuilder}};
let db = connect("data/sample-lancedb").execute().await?;
let table = db.open_table("my_table").execute().await?;
// Create a bitmap index with full configuration
table
    .create_index(&["status"], Index::Bitmap(BitmapIndexBuilder::default()))
    .name("status_bitmap_index".to_string())
    .train(true)  // Train the index with existing data
    .replace(false)  // Don't replace if index already exists
    .execute()
    .await?;
```

## Implementations

### `impl IndexBuilder`

#### `pub fn replace(self, v: bool) -> Self`

Whether to replace the existing index, the default is `true`. If this is false, and another index already exists on the same columns and the same name, then an error will be returned. This is true even if that index is out of date.

[Source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/index.rs#L190-L193)

#### `pub fn name(self, v: String) -> Self`

The name of the index. If not set, a default name will be generated.

**Example:**

```rust
use lancedb::{connect, index::{Index, scalar::BTreeIndexBuilder}};
let db = connect("data/sample-lancedb").execute().await?;
let table = db.open_table("my_table").execute().await?;
// Create an index with a custom name
table
    .create_index(&["user_id"], Index::BTree(BTreeIndexBuilder::default()))
    .name("user_id_btree_index".to_string())
    .execute()
    .await?;
```

[Source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/index.rs#L215-L218)

#### `pub fn train(self, v: bool) -> Self`

Whether to train the index, the default is `true`. If this is false, the index will not be trained and just created empty. This is not supported for vector indices yet.

**Example (empty index):**

```rust
use lancedb::{connect, index::{Index, scalar::BitmapIndexBuilder}};
let db = connect("data/sample-lancedb").execute().await?;
let table = db.open_table("my_table").execute().await?;
// Create an empty bitmap index (not trained with existing data)
table
    .create_index(&["category"], Index::Bitmap(BitmapIndexBuilder::default()))
    .train(false)  // Create empty index
    .name("category_bitmap".to_string())
    .execute()
    .await?;
```

**Example (trained index):**

```rust
use lancedb::{connect, index::{Index, scalar::BTreeIndexBuilder}};
let db = connect("data/sample-lancedb").execute().await?;
let table = db.open_table("my_table").execute().await?;
// Create a trained BTree index (includes existing data)
table
    .create_index(&["timestamp"], Index::BTree(BTreeIndexBuilder::default()))
    .train(true)  // Train with existing data (this is the default)
    .execute()
    .await?;
```

[Source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/index.rs#L266-L269)

#### `pub fn wait_timeout(self, d: Duration) -> Self`

Duration of time to wait for asynchronous indexing to complete. If not set, `create_index()` will not wait. This is not supported for `NativeTable` since indexing is synchronous.

[Source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/index.rs#L275-L278)

#### `pub async fn execute(self) -> Result<()>`

Executes the index creation operation.

[Source](https://github.com/lancedb/lancedb/blob/main/rust/lancedb/src/index.rs#L280-L282)

## Auto Trait Implementations

- `impl Freeze for IndexBuilder`
- `impl !RefUnwindSafe for IndexBuilder`
- `impl Send for IndexBuilder`
- `impl Sync for IndexBuilder`
- `impl Unpin for IndexBuilder`
- `impl UnsafeUnpin for IndexBuilder`
- `impl !UnwindSafe for IndexBuilder`
