# ConnectBuilder in lancedb::connection - Rust

## Struct ConnectBuilder

[Source](https://github.com/lancedb/lancedb)

```rust
pub struct ConnectBuilder { /* private fields */ }
```

`ConnectBuilder` is used to configure and establish a connection to a LanceDB database. It follows the builder pattern: create an instance with `new`, set options via methods, and finalize with `execute`.

### Associated Functions (Constructors)

- **`pub fn new(uri: &str) -> Self`**  
  Create a new `ConnectBuilder` with the given database URI.

### Methods

- **`pub fn api_key(self, api_key: &str) -> Self`**  
  Set the LanceDB Cloud API key. Only used for `db://` URIs.
  - `api_key` — The API key to use.

- **`pub fn region(self, region: &str) -> Self`**  
  Set the LanceDB Cloud region. Only used for `db://` URIs.
  - `region` — The region to use.

- **`pub fn host_override(self, host_override: &str) -> Self`**  
  Set the LanceDB Cloud host override. Only used for `db://` URIs.
  - `host_override` — The host override.

- **`pub fn database_options(self, database_options: &dyn DatabaseOptions) -> Self`**  
  Set database-specific options. See `ListingDatabaseOptions` for native databases, and `RemoteDatabaseOptions` for LanceDB Cloud/Enterprise.

- **`pub fn client_config(self, config: ClientConfig) -> Self`**  
  Set the client configuration for remote connections.

  Example:
  ```rust
  connect("db://my_database")
      .client_config(ClientConfig {
          timeout_config: TimeoutConfig {
              connect_timeout: Some(std::time::Duration::from_secs(5)),
              ..Default::default()
          },
          retry_config: RetryConfig {
              retries: Some(5),
              ..Default::default()
          },
          ..Default::default()
      });
  ```

- **`pub fn embedding_registry(self, registry: Arc<EmbeddingRegistry>) -> Self`**  
  Provide a custom `EmbeddingRegistry` for this connection.

- **`pub fn aws_creds(self, aws_creds: AwsCredential) -> Self`**  
  *(Deprecated)* Pass through `storage_options` instead. Provides AWS credentials for S3.

- **`pub fn storage_option(self, key: impl Into<String>, value: impl Into<String>) -> Self`**  
  Set a single storage layer option. See [LanceDB storage docs](https://docs.lancedb.com/storage/).

- **`pub fn storage_options(self, pairs: impl IntoIterator<Item = (impl Into<String>, impl Into<String>)>) -> Self`**  
  Set multiple storage layer options.

- **`pub fn namespace_client_property(self, key: impl Into<String>, value: impl Into<String>) -> Self`**  
  Set an additional property for the equivalent namespace client.

- **`pub fn namespace_client_properties(self, pairs: impl IntoIterator<Item = (impl Into<String>, impl Into<String>)>) -> Self`**  
  Set multiple additional properties for the equivalent namespace client.

- **`pub fn manifest_enabled(self, enabled: bool) -> Self`**  
  Enable or disable manifest-backed directory namespace mode for local native connections. When enabled, forces `dir_listing_to_manifest_migration_enabled=true`.

- **`pub fn read_consistency_interval(self, read_consistency_interval: Duration) -> Self`**  
  The interval at which to check for updates from other processes. Set to zero for strong consistency, or a non-zero duration for eventual consistency. Affects read operations only.

- **`pub fn session(self, session: Arc<Session>) -> Self`**  
  Set a custom session for object stores and caching. By default, a new session is created.

- **`pub async fn execute(self) -> Result<Connection>`**  
  Establish a connection to the database.

### Trait Implementations

- **`impl Debug for ConnectBuilder`**  
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### Auto Trait Implementations

- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!RefUnwindSafe`
- `!UnwindSafe`

### Blanket Implementations

The struct also inherits blanket implementations (e.g., `Any`, `Borrow`, `Into`, `TryFrom`, etc.) from the Rust standard library and third-party crates. These are not listed here for brevity.
