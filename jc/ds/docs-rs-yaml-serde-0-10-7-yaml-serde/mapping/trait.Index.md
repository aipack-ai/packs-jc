# `yaml_serde::mapping::Index` Trait

## In `yaml_serde::mapping`

`yaml_serde` 0.10.7

```rust
pub trait Index: Sealed {}
```

A type that can be used to index into a `yaml_serde::Mapping`.

See the `get`, `get_mut`, `contains_key`, and `remove` methods of `Value`.

This trait is sealed and cannot be implemented for types outside of `yaml_serde`.

## Dyn Compatibility

This trait is [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility).

In older versions of Rust, dyn compatibility was called "object safety".

## Implementations on Foreign Types

### `impl Index for String`

[Source](../../src/yaml_serde/mapping.rs.html#392-414)

```rust
impl Index for String
```

### `impl Index for str`

[Source](../../src/yaml_serde/mapping.rs.html#368-390)

```rust
impl Index for str
```

### `impl<T> Index for &T`

[Source](../../src/yaml_serde/mapping.rs.html#416-441)

```rust
impl<T> Index for &T
where
    T: ?Sized + Index,
```

## Implementors

### `impl Index for Value`

[Source](../../src/yaml_serde/mapping.rs.html#344-366)

```rust
impl Index for Value
```
