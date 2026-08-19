# Trait AipFromLua

```rust
pub trait AipFromLua: Sized {
    // Required method
    fn from_lua(lua: &Lua, value: Value) -> Result;
}
```

## Required Methods

- `fn from_lua(lua: &Lua, value: Value) -> Result`

## Dyn Compatibility

This trait is **not** dyn compatible.

*In older versions of Rust, dyn compatibility was called "object safety", so this trait is not object safe.*

## Implementations on Foreign Types

### impl AipFromLua for Value

```rust
fn from_lua(_lua: &Lua, value: Value) -> Result
```

### impl AipFromLua for bool

```rust
fn from_lua(_lua: &Lua, value: Value) -> Result
```

### impl AipFromLua for f64

```rust
fn from_lua(_lua: &Lua, value: Value) -> Result
```

### impl AipFromLua for i64

```rust
fn from_lua(_lua: &Lua, value: Value) -> Result
```

### impl AipFromLua for String

```rust
fn from_lua(_lua: &Lua, value: Value) -> Result
```

### impl AipFromLua for Option<T>

```rust
fn from_lua(lua: &Lua, value: Value) -> Result
```

### impl AipFromLua for Vec<T>

```rust
fn from_lua(lua: &Lua, value: Value) -> Result
```

### impl AipFromLua for HashMap<String, T>

```rust
fn from_lua(lua: &Lua, value: Value) -> Result
```

## Implementors
