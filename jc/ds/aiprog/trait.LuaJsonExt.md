# Trait LuaJsonExt

[Source](https://docs.rs/aiprog/latest/aiprog/lua_exts/lua_json_ext.rs.html)

```rust
pub trait LuaJsonExt: LuaExt {
    // Required methods
    fn x_from_json_value(lua: &Lua, val: Value) -> Result;
    fn x_from_json_values<I>(lua: &Lua, values: I) -> Result
    where
        I: IntoIterator<Item = Value>;
    fn x_to_json_value(&self) -> Result<Option<Value>>;
    fn x_to_json_values(&self) -> Result<Option<Vec<Value>>>;
}
```

Lua JSON conversion extension trait for Lua values.

This trait provides custom JSON ↔ Lua conversion methods that replace the default `mlua::Lua::to_value()` / `mlua::LuaSerdeExt` integration.

## Why not use the default serde-based conversion?

- **Null / Nil mapping** — `serde_json::Value::Null` is serialised as an opaque `UserData` value by `mlua`’s default serde bridge, not as Lua `nil`. The methods in this trait explicitly handle `Null` and produce Lua `nil`, which matches common Lua scripting expectations.
- **Null / Sentinel mapping** — `serde_json::Value::Null` is serialised as an opaque `UserData` value by `mlua Value::NULL`. The methods in this trait explicitly handle `Null` and produce `mlua::Value::NULL`, the standard Lua null sentinel (a `LightUserData`). This sentinel is recognised by `LuaExt::x_is_null`, so callers can uniformly test for null values with `value.x_is_null()`.
- **Table ↔ Array heuristics** — When converting Lua tables to JSON, the default `mlua` behaviour treats every table as a JSON object. This trait inspects the table and, if it contains a contiguous 1..n integer-keyed sequence, emits a JSON array instead. This aligns with the common Lua convention where lists are represented as tables with consecutive integer keys.
- **Explicit nil-to-None semantics** — `to_json_value` returns `Result<Option<Value>>`, allowing callers to distinguish “not present” (`nil` → `None`) from a genuine JSON `null`. The default serde conversion does not provide this distinction.
- **`LuaExt` integration** — The trait has a supertrait bound `LuaExt`, so all query helpers from `LuaExt` (including `x_is_null`) are automatically available on any value that supports JSON conversion.
- **Fallback key handling** — For tables that are not strict arrays, keys are stringified according to their Lua type (e.g., integer keys become their decimal string representation). This deterministic behaviour is superior to the opaque `map_key` callback often required with `mlua`’s serde wrapper.

Implementors automatically get `LuaExt` query helpers (e.g., `x_as_list`, `x_get_string`) because of the `: LuaExt` supertrait bound.

## Required Methods

### fn x_from_json_value

```rust
fn x_from_json_value(lua: &Lua, val: Value) -> Result
```

Convert a `serde_json::Value` into a `mlua::Value`.

### fn x_from_json_values

```rust
fn x_from_json_values<I>(lua: &Lua, values: I) -> Result
where
    I: IntoIterator<Item = Value>
```

Convert an iterable of JSON values into a Lua table (list) as a `mlua::Value`. The table uses 1-based integer keys to form a Lua list.

### fn x_to_json_value

```rust
fn x_to_json_value(&self) -> Result<Option<Value>>
```

Convert this Lua value into a JSON value.

- Returns `Ok(None)` when the value is `nil`.
- Returns `Ok(Some(json))` for convertible types (booleans, numbers, strings, tables, etc.).
- Tables are converted to JSON arrays (if contiguous 1..n integer keys) or objects (stringified keys).
- Returns `Err` for unsupported Lua types (function, userdata, thread, error, …).

### fn x_to_json_values

```rust
fn x_to_json_values(&self) -> Result<Option<Vec<Value>>>
```

If this Lua value is a table/list, convert its elements to JSON values.

- Returns `Ok(None)` when the value is `nil` or not a table.
- Returns `Ok(Some(vec))` when the value is a table; the vector contains the JSON representation of each element (using `to_json_value`).
- Returns `Err` if any element cannot be converted.

## Dyn Compatibility

This trait is **not** dyn compatible.

In older versions of Rust, dyn compatibility was called "object safety", so this trait is not object safe.

## Implementations on Foreign Types

### impl LuaJsonExt for Table

- `fn x_from_json_value(lua: &Lua, val: Value) -> Result`
- `fn x_from_json_values<I>(lua: &Lua, values: I) -> Result where I: IntoIterator<Item = Value>`
- `fn x_to_json_value(&self) -> Result<Option<Value>>`
- `fn x_to_json_values(&self) -> Result<Option<Vec<Value>>>`

### impl LuaJsonExt for Value

- `fn x_from_json_value(lua: &Lua, val: Value) -> Result`
- `fn x_from_json_values<I>(lua: &Lua, values: I) -> Result where I: IntoIterator<Item = Value>`
- `fn x_to_json_value(&self) -> Result<Option<Value>>`
- `fn x_to_json_values(&self) -> Result<Option<Vec<Value>>>`

## Implementors
