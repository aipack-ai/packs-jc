# `keyring_core::sample` - Rust

## Module `sample`

**Available on crate feature `sample` only.**

[Source](../../src/keyring_core/sample/mod.rs.html#1-90)

## Sample Credential Store

This sample store is provided for two purposes:

- It provides a cross-platform way to test your client code during development. To help with this, all of its internal structures are public.
- It provides a template for developers who want to write credential stores. The tests and source structure can be adapted.

This store is explicitly *not* for use in production applications. It is neither robust nor secure.

## Persistence

When creating an instance of this store, you specify whether you want the contents of the store to persist between runs. By default, they do not. There are two ways to specify persistence:

- Specify the `persist` modifier as `true`. The store is persisted in a file called `keyring-sample-store.ron` in the native platform shared temporary directory.
- Specify the `backing-file` modifier with a path to a file. The store is persisted in the specified file. If the `backing-file` modifier is specified, the `persist` modifier is ignored.

> **Warning:** A store’s backing file is *not* kept up to date as credentials are created, deleted, or modified in the store.

In-memory credentials are saved to the backing file only when explicitly requested or when a store is destroyed, that is, when the last reference to it is released. Credential state saved in a backing file from a prior run is loaded only when a store using that file is first created.

## Ambiguity

This store supports ambiguity: the ability to create multiple credentials associated with the same service name and username.

If you specify the `force-create` modifier when creating an entry, a new credential with an empty password is created immediately for the specified service name and username.

- If there was no existing credential for the service name and username, the newly created credential is the only one, so the returned entry is not ambiguous.
- If there was an existing credential for the service name and username, the returned entry is ambiguous.

Using the `force-create` modifier causes the created credential to have two additional attributes:

- `creation-date`: An HTTP-style date showing when the credential was created. This attribute cannot be updated or added to credentials that do not have it.
- `comment`: The string value of the `target` modifier. This attribute can be updated and added to credentials that do not have it.

## Attributes

In addition to the attributes described in the [Ambiguity](#ambiguity) section, credentials in this store have a single read-only attribute:

- `uuid`: The unique ID of the credential in the store.

## Search

This store implements credential search. Specifications can define regular expressions for:

- The `service` and `user` associated with a credential.
- The `comment` and `uuid` attributes of the credential.

All other key/value pairs in the specification are ignored. Credentials are returned only if *all* specified regular expressions match their corresponding values.

Search is implemented by iterating over every credential in the store. Because this is an in-memory store, searches are generally fast.

## Re-exports

- `pub use credential::CredKey;` - [struct `keyring_core::sample::credential::CredKey`](credential/struct.CredKey.html)
- `pub use store::Store;` - [struct `keyring_core::sample::store::Store`](store/struct.Store.html)

## Modules

- [`credential`](credential/index.html) - Module `keyring_core::sample::credential`
- [`store`](store/index.html) - Module `keyring_core::sample::store`
