# Trait LuaExt

Convenient Lua Value extension

TODO: Will need to handle the case where the found value is not of correct type. Probably should return `Result>`

## Required Methods

- [`x_as_bool`](#tymethod.x_as_bool)
- [`x_as_f64`](#tymethod.x_as_f64)
- [`x_as_i64`](#tymethod.x_as_i64)
- [`x_as_list`](#tymethod.x_as_list)
- [`x_as_lua_str`](#tymethod.x_as_lua_str)
- [`x_get_bool`](#tymethod.x_get_bool)
- [`x_get_f64`](#tymethod.x_get_f64)
- [`x_get_i64`](#tymethod.x_get_i64)
- [`x_get_string`](#tymethod.x_get_string)
- [`x_get_value`](#tymethod.x_get_value)
- [`x_is_null`](#tymethod.x_is_null)
- [`x_to_string`](#tymethod.x_to_string)
- [`x_try_get_bool`](#tymethod.x_try_get_bool)
- [`x_try_get_f64`](#tymethod.x_try_get_f64)
- [`x_try_get_i64`](#tymethod.x_try_get_i64)
- [`x_try_get_string`](#tymethod.x_try_get_string)
- [`x_try_get_value`](#tymethod.x_try_get_value)

```js
pub trait LuaExt {
    // Required methods
    fn x_is_null(&self) -> bool;
    fn x_as_lua_str(&self) -> Option;
    fn x_as_i64(&self) -> Option<i64>;
    fn x_as_f64(&self) -> Option<f64>;
    fn x_as_bool(&self) -> Option<bool>;
    fn x_to_string(&self) -> Option<String>;
    fn x_get_value(&self, key: &str) -> Option;
    fn x_get_string(&self, key: &str) -> Option<String>;
    fn x_get_bool(&self, key: &str) -> Option<bool>;
    fn x_get_i64(&self, key: &str) -> Option<i64>;
    fn x_get_f64(&self, key: &str) -> Option<f64>;
    fn x_try_get_value(&self, key: &str) -> Result<Option>;
    fn x_try_get_string(&self, key: &str) -> Result<Option<String>>;
    fn x_try_get_bool(&self, key: &str) -> Result<Option<bool>>;
    fn x_try_get_i64(&self, key: &str) -> Result<Option<i64>>;
    fn x_try_get_f64(&self, key: &str) -> Result<Option<f64>>;
    fn x_as_list(&self) -> Option<Vec>;
}
```

### Method Details

#### `x_is_null`
```js
fn x_is_null(&self) -> bool
```
Return true if NULL, Nil, or None (for `Option`).

#### `x_as_lua_str`
```js
fn x_as_lua_str(&self) -> Option
```

#### `x_as_i64`
```js
fn x_as_i64(&self) -> Option<i64>
```
Note: Will round if floating number.

#### `x_as_f64`
```js
fn x_as_f64(&self) -> Option<f64>
```

#### `x_as_bool`
```js
fn x_as_bool(&self) -> Option<bool>
```

#### `x_to_string`
```js
fn x_to_string(&self) -> Option<String>
```

#### `x_get_value`
```js
fn x_get_value(&self, key: &str) -> Option
```
Return the Lua value for a key. NOTE: Will return None if value is Nil.

#### `x_get_string`
```js
fn x_get_string(&self, key: &str) -> Option<String>
```

#### `x_get_bool`
```js
fn x_get_bool(&self, key: &str) -> Option<bool>
```

#### `x_get_i64`
```js
fn x_get_i64(&self, key: &str) -> Option<i64>
```

#### `x_get_f64`
```js
fn x_get_f64(&self, key: &str) -> Option<f64>
```

#### `x_try_get_value`
```js
fn x_try_get_value(&self, key: &str) -> Result<Option>
```
Return the Lua value for a key, failing loudly on invalid access.
- Absent key or `nil` value returns `Ok(None)`
- Non-table `self` returns `Err`

#### `x_try_get_string`
```js
fn x_try_get_string(&self, key: &str) -> Result<Option<String>>
```
Result variants of the `x_get_*` accessors.
- Absent key or `nil` value returns `Ok(None)`
- Present but wrong-typed value returns `Err` with field name, expected type, actual Lua type, and a truncated value preview (about 80 chars)

#### `x_try_get_bool`
```js
fn x_try_get_bool(&self, key: &str) -> Result<Option<bool>>
```

#### `x_try_get_i64`
```js
fn x_try_get_i64(&self, key: &str) -> Result<Option<i64>>
```

#### `x_try_get_f64`
```js
fn x_try_get_f64(&self, key: &str) -> Result<Option<f64>>
```

#### `x_as_list`
```js
fn x_as_list(&self) -> Option<Vec>
```
Returns the sequential list part of a table as an owned `Vec`.
- If `self` is not a table, returns `None`.
- If it is a table and has key `1`, returns the contiguous sequence from 1 until the first `nil`.
- If it is a table but does not have key `1`, returns `Some(vec![])` (empty list).

## Implementations on Foreign Types

- [`Table`](#impl-LuaExt-for-Table)
- [`Value`](#impl-LuaExt-for-Value)

### impl LuaExt for Table

Implements all `LuaExt` methods for foreign type `Table`.

### impl LuaExt for Value

Implements all `LuaExt` methods for foreign type `Value`.
