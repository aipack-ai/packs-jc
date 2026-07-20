# Module remote

This module contains a remote client for a LanceDB server. This is used to communicate with LanceDB cloud. It can also serve as an example for building client/server applications with LanceDB or as a client for some other custom LanceDB service.

## Structs

- [ClientConfig](struct.ClientConfig.html) - Configuration for the LanceDB Cloud HTTP client.
- [RemoteDatabaseOptions](struct.RemoteDatabaseOptions.html)
- [RemoteDatabaseOptionsBuilder](struct.RemoteDatabaseOptionsBuilder.html)
- [RetryConfig](struct.RetryConfig.html) - How to handle retries for HTTP requests.
- [TimeoutConfig](struct.TimeoutConfig.html) - How to handle timeouts for HTTP requests.
- [TlsConfig](struct.TlsConfig.html) - Configuration for TLS/mTLS settings.

## Traits

- [HeaderProvider](trait.HeaderProvider.html) - Trait for providing custom headers for each request.
