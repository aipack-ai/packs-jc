# `Store` in `keyring_core::sample::store`

[ keyring_core ](../../index.html) :: [ sample ](../index.html) :: [ store ](index.html)

Available on **crate feature `sample`** only.

## Struct `Store`

```rust
pub struct Store {
    pub id: String,
    pub creds: CredMap,
    pub backing: Option<String>,
    pub self_ref: RwLock<SelfRef>,
}
```

[Source](../../../src/keyring_core/sample/store.rs.html#66-71)

A credential store.

The credential data is kept in the `CredMap`. The store keeps its index in the `STORES` vector so that it can obtain a pointer to itself whenever it needs to build a credential.

## Fields

- `id: String`
- `creds: CredMap`
- `backing: Option<String>`
- `self_ref: RwLock<SelfRef>`

## Associated Functions and Methods

### `new`

```rust
pub fn new() -> Result<Arc>
```

[Source](../../../src/keyring_core/sample/store.rs.html#102-104)

Creates a new store with a default configuration.

The default configuration is empty and has no backing file.

### `new_with_configuration`

```rust
pub fn new_with_configuration(
    config: &HashMap<&str, &str>,
) -> Result<Arc>
```

[Source](../../../src/keyring_core/sample/store.rs.html#110-125)

Creates a new store with a user-specified configuration.

The allowed configuration keys are:

- `persist`
- `backing-file`

See the module documentation for details about how these options affect the store's behavior.

### `new_with_backing`

```rust
pub fn new_with_backing(path: &str) -> Result<Arc>
```

[Source](../../../src/keyring_core/sample/store.rs.html#132-137)

Creates a new store from a backing file.

The backing file must be a valid path, but it need not exist. If it does not exist, the store starts empty. If it does exist, the store loads its initial contents from the file.

### `save`

```rust
pub fn save(&self) -> Result<()>
```

[Source](../../../src/keyring_core/sample/store.rs.html#148-157)

Saves the current state of the store to its backing file.

This is a no-op if there is no backing file.

Stores save themselves to their backing file when they go out of scope and are dropped. Calling `save` explicitly can create a snapshot, protect against crashes, or allow the store state to be passed to another process.

### `new_internal`

```rust
pub fn new_internal(
    creds: CredMap,
    backing: Option<String>,
) -> Arc
```

[Source](../../../src/keyring_core/sample/store.rs.html#160-180)

Creates a store with the given credentials and backing file.

### `load_credentials`

```rust
pub fn load_credentials(path: &str) -> Result<CredMap>
```

[Source](../../../src/keyring_core/sample/store.rs.html#185-194)

Loads store content from a backing file.

If the backing file does not exist, the returned store is empty.

## Trait Implementations

### `CredentialStoreApi`

```rust
impl CredentialStoreApi for Store
```

[Source](../../../src/keyring_core/sample/store.rs.html#211-339)

#### `vendor`

```rust
fn vendor(&self) -> String
```

Returns the store vendor.

See the API documentation for details.

#### `id`

```rust
fn id(&self) -> String
```

Returns the store ID.

The store ID is based on its sequence number in the list of created stores.

#### `build`

```rust
fn build(
    &self,
    service: &str,
    user: &str,
    mods: Option<&HashMap<&str, &str>>,
) -> Result<Entry>
```

Builds an entry for the specified service and user.

The only modifier that can be specified is `force-create`, which forces immediate credential creation and can be used to create ambiguity.

When `force-create` is specified, the created credential receives:

- An empty password or secret
- A `comment` attribute containing the modifier's value
- A `creation_date` attribute containing the current local time as a string

#### `search`

```rust
fn search(
    &self,
    spec: &HashMap<&str, &str>,
) -> Result<Vec<Entry>>
```

Searches for credentials matching the given specification.

The specification must contain exactly two keys:

- `service`
- `user`

Both values must be valid regular expressions. Every credential whose service name matches the service regular expression and whose username matches the user regular expression is returned. Matching is performed against substrings, so an empty string matches every value.

#### `debug_fmt`

```rust
fn debug_fmt(
    &self,
    f: &mut Formatter<'_>,
) -> std::fmt::Result
```

Formats the store for debugging.

See the API documentation for details.

#### `as_any`

```rust
fn as_any(&self) -> &dyn Any
```

Returns the inner store object cast to `Any`.

#### `persistence`

```rust
fn persistence(&self) -> CredentialPersistence
```

Returns the lifetime of credentials produced by this builder.

See the API documentation for details.

### `Debug`

```rust
impl Debug for Store

fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result
```

Formats the value using the given formatter.

[Source](../../../src/keyring_core/sample/store.rs.html#73-82)

### `Drop`

```rust
impl Drop for Store

fn drop(&mut self)
```

Executes the destructor for this type.

[Source](../../../src/keyring_core/sample/store.rs.html#84-96)

The nightly-only `pin_drop` method is also available through the `Drop` trait:

```rust
fn pin_drop(self: Pin<&mut Self>)
```

## Auto Trait Implementations

- `!Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `Any`

```rust
impl<T> Any for T
where
    T: 'static + ?Sized,
```

```rust
fn type_id(&self) -> TypeId
```

Returns the `TypeId` of `self`.

### `Borrow`

```rust
impl<T> Borrow<T> for T
where
    T: ?Sized,
```

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### `BorrowMut`

```rust
impl<T> BorrowMut<T> for T
where
    T: ?Sized,
```

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### `From`

```rust
impl<T> From<T> for T
```

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

### `Into`

```rust
impl<T, U> Into<U> for T
where
    U: From<T>,
```

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

### `TryFrom`

```rust
impl<T, U> TryFrom<U> for T
where
    U: Into<T>,
```

```rust
type Error = Infallible;

fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

### `TryInto`

```rust
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
```

```rust
type Error = <U as TryFrom<T>>::Error;

fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
