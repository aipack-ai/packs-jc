# Trait AipIntoLua

```rust
pub trait AipIntoLua {
    // Required method
    fn into_lua(self, lua: &Lua) -> Result;
}
```

## Required Methods

- [into_lua](#tymethod.into_lua)

## Implementations on Foreign Types

- [HashMap](#impl-AipIntoLua-for-HashMapstring-t)
- [Option](#impl-AipIntoLua-for-optiont)
- [String](#impl-AipIntoLua-for-string)
- [Value](#impl-AipIntoLua-for-value)
- [Vec](#impl-AipIntoLua-for-vect)
- [bool](#impl-AipIntoLua-for-bool)
- [f64](#impl-AipIntoLua-for-f64)
- [i64](#impl-AipIntoLua-for-i64)

### impl AipIntoLua for Value

```rust
impl AipIntoLua for Value {
    fn into_lua(self, lua: &Lua) -> Result;
}
```

### impl AipIntoLua for bool

```rust
impl AipIntoLua for bool {
    fn into_lua(self, _lua: &Lua) -> Result;
}
```

### impl AipIntoLua for f64

```rust
impl AipIntoLua for f64 {
    fn into_lua(self, _lua: &Lua) -> Result;
}
```

### impl AipIntoLua for i64

```rust
impl AipIntoLua for i64 {
    fn into_lua(self, _lua: &Lua) -> Result;
}
```

### impl AipIntoLua for String

```rust
impl AipIntoLua for String {
    fn into_lua(self, lua: &Lua) -> Result;
}
```

### impl AipIntoLua for Option<T>

```rust
impl<T> AipIntoLua for Option<T> {
    fn into_lua(self, lua: &Lua) -> Result;
}
```

### impl AipIntoLua for Vec<T>

```rust
impl<T> AipIntoLua for Vec<T> {
    fn into_lua(self, lua: &Lua) -> Result;
}
```

### impl AipIntoLua for HashMap<String, T>

```rust
impl<T> AipIntoLua for HashMap<String, T> {
    fn into_lua(self, lua: &Lua) -> Result;
}
```
