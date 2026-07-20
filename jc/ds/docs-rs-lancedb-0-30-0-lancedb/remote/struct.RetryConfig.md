# RetryConfig (in lancedb::remote)

## Description

How to handle retries for HTTP requests.

## Fields

- `retries: Option<u8>`  
  The number of times to retry a request if it fails.  
  You can also set the `LANCE_CLIENT_MAX_RETRIES` environment variable to set this value. Use an integer value.  
  The default is 3 retries.

- `connect_retries: Option<u8>`  
  The number of times to retry a request if it fails to connect.  
  You can also set the `LANCE_CLIENT_CONNECT_RETRIES` environment variable to set this value. Use an integer value.  
  The default is 3 retries.

- `read_retries: Option<u8>`  
  The number of times to retry a request if it fails to read.  
  You can also set the `LANCE_CLIENT_READ_RETRIES` environment variable to set this value. Use an integer value.  
  The default is 3 retries.

- `backoff_factor: Option<f32>`  
  The exponential backoff factor to use when retrying requests.  
  Between each retry, the client will wait for the amount of seconds: `{backoff factor} * (2 ** ({number of previous retries}))`.  
  You can also set the `LANCE_CLIENT_RETRY_BACKOFF_FACTOR` environment variable to set this value. Use a float value.  
  The default is 0.25. So the first retry will wait 0.25 seconds, the second retry will wait 0.5 seconds, the third retry will wait 1 second, etc.

- `backoff_jitter: Option<f32>`  
  The backoff jitter factor to use when retrying requests.  
  The backoff jitter is a random value between 0 and the jitter factor in seconds.  
  You can also set the `LANCE_CLIENT_RETRY_BACKOFF_JITTER` environment variable to set this value. Use a float value.  
  The default is 0.25. So between 0 and 0.25 seconds will be added to the sleep time between retries.

- `statuses: Option<Vec<u16>>`  
  The set of status codes to retry on.  
  You can also set the `LANCE_CLIENT_RETRY_STATUSES` environment variable to set this value. Use a comma-separated list of integer values.  
  Note that write operations will never be retried on 5xx errors as this may result in duplicated writes.  
  The default is 409, 429, 500, 502, 503, 504.

## Source (Struct Definition)

```text
pub struct RetryConfig {
    pub retries: Option<u8>,
    pub connect_retries: Option<u8>,
    pub read_retries: Option<u8>,
    pub backoff_factor: Option<f32>,
    pub backoff_jitter: Option<f32>,
    pub statuses: Option<Vec<u16>>,
}
```

## Trait Implementations

### Clone

- `fn clone(&self) -> RetryConfig`
- `fn clone_from(&mut self, source: &Self)` (provided by Clone trait)

### Debug

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### Default

- `fn default() -> RetryConfig`

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- Any
- ArchivePointee
- Borrow<T>
- BorrowMut<T>
- CloneToUninit
- Conv
- DropFlavorWrapper
- DynClone
- FmtForward
- From<T>
- FromRef<T>
- HasTypeWitness<W>
- Identity
- Instrument
- Into<U>
- IntoEither
- IntoShared<Shared>
- LayoutRaw
- Niching<NichedOption<T, N1>>
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
- TryFrom<U>
- TryInto<U>
- VZip<V>
- WithSubscriber
- Allocation
- ErasedDestructor
- MaybeSend (from opendal-core and reqsign-core)
- ResultError
- ResultType
