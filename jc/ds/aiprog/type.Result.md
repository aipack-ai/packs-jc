# Result

## Overview

- Crate: aiprog
- Source: [src/aiprog/error.rs.html](https://../src/aiprog/error.rs.html#5)

## Type Alias

```rust
pub type Result = Result<T, Error>;
```

## Aliased Type

```rust
pub enum Result {
    Ok(T),
    Err(Error),
}
```

## Variants

- `Ok(T)`: Contains the success value.
- `Err(Error)`: Contains the error value.
