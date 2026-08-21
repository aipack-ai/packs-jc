# Crate `yaml_serde`

Version 0.10.7

Rust library for using the [Serde](https://github.com/serde-rs/serde) serialization framework with data in [YAML](https://yaml.org/) format.

This is the actively maintained fork of [serde-yaml](https://github.com/dtolnay/serde-yaml), published as `yaml_serde` by the official [YAML organization](https://github.com/yaml).

- [Repository](https://github.com/yaml/yaml-serde)
- [crates.io](https://crates.io/crates/yaml_serde)
- [Documentation](https://docs.rs/yaml_serde)
- License: [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- Rust version documented: 18 August 2026

## Examples

```rust
use std::collections::BTreeMap;

fn main() -> Result<(), yaml_serde::Error> {
    // You have some type.
    let mut map = BTreeMap::new();
    map.insert("x".to_string(), 1.0);
    map.insert("y".to_string(), 2.0);

    // Serialize it to a YAML string.
    let yaml = yaml_serde::to_string(&map)?;
    assert_eq!(yaml, "x: 1.0\ny: 2.0\n");

    // Deserialize it back to a Rust type.
    let deserialized_map: BTreeMap<_, _> = yaml_serde::from_str(&yaml)?;
    assert_eq!(map, deserialized_map);

    Ok(())
}
```

### Using Serde derive

The crate can also be used with Serde derive macros to handle structs and enums defined in your program.

Structs serialize in the obvious way:

```rust
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, PartialEq, Debug)]
struct Point {
    x: f64,
    y: f64,
}

fn main() -> Result<(), yaml_serde::Error> {
    let point = Point { x: 1.0, y: 2.0 };
    let yaml = yaml_serde::to_string(&point)?;
    assert_eq!(yaml, "x: 1.0\ny: 2.0\n");

    let deserialized_point: Point = yaml_serde::from_str(&yaml)?;
    assert_eq!(point, deserialized_point);

    Ok(())
}
```

Enums serialize using YAML's `!tag` syntax to identify the variant name:

```rust
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, PartialEq, Debug)]
enum Enum {
    Unit,
    Newtype(usize),
    Tuple(usize, usize, usize),
    Struct { x: f64, y: f64 },
}

fn main() -> Result<(), yaml_serde::Error> {
    let yaml = "
        - !Newtype 1
        - !Tuple [0, 0, 0]
        - !Struct {x: 1.0, y: 2.0}
    ";

    let values: Vec<Enum> = yaml_serde::from_str(yaml).unwrap();
    assert_eq!(values[0], Enum::Newtype(1));
    assert_eq!(values[1], Enum::Tuple(0, 0, 0));
    assert_eq!(values[2], Enum::Struct { x: 1.0, y: 2.0 });

    // The last two values in YAML block style instead:
    let yaml = "
        - !Tuple
          - 0
          - 0
          - 0
        - !Struct
          x: 1.0
          y: 2.0
    ";

    let values: Vec<Enum> = yaml_serde::from_str(yaml).unwrap();
    assert_eq!(values[0], Enum::Tuple(0, 0, 0));
    assert_eq!(values[1], Enum::Struct { x: 1.0, y: 2.0 });

    // Variants with no data can be written using !Tag or just the string name.
    let yaml = "
        - Unit  # serialization produces this one
        - !Unit
    ";

    let values: Vec<Enum> = yaml_serde::from_str(yaml).unwrap();
    assert_eq!(values[0], Enum::Unit);
    assert_eq!(values[1], Enum::Unit);

    Ok(())
}
```

## `no_std` support

This crate is `no_std` and only requires a global allocator. The default `std` feature enables integration with `std::io`; disable it to build for targets without `std`:

```toml
[dependencies]
yaml_serde = { version = "0.10", default-features = false }
```

Without the `std` feature:

- [`from_reader`](fn.from_reader.html) is unavailable because it depends on `std::io::Read`.
- [`to_writer`](fn.to_writer.html) remains available and accepts any writer implementing the minimal [`io::Write`](io/trait.Write.html) trait.
- The crate implements `io::Write` for `Vec`.

## Modules

- [`io`](io/index.html) - I/O traits abstracted over `std` and `no_std`.
- [`mapping`](mapping/index.html) - A YAML mapping and its iterator types.
- [`value`](value/index.html) - The `Value` enum, a loosely typed representation of any valid YAML value.
- [`with`](with/index.html) - Customizations for use with Serde's `#[serde(with = ...)]` attribute.

## Structs

- [`Deserializer`](struct.Deserializer.html) - Deserializes YAML into Rust values.
- [`Error`](struct.Error.html) - Represents an error that occurred while serializing or deserializing YAML data.
- [`Location`](struct.Location.html) - Represents the input location associated with an error.
- [`Mapping`](struct.Mapping.html) - A YAML mapping in which both keys and values are `yaml_serde::Value`.
- [`Number`](struct.Number.html) - Represents a YAML number, whether integer or floating point.
- [`Serializer`](struct.Serializer.html) - Serializes Rust values into YAML.

## Enums

- [`Value`](enum.Value.html) - Represents any valid YAML value.

## Traits

- [`Index`](trait.Index.html) - A type that can be used to index into a `yaml_serde::Value`. See the `get` and `get_mut` methods of `Value`.

## Functions

### `from_reader`

```rust
pub fn from_reader<R, T>(rdr: R) -> Result<T>
where
    R: io::Read,
    T: serde::de::DeserializeOwned;
```

Deserializes an instance of type `T` from an I/O stream containing YAML.

### `from_slice`

```rust
pub fn from_slice<'de, T>(v: &'de [u8]) -> Result<T>
where
    T: serde::Deserialize<'de>;
```

Deserializes an instance of type `T` from bytes containing YAML text.

### `from_str`

```rust
pub fn from_str<'de, T>(s: &'de str) -> Result<T>
where
    T: serde::Deserialize<'de>;
```

Deserializes an instance of type `T` from a string containing YAML text.

### `from_value`

```rust
pub fn from_value<T>(value: Value) -> Result<T>
where
    T: serde::de::DeserializeOwned;
```

Interprets a [`Value`](enum.Value.html) as an instance of type `T`.

### `to_string`

```rust
pub fn to_string<T>(value: &T) -> Result<String>
where
    T: ?Sized + serde::Serialize;
```

Serializes the given data structure as a YAML `String`.

### `to_value`

```rust
pub fn to_value<T>(value: &T) -> Result<Value>
where
    T: ?Sized + serde::Serialize;
```

Converts a value of type `T` into [`Value`](enum.Value.html), which can represent any valid YAML data.

### `to_writer`

```rust
pub fn to_writer<W, T>(writer: W, value: &T) -> Result<()>
where
    W: io::Write,
    T: ?Sized + serde::Serialize;
```

Serializes the given data structure as YAML into an I/O stream.

## Type aliases

### `Result`

```rust
pub type Result<T> = core::result::Result<T, Error>;
```

A `Result` alias using `yaml_serde::Error` as its error type.

### `Sequence`

```rust
pub type Sequence = alloc::vec::Vec<Value>;
```

A YAML sequence whose elements are [`Value`](enum.Value.html).
