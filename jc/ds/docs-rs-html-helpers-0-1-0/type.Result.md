# Result

In crate [`html_helpers`](../html_helpers/index.html) 0.1.0

Type alias for [`std::result::Result`](https://doc.rust-lang.org/nightly/core/result/enum.Result.html) with the error type [`Error`](enum.Error.html).

## Definition

[Source](../src/html_helpers/error.rs.html#3)

```text
pub type Result = Result<Error>;
```

## Aliased Type

```text
pub enum Result {
    Ok(T),
    Err(Error),
}
```

## Variants

- `Ok(T)` — Contains the success value (since 1.0.0)
- `Err(Error)` — Contains the error value (since 1.0.0)
