# Enum `Operator`

In `lancedb::index::scalar`  
Source: [lance_index/src/scalar/inverted/query.rs#73](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#73)

```rust
pub enum Operator {
    And,
    Or,
}
```

## Variants

- **And**
- **Or**

## Trait Implementations

### `impl Clone for Operator`

```rust
fn clone(&self) -> Operator
fn clone_from(&mut self, source: &Self)    // from `Clone`
```

### `impl Copy for Operator`

```rust
// Copy is automatically derived
```

### `impl Debug for Operator`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
```

### `impl Default for Operator`

```rust
fn default() -> Operator
```

### `impl<'de> Deserialize<'de> for Operator`

```rust
fn deserialize<__D>(__deserializer: __D) -> Result<Operator, __D::Error>
    where __D: Deserializer<'de>
```

### `impl From<Operator> for &'static str`

```rust
fn from(operator: Operator) -> &'static str
```

### `impl PartialEq for Operator`

```rust
fn eq(&self, other: &Operator) -> bool
fn ne(&self, other: &Operator) -> bool
```

### `impl Serialize for Operator`

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
    where __S: Serializer
```

### `impl StructuralPartialEq for Operator`

*(no methods)*

### `impl TryFrom<&str> for Operator`

```rust
type Error = Error;
fn try_from(value: &str) -> Result<Operator, Error>
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

*(Standard blanket implementations from Rust, rkyv, serde, tracing, etc. are omitted for brevity. See the full list on [docs.rs](https://docs.rs/lancedb/0.30.0/lancedb/index/scalar/enum.Operator.html).)*
