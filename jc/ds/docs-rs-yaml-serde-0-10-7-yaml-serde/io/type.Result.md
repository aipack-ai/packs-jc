# `yaml_serde::io::Result`

## In `yaml_serde::io`

**Version:** 1.0.0  
**Source:** [core/io/error.rs](https://doc.rust-lang.org/nightly/src/core/io/error.rs.html#72)

## Type Alias

```rust
pub type Result<T> = std::result::Result<T, Error>;
```

A specialized [`Result`](https://doc.rust-lang.org/nightly/core/result/enum.Result.html "enum core::result::Result") type for I/O operations.

This type is broadly used across [`std::io`](../../std/io/index.html) for operations that may produce an error.

The alias avoids writing [`io::Error`](struct.Error.html "struct yaml_serde::io::Error") directly and otherwise maps directly to [`Result`](https://doc.rust-lang.org/nightly/core/result/enum.Result.html "enum core::result::Result").

Although Rust style usually recommends importing types directly, `Result` aliases are often kept qualified to distinguish them from [`core::result::Result`](https://doc.rust-lang.org/nightly/core/result/enum.Result.html "enum core::result::Result"). Users of this alias generally write `io::Result` rather than shadowing the prelude's `Result` import.

## Example

A convenience function that propagates an I/O error to its caller:

```rust
use std::io;
use std::io::Read;

fn get_string() -> io::Result<String> {
    let mut buffer = String::new();
    io::stdin().read_to_string(&mut buffer)?;
    Ok(buffer)
}
```

## Underlying Result Variants

Because this is a type alias for `std::result::Result<T, Error>`, it has the following variants:

### `Ok(T)`

Contains the success value.

### `Err(Error)`

Contains the I/O error value.
