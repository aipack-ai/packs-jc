# AipRegistryBuilder

## Overview

In `aiprog::registry`

```rust
pub struct AipRegistryBuilder { /* private fields */ }
```

## Methods

- [add_module](#method.add_module)
- [build](#method.build)
- [merge](#method.merge)
- [register_async](#method.register_async)
- [register_handler](#method.register_handler)
- [register_sync](#method.register_sync)

### add_module

```rust
pub fn add_module(self, module: M) -> Result
where
    M: AipModule,
```

### register_sync

```rust
pub fn register_sync(
    self,
    path: &str,
    handler: H,
) -> AipRegistryResult
where
    P: AipParams,
    R: AipOutput,
    H: AipSyncFnWrapper,
```

### register_async

```rust
pub fn register_async(
    self,
    path: &str,
    handler: H,
) -> AipRegistryResult
where
    P: AipParams,
    O: AipOutput,
    H: AipAsyncFnWrapper,
```

### register_handler

```rust
pub fn register_handler<H>(
    &mut self,
    path: &str,
    _handler: H,
) -> AipRegistryResult<()>
where
    H: AipHandler,
```

Register a handler using the [`AipHandler`](trait.AipHandler.html) trait. 

The handler’s metadata and closure are obtained from `H::create_definition`.

### merge

```rust
pub fn merge(self, other: AipRegistry) -> AipRegistryResult
```

Merge all entries from `other` into `self`, consuming `other`.

#### Errors

Returns [`AipRegistryError::DuplicatePath`](enum.AipRegistryError.html#variant.DuplicatePath) if any path from `other` already exists in `self`.

### build

```rust
pub fn build(self) -> AipRegistry
```

## Trait Implementations

### impl Default for AipRegistryBuilder

- [default](#method.default)

```rust
fn default() -> AipRegistryBuilder
```

Returns the "default value" for a type.

## Auto Trait Implementations

- impl `Freeze` for `AipRegistryBuilder`
- impl `!RefUnwindSafe` for `AipRegistryBuilder`
- impl `Send` for `AipRegistryBuilder`
- impl `Sync` for `AipRegistryBuilder`
- impl `Unpin` for `AipRegistryBuilder`
- impl `UnsafeUnpin` for `AipRegistryBuilder`
- impl `!UnwindSafe` for `AipRegistryBuilder`

## Blanket Implementations

- impl `Any` for T
- impl `Borrow` for T
- impl `BorrowMut` for T
- impl `From` for T
- impl `Instrument` for T
- impl `Into` for T
- impl `IntoEither` for T
- impl `PolicyExt` for T
- impl `TryFrom` for T
- impl `TryInto` for T
- impl `WithSubscriber` for T
- impl `AutoreleaseSafe` for T
- impl `MaybeSend` for T
- impl `MaybeSync` for T
