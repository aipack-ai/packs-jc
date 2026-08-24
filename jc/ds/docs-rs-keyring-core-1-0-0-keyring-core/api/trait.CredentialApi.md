# CredentialApi in `keyring_core::api`

## Trait `CredentialApi`

The API that [`Credential`](type.Credential.html) implementations provide.

```rust
pub trait CredentialApi {
    // Required methods
    fn set_secret(&self, secret: &[u8]) -> Result<()>;

    fn get_secret(&self) -> Result<Vec<u8>>;

    fn delete_credential(&self) -> Result<()>;

    fn get_credential(&self) -> Result<Option<Arc<Credential>>>;

    fn get_specifiers(&self) -> Option<(String, String)>;

    fn as_any(&self) -> &dyn Any;

    // Provided methods
    fn set_password(&self, password: &str) -> Result<()> { ... }

    fn get_password(&self) -> Result<String> { ... }

    fn get_attributes(&self) -> Result<HashMap<String, String>> { ... }

    fn update_attributes(
        &self,
        _: &HashMap<&str, &str>,
    ) -> Result<()> { ... }

    fn debug_fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result { ... }
}
```

## Required methods

### `set_secret`

```rust
fn set_secret(&self, secret: &[u8]) -> Result<()>
```

Set the underlying credential’s protected data to the given byte array.

- If the password cannot be stored in a credential, return an [`Invalid`](../error/enum.Error.html#variant.Invalid) error.
- If the entry is a specifier and there is no matching credential, create a matching credential and save the data in it.
- If the entry is a specifier and there is more than one matching credential, return an [`Ambiguous`](../error/enum.Error.html#variant.Ambiguous) error.
- If the entry is a wrapper and the wrapped credential has been deleted, either recreate the wrapped credential and set its value or return a [`NoEntry`](../error/enum.Error.html#variant.NoEntry) error.
- Otherwise, set the value of the single matching credential.

If an entry is both a specifier and a wrapper, the store determines whether to recreate a deleted credential or fail with a `NoEntry` error.

### `get_secret`

```rust
fn get_secret(&self) -> Result<Vec<u8>>
```

Retrieve the protected data as a byte array from the underlying credential.

- If the entry is a specifier and there is no matching credential, return a [`NoEntry`](../error/enum.Error.html#variant.NoEntry) error.
- If the entry is a specifier and there is more than one matching credential, return an [`Ambiguous`](../error/enum.Error.html#variant.Ambiguous) error.
- If the entry is a wrapper and the wrapped credential has been deleted, return a [`NoEntry`](../error/enum.Error.html#variant.NoEntry) error.
- Otherwise, return the value of the single matching credential.

### `delete_credential`

```rust
fn delete_credential(&self) -> Result<()>
```

Delete the underlying credential.

- If the underlying credential does not exist, return a [`NoEntry`](../error/enum.Error.html#variant.NoEntry) error.
- If there is more than one matching credential, return an [`Ambiguous`](../error/enum.Error.html#variant.Ambiguous) error.

### `get_credential`

```rust
fn get_credential(&self) -> Result<Option<Arc<Credential>>>
```

Return a wrapper for the underlying credential.

If `self` is already a wrapper, implementations can return `None` to give `self` back to the client, or return a new wrapper for the same underlying credential. See the [keyring-core wiki page](https://github.com/open-source-cooperative/keyring-rs/wiki/Keyring-Core#specifier-credentials-vs-wrapper-credentials) for why the `None` option is available.

- If the underlying credential does not exist, return a [`NoEntry`](../error/enum.Error.html#variant.NoEntry) error.
- If there is more than one matching credential, return an [`Ambiguous`](../error/enum.Error.html#variant.Ambiguous) error.

### `get_specifiers`

```rust
fn get_specifiers(&self) -> Option<(String, String)>
```

Return the `(String, String)` pair for this credential, if any.

### `as_any`

```rust
fn as_any(&self) -> &dyn Any
```

Return the inner credential object cast to [`Any`](https://doc.rust-lang.org/nightly/core/any/trait.Any.html).

This call is used to expose the `Debug` trait for credentials.

## Provided methods

### `set_password`

```rust
fn set_password(&self, password: &str) -> Result<()>
```

Set the entry’s protected data to the given string.

This method has a default implementation in terms of [`set_secret`](#set_secret).

### `get_password`

```rust
fn get_password(&self) -> Result<String>
```

Retrieve the protected data as a UTF-8 string from the underlying credential.

This method has a default implementation in terms of [`get_secret`](#get_secret). If the data in the credential is not valid UTF-8, the default implementation returns a [`BadEncoding`](../error/enum.Error.html#variant.BadEncoding) error containing the data.

### `get_attributes`

```rust
fn get_attributes(&self) -> Result<HashMap<String, String>>
```

Return store-specific decorations on this entry’s credential.

The expected error and success cases are the same as with [`get_secret`](#get_secret).

A default implementation returns no attributes. Credential-store implementations that support attributes should override this method.

### `update_attributes`

```rust
fn update_attributes(&self, _: &HashMap<&str, &str>) -> Result<()>
```

Update the secure-store attributes on this entry’s credential.

- If the user supplies any attributes that cannot be updated, return an appropriate [`Invalid`](../error/enum.Error.html#variant.Invalid) error.
- Other expected error and success cases are the same as with [`get_secret`](#get_secret).

A default implementation returns a [`NotSupportedByStore`](../error/enum.Error.html#variant.Error::NotSupportedByStore) error.

### `debug_fmt`

```rust
fn debug_fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result
```

The `Debug` trait call for the object.

This is used to implement the `Debug` trait on this type and allows generic code to provide debug output through the underlying concrete object.

A no-op default implementation is provided.

## Dyn compatibility

This trait is **dyn compatible**.

In older versions of Rust, dyn compatibility was called “object safety.”

## Implementors

### `CredentialApi` for `Cred`

Implemented by [`Cred`](../mock/struct.Cred.html).

### `CredentialApi` for `CredKey`

Implemented by [`CredKey`](../sample/credential/struct.CredKey.html).

Available only when the crate feature `sample` is enabled.
