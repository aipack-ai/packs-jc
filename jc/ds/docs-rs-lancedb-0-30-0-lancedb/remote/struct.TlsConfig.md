# TlsConfig in lancedb::remote - Rust

Configuration for TLS/mTLS settings.

## Struct Definition

```text
pub struct TlsConfig {
    pub cert_file: Option<String>,
    pub key_file: Option<String>,
    pub ssl_ca_cert: Option<String>,
    pub assert_hostname: bool,
}
```

## Fields

- `cert_file` – Path to the client certificate file (PEM format).
- `key_file` – Path to the client private key file (PEM format).
- `ssl_ca_cert` – Path to the CA certificate file for server verification (PEM format).
- `assert_hostname` – Whether to verify the hostname in the server’s certificate. Defaults to `true`.

## Trait Implementations

### Clone

```text
fn clone(&self) -> TlsConfig
fn clone_from(&mut self, source: &Self)
```

### Debug

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### Default

```text
fn default() -> Self
```

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- Allocation
- Any
- ArchivePointee
- Borrow
- BorrowMut
- CloneToUninit
- Conv
- DropFlavorWrapper
- DynClone
- ErasedDestructor
- FmtForward
- From
- FromRef
- HasTypeWitness
- Identity
- Instrument
- Into
- IntoEither
- IntoShared
- LayoutRaw
- MaybeSend (2 implementations)
- Niching
- Pipe
- Pointable
- Pointee
- PolicyExt
- ResultError
- ResultType
- Same
- Tap
- ToOwned
- TryConv
- TryFrom
- TryInto (2 implementations)
- VZip
- WithSubscriber
