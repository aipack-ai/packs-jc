# CredentialStoreApi in `keyring_core::api` - Rust

## Trait `CredentialStoreApi`

**Copy item path:** `keyring_core::api::CredentialStoreApi`

[Source](../../src/keyring_core/api.rs.html#177-249)

```rust
pub trait CredentialStoreApi {
    // Required methods
    fn vendor(&self) -> String;

    fn id(&self) -> String;

    fn build(
        &self,
        service: &str,
        user: &str,
        modifiers: Option<&HashMap<&str, &str>>,
    ) -> Result<Entry>;

    fn as_any(&self) -> &dyn Any;

    // Provided methods
    fn search(&self, _spec: &HashMap<&str, &str>) -> Result<Vec<Entry>> { ... }

    fn persistence(&self) -> CredentialPersistence { ... }

    fn debug_fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result { ... }
}
```

The API that [credential stores](type.CredentialStore.html "type keyring_core::api::CredentialStore") implement.

## Required Methods

### `vendor`

[Source](../../src/keyring_core/api.rs.html#183)

```rust
fn vendor(&self) -> String
```

The name of the “vendor” that provides this store.

This allows clients to conditionalize their code for specific vendors. This string should not vary with versions of the store. It is recommended that it include the crate URL for the module provider.

### `id`

[Source](../../src/keyring_core/api.rs.html#193)

```rust
fn id(&self) -> String
```

The ID of this credential store instance.

IDs need not be unique across vendors or processes, but they serve as instance IDs within a process. If two credential store instances in a process have the same vendor and ID, then they are the same instance.

It is recommended that this include the version of the provider.

### `build`

[Source](../../src/keyring_core/api.rs.html#204-209)

```rust
fn build(
    &self,
    service: &str,
    user: &str,
    modifiers: Option<&HashMap<&str, &str>>,
) -> Result<Entry>
```

Create an entry specified by the given service and user, perhaps with additional creation-time modifiers.

The credential returned from this call must be a specifier, meaning that it can be used to create a credential later even if a matching credential existed in the store.

This typically has no effect on the content of the underlying store. A credential need not be persisted until its password is set.

### `as_any`

[Source](../../src/keyring_core/api.rs.html#228)

```rust
fn as_any(&self) -> &dyn Any
```

Return the inner store object cast to [`Any`](https://doc.rust-lang.org/nightly/core/any/trait.Any.html "trait core::any::Any").

This call is used to expose the `Debug` trait for stores.

## Provided Methods

### `search`

[Source](../../src/keyring_core/api.rs.html#220-223)

```rust
fn search(&self, _spec: &HashMap<&str, &str>) -> Result<Vec<Entry>>
```

Search for credentials that match the given specification.

Returns a list of the matching credentials.

Should return an [`Invalid`](../error/enum.Error.html#variant.Invalid "variant keyring_core::error::Error::Invalid") error if the specification is invalid.

The default implementation returns a [`NotSupportedByStore`](../error/enum.Error.html#variant.NotSupportedByStore "variant keyring_core::error::Error::NotSupportedByStore") error; that is, credential stores need not provide support for search.

### `persistence`

[Source](../../src/keyring_core/api.rs.html#235-237)

```rust
fn persistence(&self) -> CredentialPersistence
```

The lifetime of credentials produced by this builder.

A default implementation is provided for backward compatibility, since this API was added in a minor release. The default assumes that keystores use disk-based credential storage.

### `debug_fmt`

[Source](../../src/keyring_core/api.rs.html#246-248)

```rust
fn debug_fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result
```

The `Debug` trait call for the object.

This is used to implement the `Debug` trait on this type; it allows generic code to provide debug printing as provided by the underlying concrete object.

A no-op default implementation is provided.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

In older versions of Rust, dyn compatibility was called “object safety.”

## Implementors

### `CredentialStoreApi` for `keyring_core::mock::Store`

[Source](../../src/keyring_core/mock.rs.html#227-312)

### `CredentialStoreApi` for `keyring_core::sample::store::Store`

[Source](../../src/keyring_core/sample/store.rs.html#211-339)

Available only when the `sample` crate feature is enabled.
