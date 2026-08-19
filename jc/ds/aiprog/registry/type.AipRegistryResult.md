# AipRegistryResult

[Source](https://github.com/aiprog/aiprog)

## Overview

`AipRegistryResult` is a type alias in the `aiprog::registry` module representing the standard result type for registry operations.

```rust
pub type AipRegistryResult<T> = Result<T, AipRegistryError>;
```

## Aliased Type

```rust
pub enum AipRegistryResult<T> {
    Ok(T),
    Err(AipRegistryError),
}
```

## Variants

- `Ok(T)`: Contains the success value.
- `Err(AipRegistryError)`: Contains the error value.
