# AsType

[Source](../src/value_ext/json/as_type_str.rs.html#4-6)

Part of [value_ext](../value_ext/index.html) 0.1.5

```text
pub trait AsType<'a>: Sized {
    fn from_value(value: &'a Value) -> Result<Self, JsonValueExtError>;
}
```

## Required Methods

- `fn from_value(value: &'a Value) -> Result<Self, JsonValueExtError>`

## Dyn Compatibility

This trait is **not** dyn compatible.

## Implementations on Foreign Types

- `impl AsType<'_> for bool` ([Source](../src/value_ext/json/as_type_num.rs.html#59-63))
  - `fn from_value(value: &Value) -> Result<bool, JsonValueExtError>`
- `impl AsType<'_> for f64` ([Source](../src/value_ext/json/as_type_num.rs.html#5-9))
  - `fn from_value(value: &Value) -> Result<f64, JsonValueExtError>`
- `impl AsType<'_> for i32` ([Source](../src/value_ext/json/as_type_num.rs.html#29-36))
  - `fn from_value(value: &Value) -> Result<i32, JsonValueExtError>`
- `impl AsType<'_> for i64` ([Source](../src/value_ext/json/as_type_num.rs.html#17-21))
  - `fn from_value(value: &Value) -> Result<i64, JsonValueExtError>`
- `impl AsType<'_> for u32` ([Source](../src/value_ext/json/as_type_num.rs.html#44-51))
  - `fn from_value(value: &Value) -> Result<u32, JsonValueExtError>`
- `impl AsType<'_> for Option<bool>` ([Source](../src/value_ext/json/as_type_num.rs.html#65-69))
  - `fn from_value(value: &Value) -> Result<Option<bool>, JsonValueExtError>`
- `impl AsType<'_> for Option<f64>` ([Source](../src/value_ext/json/as_type_num.rs.html#11-15))
  - `fn from_value(value: &Value) -> Result<Option<f64>, JsonValueExtError>`
- `impl AsType<'_> for Option<i32>` ([Source](../src/value_ext/json/as_type_num.rs.html#38-42))
  - `fn from_value(value: &Value) -> Result<Option<i32>, JsonValueExtError>`
- `impl AsType<'_> for Option<i64>` ([Source](../src/value_ext/json/as_type_num.rs.html#23-27))
  - `fn from_value(value: &Value) -> Result<Option<i64>, JsonValueExtError>`
- `impl AsType<'_> for Option<u32>` ([Source](../src/value_ext/json/as_type_num.rs.html#53-57))
  - `fn from_value(value: &Value) -> Result<Option<u32>, JsonValueExtError>`
- `impl AsType<'_> for Vec<bool>` ([Source](../src/value_ext/json/as_type_vec.rs.html#56-69))
  - `fn from_value(value: &Value) -> Result<Vec<bool>, JsonValueExtError>`
- `impl AsType<'_> for Vec<f64>` ([Source](../src/value_ext/json/as_type_vec.rs.html#41-54))
  - `fn from_value(value: &Value) -> Result<Vec<f64>, JsonValueExtError>`
- `impl AsType<'_> for Vec<i64>` ([Source](../src/value_ext/json/as_type_vec.rs.html#26-39))
  - `fn from_value(value: &Value) -> Result<Vec<i64>, JsonValueExtError>`
- `impl<'a> AsType<'a> for &'a Vec<Value>` ([Source](../src/value_ext/json/as_type_vec.rs.html#5-9))
  - `fn from_value(value: &'a Value) -> Result<&'a Vec<Value>, JsonValueExtError>`
- `impl<'a> AsType<'a> for &'a str` ([Source](../src/value_ext/json/as_type_str.rs.html#8-12))
  - `fn from_value(value: &'a Value) -> Result<&'a str, JsonValueExtError>`
- `impl<'a> AsType<'a> for Option<&'a str>` ([Source](../src/value_ext/json/as_type_str.rs.html#14-18))
  - `fn from_value(value: &'a Value) -> Result<Option<&'a str>, JsonValueExtError>`
- `impl<'a> AsType<'a> for Vec<&'a str>` ([Source](../src/value_ext/json/as_type_vec.rs.html#11-24))
  - `fn from_value(value: &'a Value) -> Result<Vec<&'a str>, JsonValueExtError>`

## Implementors

*(No implementors listed in this documentation)*
