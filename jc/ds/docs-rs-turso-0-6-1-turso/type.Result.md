# Result

Type alias in turso 0.6.1

## Type Alias

Source: `../src/turso/lib.rs.html#136`

```text
pub type Result = Result<T, Error>;
```

## Aliased Type

```text
pub enum Result {
    Ok(T),
    Err(Error),
}
```

## Variants

- Ok(T) — Contains the success value
- Err(Error) — Contains the error value

## Trait Implementations

### impl IntoValue for Result<Value>

Source: `../src/turso/params.rs.html#278-282`

```text
impl IntoValue for Result<Value> {
    fn into_value(self) -> Result<Value>;
}
```

- **fn into_value(self) -> Result<Value>** – Converts the value into a `Result`.
