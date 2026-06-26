# Result in turso::connection - Rust

[turso](../index.html):: [connection](index.html)

## Type Alias Result

[Source](../../src/turso/connection.rs.html#15)

```
pub type Result = 
            [Result](https://doc.rust-lang.org/nightly/core/result/enum.Result.html "enum core::result::Result")Error>;
```

## Aliased Type

```
pub enum Result {
    Ok(T),
    Err(
            [Error](../enum.Error.html "enum turso::Error")),
}
```

## Variants

- ### Ok(T)
  Contains the success value

- ### Err( [Error](../enum.Error.html "enum turso::Error"))
  Contains the error value
