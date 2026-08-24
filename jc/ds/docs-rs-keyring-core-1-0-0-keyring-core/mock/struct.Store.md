# `Store` in `keyring_core::mock`

[`keyring_core`](../../keyring_core/index.html) 1.0.0 :: [`mock`](index.html)

## Struct `Store`

[Source](../../src/keyring_core/mock.rs.html#197-200)

```rust
pub struct Store {
    pub id: String,
    pub inner: Mutex<RefCell<Vec<Arc<Cred>>>>,
}
```

The builder for mock credentials.

Mock credentials are stored in a vector so they can be reused for entries with the same service and user. Although a hash map might be faster, the vector implementation is simpler.

## Fields

- `id: String`
- `inner: Mutex<RefCell<Vec<Arc<Cred>>>>`

## Implementations

### `impl Store`

[Source](../../src/keyring_core/mock.rs.html#211-225)

#### `pub fn new() -> Result<Arc<Store>>`

Creates a new mock credential store.

## Trait Implementations

### `impl CredentialStoreApi for Store`

[Source](../../src/keyring_core/mock.rs.html#227-312)

#### `fn vendor(&self) -> String`

The name of the “vendor” that provides this store.

[Read more](../api/trait.CredentialStoreApi.html#tymethod.vendor)

#### `fn id(&self) -> String`

The ID of this credential store instance.

[Read more](../api/trait.CredentialStoreApi.html#tymethod.id)

#### `fn build(
    &self,
    service: &str,
    user: &str,
    mods: Option<&HashMap<&str, &str>>,
) -> Result<Entry>`

Builds a mock credential for the specified service and user. No modifiers are allowed.

Because mocks do not persist beyond the lifetime of their entry, all mocks initially have no passwords.

#### `fn search(&self, spec: &HashMap<&str, &str>) -> Result<Vec<Entry>>`

Searches for mock credentials matching the specified criteria.

Attributes other than `service` and `user` are ignored. Their values are used in unanchored substring searches against the specifier.

#### `fn as_any(&self) -> &dyn Any`

Gets an [`Any`](https://doc.rust-lang.org/nightly/core/any/trait.Any.html) reference to the mock credential builder.

#### `fn persistence(&self) -> CredentialPersistence`

Indicates that this keystore keeps the password in the entry.

#### `fn debug_fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result`

Exposes the concrete debug formatter for use through the `CredentialStore` trait.

### `impl Debug for Store`

[Source](../../src/keyring_core/mock.rs.html#202-209)

#### `fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result`

Formats the value using the given formatter.

## Auto Trait Implementations

- `!Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `impl<T: 'static + ?Sized> Any for T`

#### `fn type_id(&self) -> TypeId`

Gets the `TypeId` of `self`.

### `impl<T: ?Sized> Borrow<T> for T`

#### `fn borrow(&self) -> &T`

Immutably borrows from an owned value.

### `impl<T: ?Sized> BorrowMut<T> for T`

#### `fn borrow_mut(&mut self) -> &mut T`

Mutably borrows from an owned value.

### `impl<T> From<T> for T`

#### `fn from(t: T) -> T`

Returns the argument unchanged.

### `impl<T, U> Into<U> for T where U: From<T>`

#### `fn into(self) -> U`

Calls `U::from(self)`.

This conversion uses whichever implementation of `From<T>` for `U` is provided.

### `impl<T, U> TryFrom<U> for T where U: Into<T>`

- Associated type: `Error = Infallible`

#### `fn try_from(value: U) -> Result<T, Infallible>`

Performs the conversion.

### `impl<T, U> TryInto<U> for T where U: TryFrom<T>`

- Associated type: `Error = <U as TryFrom<T>>::Error`

#### `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`

Performs the conversion.
