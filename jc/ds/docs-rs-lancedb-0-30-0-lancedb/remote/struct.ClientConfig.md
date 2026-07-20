# ClientConfig in lancedb::remote

Configuration for the LanceDB Cloud HTTP client.

## Struct Definition

```
pub struct ClientConfig {
    pub timeout_config: TimeoutConfig,
    pub retry_config: RetryConfig,
    pub user_agent: String,
    pub extra_headers: HashMap<String, String>,
    pub id_delimiter: Option<String>,
    pub tls_config: Option<TlsConfig>,
    pub header_provider: Option<Arc<dyn HeaderProvider>>,
    pub user_id: Option<String>,
}
```

**Source:** `lancedb/src/remote/client.rs` (lines 52-74)

## Fields

- `timeout_config: TimeoutConfig` — Timeout configuration for HTTP requests.
- `retry_config: RetryConfig` — Retry configuration for HTTP requests.
- `user_agent: String` — User agent to use for requests. The default provides the library name and version.
- `extra_headers: HashMap<String, String>` — Additional headers to include in every request.
- `id_delimiter: Option<String>` — The delimiter to use when constructing object identifiers. If not default, passes as query parameter.
- `tls_config: Option<TlsConfig>` — TLS configuration for mTLS support.
- `header_provider: Option<Arc<dyn HeaderProvider>>` — Provider for custom headers to be added to each request.
- `user_id: Option<String>` — User identifier for tracking purposes. This is sent as the `x-lancedb-user-id` header in requests to LanceDB Cloud/Enterprise. It can be set directly, or via the `LANCEDB_USER_ID` environment variable. Alternatively, set `LANCEDB_USER_ID_ENV_KEY` to specify another environment variable that contains the user ID value.

## Implementations

### `impl ClientConfig`

#### `pub fn resolve_user_id(&self) -> Option<String>`

Resolve the user ID from the config or environment variables.

**Resolution order:**

1. If `user_id` is set in the config, use that value.
2. If `LANCEDB_USER_ID` environment variable is set, use that value.
3. If `LANCEDB_USER_ID_ENV_KEY` is set, read the env var it points to.
4. Otherwise, return `None`.

**Source:** `lancedb/src/remote/client.rs` (lines 109-137)

## Trait Implementations

### `impl Clone for ClientConfig`

- `fn clone(&self) -> ClientConfig` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### `impl Debug for ClientConfig`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### `impl Default for ClientConfig`

- `fn default() -> Self` — Returns the "default value" for a type.

## Auto Trait Implementations

- `Freeze` for `ClientConfig`
- `!RefUnwindSafe` for `ClientConfig`
- `Send` for `ClientConfig`
- `Sync` for `ClientConfig`
- `Unpin` for `ClientConfig`
- `UnsafeUnpin` for `ClientConfig`
- `!UnwindSafe` for `ClientConfig`

## Blanket Implementations

- `Any` for T where T: 'static + ?Sized
- `ArchivePointee` for T
- `Borrow<T>` for T where T: ?Sized
- `BorrowMut<T>` for T where T: ?Sized
- `CloneToUninit` for T where T: Clone
- `Conv` for T
- `DropFlavorWrapper<T>` for T
- `DynClone` for T where T: Clone
- `ErasedDestructor` for T where T: 'static
- `FmtForward` for T
- `From<T>` for T
- `FromRef<T>` for T where T: Clone
- `HasTypeWitness<W>` for T where W: MakeTypeWitness, T: ?Sized
- `Identity` for T where T: ?Sized
- `Instrument` for T
- `Into<U>` for T where U: From<T>
- `IntoEither` for T
- `IntoShared<Shared>` for Unshared where Shared: FromUnshared
- `LayoutRaw` for T
- `MaybeSend` for T where T: Send
- `Niching<NichedOption<T, N1>>` for N2 where T: SharedNiching, N1: Niching, N2: Niching
- `Pipe` for T where T: ?Sized
- `Pointable` for T
- `Pointee` for T
- `PolicyExt` for T where T: ?Sized
- `ResultError` for E where E: Send + Debug + Sync
- `ResultType` for T where T: Send + Clone + Sync + Debug
- `Same` for T
- `Tap` for T
- `ToOwned` for T where T: Clone
- `TryConv` for T
- `TryFrom<U>` for T where U: Into<T>
- `TryInto<U>` for T where U: TryFrom<T>
- `TryInto<U>` for T where U: TryFrom<T> (async-convert)
- `VZip<V>` for T where V: MultiLane
- `WithSubscriber` for T

## Related Types

- `TimeoutConfig` — Timeout configuration.
- `RetryConfig` — Retry configuration.
- `TlsConfig` — TLS configuration for mTLS support.
- `HeaderProvider` — Trait for providing custom headers.
