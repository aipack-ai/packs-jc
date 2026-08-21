# Trait `Index`

`yaml_serde` 0.10.7 · `yaml_serde::value`

[Source](../../src/yaml_serde/value/index.rs.html#13-28)

```rust
pub trait Index: Sealed {}
```

A type that can be used to index into a `yaml_serde::Value`. See the `get` and `get_mut` methods of `Value`.

This trait is sealed and cannot be implemented for types outside of `yaml_serde`.

## Dyn Compatibility

This trait is [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

In older versions of Rust, dyn compatibility was called “object safety.”

## Implementations on Foreign Types

### `impl Index for String`

[Source](../../src/yaml_serde/value/index.rs.html#138-148)

```rust
impl Index for String
```

### `impl Index for str`

[Source](../../src/yaml_serde/value/index.rs.html#126-136)

```rust
impl Index for str
```

### `impl Index for usize`

[Source](../../src/yaml_serde/value/index.rs.html#30-66)

```rust
impl Index for usize
```

### `impl<T> Index for &T`

[Source](../../src/yaml_serde/value/index.rs.html#150-163)

```rust
impl<T> Index for &T
where
    T: ?Sized + Index,
```

## Implementors

### `impl Index for Value`

[Source](../../src/yaml_serde/value/index.rs.html#114-124)

```rust
impl Index for Value
```
