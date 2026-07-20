# `Error` - lancedb::error

The `Error` enum represents all possible errors in the LanceDB crate.

## Definition

```rust
pub enum Error {
    InvalidTableName {
        name: String,
        reason: String,
    },
    InvalidInput {
        message: String,
    },
    TableNotFound {
        name: String,
        source: Box<dyn Error + Send + Sync>,
    },
    DatabaseNotFound {
        name: String,
    },
    DatabaseAlreadyExists {
        name: String,
    },
    IndexNotFound {
        name: String,
    },
    EmbeddingFunctionNotFound {
        name: String,
        reason: String,
    },
    TableAlreadyExists {
        name: String,
    },
    CreateDir {
        path: String,
        source: std::io::Error,
    },
    Schema {
        message: String,
    },
    Runtime {
        message: String,
    },
    Timeout {
        message: String,
    },
    ObjectStore {
        source: object_store::Error,
    },
    Lance {
        source: lance_core::error::Error,
    },
    Http {
        source: Box<dyn Error + Send + Sync>,
        request_id: String,
        status_code: Option<StatusCode>,
    },
    Retry {
        request_id: String,
        request_failures: u8,
        max_request_failures: u8,
        connect_failures: u8,
        max_connect_failures: u8,
        read_failures: u8,
        max_read_failures: u8,
        source: Box<dyn Error + Send + Sync>,
        status_code: Option<StatusCode>,
    },
    Arrow {
        source: arrow_schema::error::ArrowError,
    },
    NotSupported {
        message: String,
    },
    External {
        source: Box<dyn Error + Send + Sync>,
    },
    Other {
        message: String,
        source: Option<Box<dyn Error + Send + Sync>>,
    },
}
```

Source: [src/lancedb/error.rs](https://docs.rs/crate/lancedb/0.30.0/source/lancedb/error.rs)

## Variants

- `InvalidTableName` – fields: `name: String`, `reason: String`
- `InvalidInput` – field: `message: String`
- `TableNotFound` – fields: `name: String`, `source: Box<dyn Error + Send + Sync>`
- `DatabaseNotFound` – field: `name: String`
- `DatabaseAlreadyExists` – field: `name: String`
- `IndexNotFound` – field: `name: String`
- `EmbeddingFunctionNotFound` – fields: `name: String`, `reason: String`
- `TableAlreadyExists` – field: `name: String`
- `CreateDir` – fields: `path: String`, `source: std::io::Error`
- `Schema` – field: `message: String`
- `Runtime` – field: `message: String`
- `Timeout` – field: `message: String`
- `ObjectStore` – field: `source: object_store::Error`
- `Lance` – field: `source: lance_core::error::Error`
- `Http` – fields: `source: Box<dyn Error + Send + Sync>`, `request_id: String`, `status_code: Option<StatusCode>`. Status code associated with the error, if available. Not always present, e.g., on connection failure.
- `Retry` – fields: `request_id`, `request_failures`, `max_request_failures`, `connect_failures`, `max_connect_failures`, `read_failures`, `max_read_failures` (all `u8`), `source: Box<dyn Error + Send + Sync>`, `status_code: Option<StatusCode>`
- `Arrow` – field: `source: arrow_schema::error::ArrowError`
- `NotSupported` – field: `message: String`
- `External` – field: `source: Box<dyn Error + Send + Sync>`. External error pass through from user code.
- `Other` – fields: `message: String`, `source: Option<Box<dyn Error + Send + Sync>>`

## Trait Implementations

### `impl Debug for Error`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Display for Error`

```rust
fn fmt(&self, __snafu_display_formatter: &mut Formatter<'_>) -> Result
```

### `impl Error for Error`

- `fn description(&self) -> &str` *(deprecated)*
- `fn cause(&self) -> Option<&dyn Error>` *(deprecated)*
- `fn source(&self) -> Option<&(dyn Error + 'static)>`
- `fn provide<'a>(&'a self, request: &mut Request<'a>)` *(nightly-only)*

### `impl ErrorCompat for Error` (from snafu)

- `fn backtrace(&self) -> Option<&Backtrace>`
- `fn iter_chain(&self) -> ChainCompat<'_, '_>` (requires `AsErrorSource`)

### `impl From<ApiError> for Error` (feature `sentence-transformers`)

```rust
fn from(source: ApiError) -> Self
```

### `impl From<ArrowError> for Error`

```rust
fn from(source: ArrowError) -> Self
```

### `impl From<Box<dyn Error + Send + Sync>> for Error`

```rust
fn from(error: Box<dyn Error + Send + Sync>) -> Self
```

### `impl From<DataFusionError> for Error`

```rust
fn from(source: DataFusionError) -> Self
```

### `impl From<lance_core::error::Error> for Error`

```rust
fn from(source: Error) -> Self
```

### `impl From<object_store::Error> for Error`

```rust
fn from(source: Error) -> Self
```

### `impl From<object_store::path::Error> for Error`

```rust
fn from(source: Error) -> Self
```

### `impl From<candle_core::error::Error> for Error` (feature `sentence-transformers`)

```rust
fn from(source: Error) -> Self
```

### `impl From<PoisonError<T>> for Error`

```rust
fn from(e: PoisonError) -> Self
```

### `impl From<PolarsError> for Error` (feature `polars`)

```rust
fn from(source: PolarsError) -> Self
```

### `impl FromString for Error` (from snafu)

- `type Source = Box<dyn Error + Send + Sync>`
- `fn without_source(message: String) -> Self`
- `fn with_source(error: Self::Source, message: String) -> Self`

## Auto Trait Implementations

- `impl Freeze for Error`
- `impl !RefUnwindSafe for Error`
- `impl Send for Error`
- `impl Sync for Error`
- `impl Unpin for Error`
- `impl UnsafeUnpin for Error`
- `impl !UnwindSafe for Error`

## Blanket Implementations

- `impl Any for T` (where T: 'static + ?Sized)
- `impl ArchivePointee for T`
- `impl AsErrorSource for T` (where T: Error + 'static) (two variants)
- `impl Borrow<T> for T` (where T: ?Sized)
- `impl BorrowMut<T> for T` (where T: ?Sized)
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl HasTypeWitness<W> for T`
- `impl Identity for T`
- `impl Instrument for T`
- `impl Into<U> for T` (where U: From<T>)
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared`
- `impl LayoutRaw for T`
- `impl Niching<NichedOption<T, N1>> for N2`
- `impl Pipe for T`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T`
- `impl Same for T`
- `impl Tap for T`
- `impl ToString for T` (where T: Display + ?Sized)
- `impl TryConv for T`
- `impl TryFrom<U> for T` (where U: Into<T>)
- `impl TryInto<U> for T` (where U: TryFrom<T>)
- `impl TryInto<U> for T` (async)
- `impl VZip<V> for T`
- `impl WithSubscriber for T`
- `impl ErasedDestructor for T` (where T: 'static)
- `impl MaybeSend for T` (where T: Send) (two variants)
- `impl ResultError for E` (where E: Send + Debug + Sync)
