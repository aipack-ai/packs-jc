# JsonValueExt

Extension trait for working with JSON values in a more convenient way.

`JsonValueExt` offers convenient methods for interacting with `serde_json::Value` objects, simplifying tasks like getting, taking, inserting, traversing, and pretty-printing JSON data while ensuring type safety with Serde’s serialization and deserialization.

## Trait Definition

```rust
pub trait JsonValueExt {
    // Required methods
    fn x_new_object() -> Value;
    fn x_contains<T: DeserializeOwned>(&self, name_or_pointer: &str) -> bool;
    fn x_get<T: DeserializeOwned>(&self, name_or_pointer: &str) -> Result<T, JsonValueExtError>;
    fn x_get_as<'a, T: AsType<'a>>(&'a self, name_or_pointer: &str) -> Result<T, JsonValueExtError>;
    fn x_get_object(&self, name_or_pointer: &str) -> Result<&Map<String, Value>, JsonValueExtError>;
    fn x_take<T: DeserializeOwned>(&mut self, name_or_pointer: &str) -> Result<T, JsonValueExtError>;
    fn x_remove<T: DeserializeOwned>(&mut self, name_or_pointer: &str) -> Result<T, JsonValueExtError>;
    fn x_insert<T: Serialize>(&mut self, name_or_pointer: &str, value: T) -> Result<(), JsonValueExtError>;
    fn x_merge(&mut self, other: Value) -> Result<(), JsonValueExtError>;
    fn x_walk<F>(&mut self, callback: F) -> bool
    where
        F: FnMut(&mut Map<String, Value>, &str) -> bool;
    fn x_pretty(&self) -> Result<String, JsonValueExtError>;

    // Provided methods
    fn x_get_str(&self, name_or_pointer: &str) -> Result<&str, JsonValueExtError> { ... }
    fn x_get_i64(&self, name_or_pointer: &str) -> Result<i64, JsonValueExtError> { ... }
    fn x_get_f64(&self, name_or_pointer: &str) -> Result<f64, JsonValueExtError> { ... }
    fn x_get_bool(&self, name_or_pointer: &str) -> Result<bool, JsonValueExtError> { ... }
    fn x_get_strs(&self, name_or_pointer: &str) -> Result<Vec<&str>, JsonValueExtError> { ... }
    fn x_get_i64s(&self, name_or_pointer: &str) -> Result<Vec<i64>, JsonValueExtError> { ... }
    fn x_get_f64s(&self, name_or_pointer: &str) -> Result<Vec<f64>, JsonValueExtError> { ... }
    fn x_get_bools(&self, name_or_pointer: &str) -> Result<Vec<bool>, JsonValueExtError> { ... }
}
```

## Required Methods

- **`x_new_object()`** – Creates a new `Value::Object`.
- **`x_contains<T: DeserializeOwned>(&self, name_or_pointer: &str) -> bool`** – Checks if a value exists at the given name or pointer path.
- **`x_get<T: DeserializeOwned>(&self, name_or_pointer: &str) -> Result<T, JsonValueExtError>`** – Returns an owned value of type `T` from a JSON object using either a direct name or a pointer path. Note: clones the matched `Value`.
- **`x_get_as<'a, T: AsType<'a>>(&'a self, name_or_pointer: &str) -> Result<T, JsonValueExtError>`** – Returns a reference (or copy for copy types) of type `T` for a given name/pointer path. Prefer over `x_get` to avoid allocation.
- **`x_get_object(&self, name_or_pointer: &str) -> Result<&Map<String, Value>, JsonValueExtError>`** – Returns a reference to the object map at the given name or pointer path.
- **`x_take<T: DeserializeOwned>(&mut self, name_or_pointer: &str) -> Result<T, JsonValueExtError>`** – Takes the value at the specified path and replaces it with `Null`.
- **`x_remove<T: DeserializeOwned>(&mut self, name_or_pointer: &str) -> Result<T, JsonValueExtError>`** – Removes the value at the specified path without leaving a placeholder.
- **`x_insert<T: Serialize>(&mut self, name_or_pointer: &str, value: T) -> Result<(), JsonValueExtError>`** – Inserts a new value at the specified path, creating missing `Object` entries as needed.
- **`x_merge(&mut self, other: Value) -> Result<(), JsonValueExtError>`** – Merges another JSON object into this one (shallow merge). Errors if `self` is not an Object or `other` is not an Object/Null.
- **`x_walk<F>(&mut self, callback: F) -> bool`** where `F: FnMut(&mut Map<String, Value>, &str) -> bool` – Walks through all properties in the JSON value tree. Returns `false` from callback to stop; returns `true` to continue. Returns `true` if traversal completed, `false` if stopped early.
- **`x_pretty(&self) -> Result<String, JsonValueExtError>`** – Returns a pretty-printed string representation of the JSON value.

## Provided Methods

These are shortcuts for `x_get_as` with specific types.

- **`x_get_str`** – Returns `&str` (shortcut for `x_get_as::<&str>`)
- **`x_get_i64`** – Returns `i64` (shortcut for `x_get_as::<i64>`)
- **`x_get_f64`** – Returns `f64` (shortcut for `x_get_as::<f64>`)
- **`x_get_bool`** – Returns `bool` (shortcut for `x_get_as::<bool>`)
- **`x_get_strs`** – Returns `Vec<&str>` (shortcut for `x_get_as::<Vec<&str>>`)
- **`x_get_i64s`** – Returns `Vec<i64>`
- **`x_get_f64s`** – Returns `Vec<f64>`
- **`x_get_bools`** – Returns `Vec<bool>`

## Dyn Compatibility

This trait is **not** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). (In older Rust versions, "object safety".)

## Implementations on Foreign Types

- **`impl JsonValueExt for Value`** (i.e., `serde_json::Value`)

All required and provided methods are implemented for `serde_json::Value`. The implementation details can be found in the source.

## Implementors

No additional implementors are provided by the crate.
