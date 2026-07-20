# TimeoutConfig in lancedb::remote - Rust

## TimeoutConfig

**Location:** `lancedb::remote`

**Source:** [client.rs lines 141–173](../../src/lancedb/remote/client.rs.html#141-173)

How to handle timeouts for HTTP requests.

### Fields

- **`timeout`:** `Option<Duration>`  
  The overall timeout for the entire request (connection, send, and read).  
  Set via `LANCE_CLIENT_TIMEOUT` environment variable (seconds). Default: no timeout.

- **`connect_timeout`:** `Option<Duration>`  
  The timeout for creating a connection to the server.  
  Set via `LANCE_CLIENT_CONNECT_TIMEOUT` (seconds). Default: 120 seconds.

- **`read_timeout`:** `Option<Duration>`  
  The timeout for reading a response from the server.  
  Set via `LANCE_CLIENT_READ_TIMEOUT` (seconds). Default: 300 seconds.

- **`pool_idle_timeout`:** `Option<Duration>`  
  The timeout for keeping idle connections alive.  
  Set via `LANCE_CLIENT_CONNECTION_TIMEOUT` (seconds). Default: 300 seconds.

### Struct Definition

```rust
pub struct TimeoutConfig {
    pub timeout: Option<Duration>,
    pub connect_timeout: Option<Duration>,
    pub read_timeout: Option<Duration>,
    pub pool_idle_timeout: Option<Duration>,
}
```

### Trait Implementations

- **Clone** – Provides `clone(&self) -> TimeoutConfig` and `clone_from(&mut self, source: &Self)`.
- **Debug** – Provides `fmt(&self, f: &mut Formatter<'_>) -> Result`.
- **Default** – Provides `default() -> TimeoutConfig`.

### Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

### Blanket Implementations

(Selected – full list available in the original documentation)

- `Any` (if T: 'static + ?Sized)
- `ArchivePointee` – associated type `ArchivedMetadata = ()`; method `pointer_metadata(_: &ArchivedMetadata) -> ...`
- `Borrow<T>` – `borrow(&self) -> &T`
- `BorrowMut<T>` – `borrow_mut(&mut self) -> &mut T`
- `CloneToUninit` – unsafe `clone_to_uninit(&self, dest: *mut u8)`
- `Conv` – `conv(self) -> T`
- `DropFlavorWrapper<T>` – associated type `Flavor = MayDrop`
- `DynClone` – `__clone_box(&self, _: Private) -> *mut ()`
- `FmtForward` – methods for formatting (e.g., `fmt_binary`, `fmt_display`, etc.)
- `From<T>` – `from(t: T) -> T`
- `FromRef<T>` – `from_ref(input: &T) -> T`
- `HasTypeWitness<W>` – constant `WITNESS: W`
- `Identity` – constant `TYPE_EQ` and associated type `Type = T`
- `Instrument` – `instrument(self, span: Span) -> Instrumented` and `in_current_span(self) -> Instrumented`
- `Into<U>` – `into(self) -> U`
- `IntoEither` – `into_either(self, into_left: bool) -> Either` and `into_either_with(self, into_left: F) -> Either`
- `IntoShared<Shared>` – `into_shared(self) -> Shared`
- `LayoutRaw` – `layout_raw(_: Metadata) -> Result<Layout, LayoutError>`
- `Niching<NichedOption<T, N1>>` – `is_niched(...)` and `resolve_niched(...)`
- `Pipe` – various piping methods (`pipe`, `pipe_ref`, `pipe_ref_mut`, etc.)
- `Pointable` – associated constant `ALIGN`, associated type `Init = T`, methods `init`, `deref`, `deref_mut`, `drop`
- `Pointee` – associated type `Metadata = ()`
- `PolicyExt` – `and(self, other: P) -> And` and `or(self, other: P) -> Or`
- `Same` – associated type `Output = T`
- `Tap` – tapping methods (`tap`, `tap_mut`, `tap_borrow`, etc.)
- `ToOwned` – associated type `Owned = T`, methods `to_owned` and `clone_into`
- `TryConv` – `try_conv(self) -> Result<T, Error>`
- `TryFrom<U>` – associated type `Error = Infallible`, `try_from(value: U) -> Result<T, Self::Error>`
- `TryInto<U>` – associated type `Error`, `try_into(self) -> Result<U, Self::Error>` (two versions: sync and async)
- `VZip<V>` – `vzip(self) -> V`
- `WithSubscriber` – `with_subscriber(self, subscriber: S) -> WithDispatch` and `with_current_subscriber(self) -> WithDispatch`
- `Allocation` (if T: RefUnwindSafe + Send + Sync)
- `ErasedDestructor` (if T: 'static)
- `MaybeSend` (if T: Send) – two impl blocks from different crates
- `ResultError` (if E: Send + Debug + Sync)
- `ResultType` (if T: Send + Clone + Sync + Debug)
