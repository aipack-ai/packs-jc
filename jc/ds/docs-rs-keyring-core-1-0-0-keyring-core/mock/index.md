# `keyring_core::mock` - Rust

## Module `mock`

### Mock credential store

To facilitate testing of clients, this crate provides a mock credential store that:

- Is platform-independent.
- Provides no persistence.
- Allows the client to specify return values, including errors, for each call.

The credentials in this store have no attributes.

To use this credential store instead of the default, call the following during application startup, before creating any entries:

```rust
keyring_core::set_default_store(keyring_core::mock::Store::new().unwrap());
```

You can then create entries as usual and call their standard methods to set, get, and delete passwords. The store is only persisted in memory, so all credentials are lost when the store is dropped.

To make an entry method call fail in a specific way, downcast the entry to [`Cred`](struct.Cred.html) and call [`set_error`](struct.Cred.html#method.set_error) with the appropriate error. The next entry method called on the credential will fail with the specified error. The error is then cleared, so the next call on the mock operates normally.

Setting an error does not affect the credential's value, if one exists. For example:

```rust
keyring_core::set_default_store(mock::Store::new().unwrap());

let entry = Entry::new("service", "user").unwrap();
entry
    .set_password("test")
    .expect("the entry's password is now test");

let mock: &mock::Cred = entry.as_any().downcast_ref().unwrap();

mock.set_error(Error::Invalid(
    "mock error".to_string(),
    "takes precedence".to_string(),
));

_ = entry
    .get_password()
    .expect_err("the error will be returned");

let val = entry
    .get_password()
    .expect("the error has been cleared");

assert_eq!(val, "test", "the error did not affect the password");
```

## Structs

### [`Cred`](struct.Cred.html)

The concrete mock credential.

### [`CredData`](struct.CredData.html)

The in-memory persisted data for a mock credential.

### [`Store`](struct.Store.html)

The builder for mock credentials.
