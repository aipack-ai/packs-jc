# `apple_native_keyring_store::protected` - Rust

## Module `protected`

**In crate:** [`apple_native_keyring_store`](../index.html)

[Source](../../src/apple_native_keyring_store/protected.rs.html#1-605)

## Protected Data credential store

iOS (and macOS on Apple Silicon) offers a secure storage service called *Protected Data*. This module provides a credential store for that service.

To use all the features of this module, your client application must be code-signed with a provisioning profile. Since command-line tools cannot be code-signed, there’s not much point in their using this module.

There are actually two distinct protected stores: one local to the device, and one that is synchronized with iCloud. If you create a store with `Store::new`, you get the default configuration in which the local store is used. If you create a store with `Store::new_with_configuration` and pass the string `true` for the `cloud-sync` key, then the iCloud-synchronized store is used instead. Use of the cloud-synchronized store is only available to applications that have the iCloud capability enabled in their provisioning profile.

For a given service/user pair, this module creates or searches for a generic password item whose *account* attribute holds the user and whose *service* attribute holds the service. Because of a quirk in the Protected Data API, neither the *account* nor the *service* may be the empty string. Empty strings are treated as wildcards when looking up credentials.

### Ambiguity

Both the local and cloud-synchronized stores are application-specific, in that each application is given its own *access group* in which it stores its items. Since there can be only one generic password item in each access group with a given *account* and *service*, an application that can access only one access group will never encounter ambiguity. It also means that, by default, applications can never share credentials for the same service and account.

Because there are occasions when credentials must be shared between applications, sandboxed applications can be given access to multiple access groups. When an application has been configured to have multiple access groups, its protected store will search across all those access groups for a given entry, so ambiguity is possible. To avoid this, an application can create one store for each available access group, passing the access group name as the value of the `access-group` modifier when creating each store. This is also how such an application can specify which group it wants to use when creating a new credential.

If you have retrieved a wrapper entry and want to know the access group of the underlying item, you can downcast the wrapper entry to the `Cred` type and inspect its `access_group` field. For more information, see the Apple developer documentation about sharing access groups among applications and the `tests` example code for ambiguity tests.

### Access control

Protected Data items *in the local store* can be created with varying levels of protection. This module uses a default access policy of “accessible when device is unlocked”, but entry modifiers can be used to change this. See the documentation for [`Store::build`](struct.Store.html#method.build) for details.

### Attributes

This store exposes no attributes.

### Search

This store exposes search over both the local and cloud-synchronized stores. You can search for credentials by service and/or user using case-sensitive exact matching, and you can restrict searches to a specific access group. If you specify neither a service nor a user, the search will return all credentials in the store or access group, subject to the restrictions described below.

The operating system, by design, does not expose the access policy on existing secrets in the store. Therefore, wrapper entries returned from search will always have the default access policy, not the policy of the entry that was found.

Items whose access policy requires user interaction will display an authentication dialog during the search. To avoid this, searches skip these entries by default. You can specify in the search specification that they should not be skipped, but this is not recommended.

## Module items

### Structs

#### [`Cred`](struct.Cred.html)

The representation of a generic password credential.

#### [`Store`](struct.Store.html)

The builder for iOS keychain credentials.

### Enums

#### [`AccessPolicy`](enum.AccessPolicy.html)

Access policies for Protected Data items.
