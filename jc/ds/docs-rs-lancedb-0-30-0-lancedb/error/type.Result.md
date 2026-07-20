# Type Alias `Result`

In `lancedb::error`

[Source](https://docs.rs/lancedb/0.30.0/src/lancedb/error.rs.html#95)

```text
pub type Result = 
            std::result::Result<T, Error>;
```

## Aliased Type

```text
pub enum Result {
    Ok(T),
    Err(
            Error),
}
```

## Variants

### Ok(T)

Contains the success value

### Err(Error)

Contains the error value
