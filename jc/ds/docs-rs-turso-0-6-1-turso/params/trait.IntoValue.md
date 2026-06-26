# IntoValue

## In `turso::params`

This trait provides conversion from various types to a `Value` for use as query parameters.

### Trait Definition

```text
pub trait IntoValue {
    // Required method
    fn into_value(self) -> Result<Value>;
}
```

### Required Methods

- **`fn into_value(self) -> Result<Value>`**  
  Converts `self` into a `Value`, returning a `Result` (specifically `turso::Result<turso::value::Value>`).

### Implementors

- **`impl IntoValue for Result<Value>`**  
  An implementation for `Result<Value>` itself, allowing passthrough.

- **`impl<T> IntoValue for T`**  
  where  
  `T: TryInto<Value>`,  
  `T::Error: Into<Box<dyn Error + Send + Sync>>`  
  A generic implementation for any type that can be converted into `Value` via `TryInto`, with the error automatically boxed.
